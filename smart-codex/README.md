⭐ If SmartCodex helps you work smarter with Codex, please give it a star and share it with the community.

# SmartCodex (v2.0.0 Entry System)

**中文一句话定位：**
以“入口系统”方式，把 Codex CLI 升级为可交付、可回滚、可验证的工作流助手。

**English One-liner:**
SmartCodex upgrades Codex CLI with an entry-driven workflow that is deliverable, verifiable, and rollback-friendly.

---

## 为什么不能用 /go，必须用 go:
Codex CLI 中 `/` 是保留命令前缀（如 /help、/status）。
为避免冲突，SmartCodex v2.0.0 统一使用 **go: / quote: / fix: / ship: / learn:** 作为入口前缀，
并明确 **不再兼容旧的 /go 写法**。

---

## v2.0.0 能力概览
- 五入口：**go / quote / fix / ship / learn**
- A 模式（实用优先）：小步、可验证、可交付
- 不污染原生 Codex：仅入口触发工作流
- learn 复盘飞轮：轻量复盘 → 追加沉淀
- 安装一键化：模板化、可备份、可回滚

---

## 与 1.0.0 不兼容 / 已过时内容
- 旧的 `/go` `/quote` `/fix` `/ship` 入口前缀（已废弃）
- 依赖 `/skills:plan` 等旧式调用路径（已替换为入口系统）
- 依赖 `.codex/prompts` 的自动化流程（v2.0.0 不再要求）
- 不带备份的覆盖式安装（已替换为安全安装）

---

## 快速开始

```bash
git clone https://github.com/ccc1988/smart-codex.git
cd smart-codex
bash install.sh
```

安装默认写入 `~/.codex`，并自动备份已有目录。

如需验证但不写入：

```bash
DRY_RUN=1 bash install.sh
```

如需自定义安装目录：

```bash
TARGET_DIR=/path/to/.codex bash install.sh
```

---

## 最小验证命令（6 条）
在 Codex CLI 中逐条输入：
1) `go: 请给我一个 3 步计划，等我确认后再继续`
2) `quote: 为一个 2 天内完成的 README 改版给出范围与报价`
3) `fix: README 打不开，先复现再最小修复`
4) `ship: 输出这次改动的交付包`
5) `learn: 今天调研入口系统的复盘`
6) 原生模式验证（不触发入口）：`请用英文简单解释 Git rebase`

---

## 模板内容（可直接安装）
- `templates/codex/AGENTS.md`
- `templates/codex/skills/{go,quote,fix,ship,learn}/SKILL.md`
- `templates/codex/kb/one-man-playbook.md`

---

## 安全与回滚
- 安装前自动备份：`~/.codex.backup.smart-codex.<timestamp>`
- 可随时回滚：删除当前 `~/.codex`，恢复备份目录

---

⭐ If SmartCodex helps you work smarter with Codex, please give it a star and share it with the community.
