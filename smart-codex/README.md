# SmartCodex（可开源版）

SmartCodex 是一套面向 Codex CLI 的通用规范与提示库，目标是：
- 让自动化改动可控
- 让输出结构化、可复用
- 让交付更可验收

本版本已去个人化，适合直接开源发布或团队内分发。

## 包含内容
- `.codex/AGENTS.md`：全局行为规范（中文默认）
- `.codex/skills/`：可复用技能集（plan/doc/review/verify 等）
- `.codex/prompts/`：通用提示模板（plan/pr/release 等）
- `.codex/config.example.toml`：最小可用示例配置
- `docs/`：架构、快速上手、安全说明

## 适用场景
- 工程协作的自动化改动
- PR/发版/交付文案自动生成
- 一键计划、验收、回滚说明

## 目录结构
smart-codex/
├── README.md
├── install.sh
├── .codex/
│   ├── AGENTS.md
│   ├── skills/
│   ├── prompts/
│   └── config.example.toml
└── docs/
    ├── architecture.md
    ├── quickstart.md
    └── security.md

## 快速开始（概览）
1) 运行 `install.sh` 将 `.codex` 放入你的主目录
2) 复制 `.codex/config.example.toml` 为 `config.toml`
3) 根据 `docs/quickstart.md` 完成最小配置
4) 在仓库中开始使用 prompts/skills

## 兼容性
- 适用于 Codex CLI
- 需要可写工作区（workspace-write）
- MCP 服务器可选，推荐启用

## 贡献方式
- 保持最小改动、少重构
- 文档与提示保持清晰、短句、可执行
- 避免引入个人化信息

## 许可
- 该仓库可用于团队与公开发布
- 具体许可请由使用者自行添加

## 维护建议
- 提示模板版本化
- 技能变更记录在 `docs/architecture.md`
- 定期审查安全规则

