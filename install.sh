#!/usr/bin/env bash
set -euo pipefail

# SmartCodex 安装脚本（复制模板 + 备份用户环境）
# 说明：只处理模板文件，不写业务逻辑

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMPLATE_DIR="$ROOT_DIR/templates/codex"
TARGET_DIR="${TARGET_DIR:-$HOME/.codex}"
FORCE=0
DRY_RUN="${DRY_RUN:-0}"

usage() {
  cat <<'USAGE'
用法：
  ./install.sh [--force] [--dry-run]

环境变量：
  TARGET_DIR=<path>  指定安装目录（默认 ~/.codex）
  DRY_RUN=1          只打印将要执行的操作，不写入文件

行为：
  1) 若目标目录已存在，先备份为 <target>.backup.smart-codex.<timestamp>
  2) 默认覆盖 AGENTS 与 skills 模板（覆盖前已备份）
  3) kb/one-man-playbook.md 仅在不存在时创建
  4) 其他同名文件默认不覆盖，需 --force
USAGE
}

log() {
  printf "%s\n" "$*"
}

run() {
  if [[ "$DRY_RUN" == "1" ]]; then
    log "[DRY_RUN] $*"
    return 0
  fi
  eval "$@"
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --help|-h)
      usage
      exit 0
      ;;
    --force)
      FORCE=1
      shift
      ;;
    --dry-run)
      DRY_RUN=1
      shift
      ;;
    *)
      log "未知参数：$1"
      usage
      exit 1
      ;;
  esac
done

if [[ ! -d "$TEMPLATE_DIR" ]]; then
  log "ERROR: 找不到模板目录 $TEMPLATE_DIR"
  exit 1
fi

backup_target() {
  local target="$1"
  if [[ -d "$target" ]]; then
    local ts
    ts="$(date +%Y%m%d%H%M%S)"
    local backup_dir="${target}.backup.smart-codex.${ts}"
    log "备份现有目录：${target} -> ${backup_dir}"
    run "cp -R \"$target\" \"$backup_dir\""
  fi
}

should_overwrite_default() {
  local rel="$1"
  if [[ "$rel" == "AGENTS.md" ]]; then
    return 0
  fi
  if [[ "$rel" == skills/* ]]; then
    return 0
  fi
  return 1
}

install_file() {
  local src="$1"
  local dest="$2"
  run "mkdir -p \"$(dirname "$dest")\""
  run "cp \"$src\" \"$dest\""
}

backup_target "$TARGET_DIR"
run "mkdir -p \"$TARGET_DIR\""

log "开始安装模板到：$TARGET_DIR"

while IFS= read -r -d '' src; do
  rel="${src#"$TEMPLATE_DIR"/}"
  dest="$TARGET_DIR/$rel"

  if [[ "$rel" == "kb/one-man-playbook.md" ]]; then
    if [[ -f "$dest" ]]; then
      log "保留已有 kb 文件：$dest"
      continue
    fi
    log "创建 kb 文件：$dest"
    install_file "$src" "$dest"
    continue
  fi

  if [[ -f "$dest" ]]; then
    if should_overwrite_default "$rel"; then
      log "覆盖模板文件（已备份）：$dest"
      install_file "$src" "$dest"
      continue
    fi
    if [[ "$FORCE" == "1" ]]; then
      log "强制覆盖模板文件：$dest"
      install_file "$src" "$dest"
      continue
    fi
    log "跳过已有文件（可用 --force 覆盖）：$dest"
    continue
  fi

  log "写入模板文件：$dest"
  install_file "$src" "$dest"
done < <(find "$TEMPLATE_DIR" -type f -print0)

log "安装完成：$TARGET_DIR"
