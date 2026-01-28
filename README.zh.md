# SmartCodex 使用说明

**SmartCodex 是为 Codex / GPT Plus 用户打造的“傻瓜式+多技能”入口集合，让原生的 5 个工作流加上生产级的 `sp` 插件，在最小学习成本下就能跑出逼近 Claude CLI / OpenCode 的产出。**

## 1. 这是干什么的
- 把 Codex 单一的对话能力升级为有节奏、有指令、有验证的生产流程。  
- 用 `go/fix/quote/ship/learn` 处理绝大多数交付场景，把复杂、方法论驱动的任务交给 `sp`。  
- `sp` 实际上是调用 `~/.codex/superpowers` 的第三方 bundle，配合 `install.sh` 一键克隆/更新即可复刻你当前的中控台。  
- 这个项目引用并包装了 `https://github.com/obra/superpowers` 提供的 Superpowers 技能集，若有版权/使用疑问请联系我处理；Superpowers 本体问题请去上游 issue。  
- GPT Plus 用户本身就能免费用 Codex，只需运行这套脚本，就能分享免费的高级模型 + Superpowers 插件扩展，真正让 Codex 飞起来。

## 2. 背景与开源初衷
- Claude CLI / OpenCode 里的多技能体验很棒，可 Codex 的入口相对贫瘠，我们希望用 SmartCodex 提供一个“向前排行”的解决方案：少敲命令、多用入口、让 Codex 也能智能适配更多场景。  
- 因为 Codex 对 GPT Plus 用户友好，我们更希望降低他们的学习门槛，把这套经验和安装过程公开成项目，让大家一起享受免费的生产力；如果有侵权疑问，请直接联系我，我会处理或下架。  
- 这个开源只是起点，欢迎给星星、提供反馈，让我们有动力持续维护，把更好用的工具分享出去。

## 3. 30 秒配置（照着做即可）
1. 在终端执行 `git clone https://github.com/ccc1988/smart-codex && cd smart-codex`，准备好模板与脚本。  
2. 运行 `mkdir -p ~/.codex && touch ~/.codex/.gitkeep`（保证 codex 目录存在），然后 `cd $(pwd)` 回到项目目录。  
3. 执行 `bash install.sh`：它会备份目标 `.codex`、复制 `templates/codex`、并自动 clone/pull `https://github.com/obra/superpowers` 到 `~/.codex/superpowers`（如需其他目录，设置 `TARGET_DIR=/path/.codex`）。  
4. 安装完成后进入 `~/.codex`，确认 `AGENTS.md`、`skills`、`superpowers` 三个目录都能看到新内容：`ls ~/.codex`。  
5. 启动 Codex 会话，先用 `go:`/`fix:`/`quote:`/`ship:`/`learn:` 处理普通任务，再在需要系统方法论时输入 `sp:` 相关命令。  
6. 立即在 Codex 中粘贴任意照抄示例（如 `go: 给我一个 3 步计划…` 或 `sp: use writing-plans …`）验证流程是否触发，有输出即表示可用。  
7. 遇到 Superpowers 本体问题请参考 `docs/SUPERPOWERS.md`，需要上游反馈可去 `https://github.com/obra/superpowers` 提 issue，别忘了给这个项目点星以支持后续更新。

## 4. 快速入口参考

### 核心 5 个入口（90% 场景）
|入口|定位|适用场景|照抄示例|
|---|---|---|---|
|`go:`|通用交付总线|任务不清楚怎么拆 |`go: 给我一个 3 步计划，等我确认后再继续`|
|`fix:`|故障修复|线上 bug / 行为异常 |`fix: 登录失败，先复现，再最小修复并验证`|
|`quote:`|范围 & 风险|需求评估/报价 |`quote: 两天内改 README，给范围、不做事项、风险、报价`|
|`ship:`|交付说明|PR/发版材料 |`ship: 输出本次修改的交付说明、验收点和回滚方案`|
|`learn:`|轻量复盘|阶段总结 |`learn: 复盘今天的改造，总结可复用经验`|

### `sp` 入口（Superpowers bundle）
|技能|说明|适用|照抄示例|
|---|---|---|---|
|`systematic-debugging`|系统化定位|复杂/诡异 bug|`sp: use systematic-debugging 这个 bug 只在生产环境出现`|
|`test-driven-development`|TDD|责任核心逻辑|`sp: use test-driven-development 实现用户权限校验`|
|`writing-plans`|写计划|大改动/多步骤|`sp: use writing-plans 重构配置加载模块`|
|`executing-plans`|执行计划|已有计划|`sp: use executing-plans 按刚才的计划执行`|
|`verification-before-completion`|高标准验证|风险较高|`sp: use verification-before-completion 检查是否可交付`|
|`receiving-code-review`|自查评审|合并前复查|`sp: use receiving-code-review 审查这次改动`|
|`requesting-code-review`|请求评审|提交 PR 前|`sp: use requesting-code-review 为本次提交生成评审点`|
|`using-git-worktrees`|多分支|并行特性开发|`sp: use using-git-worktrees 并行开发两个功能`|
|`subagent-driven-development`|子代理|复杂系统拆分|`sp: use subagent-driven-development 拆分并行实现`|

### 原生 Codex（不加前缀）
|用法|说明|示例|
|---|---|---|
|直接提问|问答/解释|`解释一下 git rebase`|
|灵感/讨论|快速想法|`这个设计思路有什么问题？`|

**原则：**简短问答用原生 Codex；要做事则先切入 `go/fix/quote/ship/learn`；方法论升级就显式 “`sp:`”，用完再回到主干；不要让 `sp` 成为默认频道。

## 5. 结语 & 送个星
- SmartCodex 不是单个 skill，而是一整套让 Codex 更 smart 的使用方式，所有的表格/照抄示例都是你可以马上用的指令。  
- 觉得有用请在 GitHub 上给这个项目点个星，关注并分享它，让更多人拿到一键安装的超强 Codex，也让我们有动力持续更新。
