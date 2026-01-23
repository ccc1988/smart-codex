#!/usr/bin/env bash
set -euo pipefail

# SmartCodex 安装脚本（安全、可回滚）
# 作用：将本仓库的 .codex 复制到你的主目录
# 说明：不会覆盖已有文件，会先备份

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$ROOT_DIR/.codex"
DST_DIR="$HOME/.codex"
BACKUP_DIR="$HOME/.codex.backup.$(date +%Y%m%d%H%M%S)"

usage() {
  cat <<'USAGE'
用法：
  ./install.sh

行为：
  1) 若 ~/.codex 已存在，先备份为 ~/.codex.backup.<timestamp>
  2) 复制本仓库的 .codex 到 ~/.codex
  3) 不会写入任何密钥或个人路径
USAGE
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if [[ ! -d "$SRC_DIR" ]]; then
  echo "ERROR: 找不到 $SRC_DIR"
  exit 1
fi

if [[ -d "$DST_DIR" ]]; then
  echo "备份现有 ~/.codex -> $BACKUP_DIR"
  mv "$DST_DIR" "$BACKUP_DIR"
fi

mkdir -p "$DST_DIR"
cp -R "$SRC_DIR"/* "$DST_DIR"/

if [[ -f "$DST_DIR/config.example.toml" && ! -f "$DST_DIR/config.toml" ]]; then
  cp "$DST_DIR/config.example.toml" "$DST_DIR/config.toml"
fi

echo "安装完成：$DST_DIR"
