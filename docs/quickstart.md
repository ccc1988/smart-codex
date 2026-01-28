# 快速上手（v2.0.0 入口系统）

本指南帮助你在 5 分钟内启用 SmartCodex。

## 步骤 1：安装
- 运行 `install.sh`
- 会把 `templates/codex` 安装到 `~/.codex`
- 若已有 `~/.codex`，会先备份

## 步骤 2：配置
- 如需自定义模型或 MCP，可在 `~/.codex` 里自行调整
- SmartCodex 不会自动写入任何密钥

## 步骤 3：验证
- 启动 Codex CLI
- 输入 `go:` / `quote:` / `fix:` / `ship:` / `learn:`
- 确认仅在入口触发时才执行工作流

## 常用入口
- 交付总线：`go:`
- 报价与范围：`quote:`
- 故障修复：`fix:`
- 交付材料：`ship:`
- 轻量复盘：`learn:`

## 示例使用
- `go: 请给我一个 5 步实施计划`
- `fix: 先复现再给最小修复方案`
- `ship: 输出交付包`
- `learn: 复盘今天的调试过程`

## 失败处理
- 若输出不符合预期，检查 `AGENTS.md`
- 若权限不足，检查 sandbox 与 approval

## 下一步
- 阅读 `docs/architecture.md`
