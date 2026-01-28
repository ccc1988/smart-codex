# SmartCodex 使用说明

**SmartCodex = 小步可靠的 5 个入口 + 一个生产级 `sp` + 原生 Codex 的自由探索。按照下面的结构复制粘贴即可开始，不需要额外解释。**

---

## 快速启动（傻瓜式体验）
1. `git clone https://github.com/ccc1988/smart-codex && cd smart-codex`
2. `bash install.sh` —— 同步 `templates/codex`，自动 clone/pull `https://github.com/obra/superpowers`，把 `sp` 入口背后的 Superpowers bundle 安装到 `~/.codex/superpowers`（可通过 `TARGET_DIR` 覆盖路径）；
3. 打开 Codex 会话，先用 `go:`/`fix:`/`quote:`/`ship:`/`learn:` 处理大部分场景，再在需要方法论时显式输入 `sp:`；
4. `docs/SUPERPOWERS.md` 里有详细的 upstream 链接、issue 报告和侵权说明，若有问题请联系我或去 `https://github.com/obra/superpowers` 反馈。

---

## 一、SmartCodex v2 核心 5 个入口（90% 日常工作）
> 适用：交付、开发、修 bug、报价、复盘  
> 原则：**先用这 5 个，别一上来就 sp**

|入口|一句话定位|什么时候用|照抄示例|
|---|---|---|---|
|`go:`|通用交付总线|不清楚如何拆解任务、需要落地计划|`go: 给我一个 3 步计划，等我确认后再继续`|
|`fix:`|故障修复流程|遇到 bug、行为异常、线上紧急问题|`fix: 登录失败，先复现，再最小修复并验证`|
|`quote:`|范围与报价刹车|接需求、评估工期/成本|`quote: 两天内改 README，给范围、不做事项、风险、报价`|
|`ship:`|交付/发版输出|需要交付物、PR 说明/发版材料|`ship: 输出本次修改的交付说明、验收点和回滚方案`|
|`learn:`|轻量复盘沉淀|一天结束、阶段总结、经验复用|`learn: 复盘今天的改造，总结可复用经验`|

- `go/fix/quote/ship/learn` 是 SmartCodex 的主干能力，能用就不要去打扰 `sp`；
- 表格中的例子直接复制贴到 Codex，会触发工作流，不需要额外说明；
- 只要任务有明确交付目标，优先选择这五个入口并坚持“先给计划，后执行，再验证”。

## 二、Superpowers：`sp` 入口（生产级方法论，按需启用）
> 适用：复杂工程、系统化调试、方法论驱动开发  
> 原则：**`sp` ＝ 显式进入，不自动接管**

### 使用规则
```
sp: use <skill-name> <你的任务描述>
```

### 常用 sp 技能（照抄即可）
|sp 技能|作用说明|什么时候用|照抄示例|
|---|---|---|---|
|`systematic-debugging`|系统化定位 bug（假设→验证）|诡异 bug / 多因素问题|`sp: use systematic-debugging 这个 bug 只在生产环境出现`|
|`test-driven-development`|TDD 驱动开发|核心逻辑 / 可测试模块|`sp: use test-driven-development 实现用户权限校验`|
|`writing-plans`|严格工程计划|大改动 / 多步骤任务|`sp: use writing-plans 重构配置加载模块`|
|`executing-plans`|按计划执行|已有明确 plan|`sp: use executing-plans 按刚才的计划执行`|
|`receiving-code-review`|接受代码评审|自查 / 合并前|`sp: use receiving-code-review 审查这次改动`|
|`requesting-code-review`|请求评审清单|提交 PR 前|`sp: use requesting-code-review 为本次提交生成评审点`|
|`verification-before-completion`|完成前强验证|风险较高改动|`sp: use verification-before-completion 检查是否可交付`|
|`using-git-worktrees`|多分支并行开发|同时做多件事|`sp: use using-git-worktrees 并行开发两个功能`|
|`subagent-driven-development`|子代理并行|复杂系统拆分|`sp: use subagent-driven-development 拆分并行实现`|

- ❌ 简单改动/问答不用 `sp`；  
- ✅ 方法论升级、系统性拆解、多个子任务的协同才显式调用 `sp`；  
- ✅ 用完 `sp` 之后再回到核心 5 个入口或原生 Codex，别让它常驻。

## 三、原生 Codex（不加前缀）
> 适用：解释、查询、快速想法  
> 原则：**不用入口 = 不触发任何工作流**

|用法|说明|示例|
|---|---|---|
|直接输入自然语言|纯问答 / 解释|`解释一下 git rebase`|
|快速想法 / 讨论|不需要交付结构|`这个设计思路有什么问题？`|

- 原生 Codex = **不保证交付、不保证验证**；  
- 一旦进入“要做事”，立刻切换到 `go:`/`fix:`/`quote:`/`ship:`/`learn:`。

## 四、一句话总用法（对外口径）
> 不用前缀 → 原生 Codex  
> 要交付 → 核心 5 个入口  
> 要方法论 → 显式 `sp`

---

## 附：Superpowers 声明与反馈
- `install.sh` 包含一键同步 Superpowers 的逻辑，克隆/更新会写入 `~/.codex/superpowers`，让 `sp: list/brainstorm/plan/exec/use` 直接可用；想了解细节请看 `docs/SUPERPOWERS.md`。  
- 本项目旨在降低学习成本，免费分享多技能 Super Codex，如果你发现任何版权/侵权问题请先联系我处理；Superpowers 本体的问题欢迎在 `https://github.com/obra/superpowers` 提交 issue。  
- 使用过程中如有疑问，优先用表格里提供的“照抄示例”，如果仍有问题再参考 `docs/SUPERPOWERS.md` 或发起社区讨论。
