# 快速上手

本指南帮助你在 5 分钟内启用 SmartCodex。

## 步骤 1：安装
- 运行 `install.sh`
- 会把 `.codex` 复制到你的主目录

## 步骤 2：配置
- 复制 `~/.codex/config.example.toml` 为 `config.toml`
- 根据需要修改 `model` 或 MCP 配置

## 步骤 3：验证
- 启动 Codex CLI
- 在仓库中执行一次简单任务
- 确认输出遵循 AGENTS 规范

## 常用入口
- 计划：`plan`
- 评审：`review`
- 验证：`verify`
- 交付：`ship`

## 示例使用
- “请用 plan 给我一个 5 步实施计划”
- “请用 review 检查这次改动”
- “请用 ship 输出交付包”

## 失败处理
- 若 MCP 无法启动，先注释对应配置
- 若输出不符合预期，检查 AGENTS
- 若权限不足，检查 sandbox 与 approval

## 下一步
- 阅读 `docs/architecture.md`
- 根据团队习惯调整 prompts

