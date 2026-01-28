# SmartCodex

## 30秒上手
1. `git clone https://github.com/ccc1988/smart-codex`
2. `cd smart-codex`
3. 执行 `bash install.sh`，把 `~/.codex` 中的 templates 同步进来
4. 打开 Codex 会话，输入 `/go` 让通用交付总线接管后续

## 核心入口
- `go`：通用交付总线，确保每次改动都小步、可验证、可撤销。
- `fix`：快速定位与修复，先复现再给出最小补丁。
- `quote`：在行动前梳理范围、风险与交付边界。
- `learn`：冲刺后写下轻量复盘，把经验沉淀下来。
- `ship`：整理发版材料、回滚方案与验收点。
- `sp`：通往 Superpowers 的总入口，掌握更丰富的技能链。

## sp 定位
`sp` 是 SmartCodex Superpowers 的生产级门户，类似礼宾服务：它能牵引更复杂的技能组合、暴露额外模板，并用 plan/verify/deliver 这套格式保持流程纪律。

### Superpowers 集成
`sp` 入口关联的是 `~/.codex/superpowers` 目录中的第三方 Superpowers bundle。把 https://github.com/obra/superpowers 克隆到该位置，然后运行捆绑的 `superpowers-codex` CLI（`bootstrap`、`find-skills`、`use-skill` 等）就能激活 `sp: list`、`sp: brainstorm`、`sp: plan`、`sp: exec`、`sp: use ...` 等调用模式。
参见 `docs/SUPERPOWERS.md` 了解具体步骤与上游文档链接。

## 安装
1. 把仓库 clone 到 Codex 可用的工作目录。
2. 运行 `bash install.sh` 补全 `templates/codex` 并确保依赖的助理脚本生效。
3. 每次 `.codex` 脚本或 AGENTS.md 更新后都重跑安装脚本，让仓库保持同步。
4. 准备发布前，再一次执行 `bash install.sh` 作为版本边界。

## 一键 Superpowers 安装
`install.sh` 会在同步模版完成后自动克隆或更新 `https://github.com/obra/superpowers` 到 `~/.codex/superpowers`（或者在 `TARGET_DIR` 指定的路径下的 `superpowers`）。这样 `sp: list`、`sp: brainstorm`、`sp: plan`、`sp: exec`、`sp: use …` 就有真实的技能链在背后，等于给 GPT Plus 免费额度搭建了一个多技能、傻瓜式的超级 Codex，降低学习门槛、提高效率。我们的目标是把这套实践分享给大家，让更多人拿到手就能用；如果你发现任何版权或侵权问题，请直接联系我处理。

如需反馈 Superpowers 本体的问题，请前往 https://github.com/obra/superpowers。
