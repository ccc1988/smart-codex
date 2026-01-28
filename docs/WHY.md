# WHY SmartCodex

SmartCodex was born to keep the plan→verify→deliver rhythm even when the problem definition wanders, and it keeps the delivery entries as small, verifiable commits instead of sprawling essays.
SmartCodex 让计划模块不仅是一个起点，更是随时可以切换的技能入口，避免不同会话重复解释背景。

## Design Philosophy
SmartCodex trusts embodiment over explanation: once an entrypoint such as `/go` or `/fix` is triggered, the workflow should write the plan, show the verification checklist, and produce the deliverable without asking for another essay. It also keeps the input bundle in `templates/codex` tightly synchronized with the versions that live in `~/.codex` so the agent never reaches for stale instructions.

## 核心对比
- Against verbose playbooks: Big playbooks are static, SmartCodex builds the context dynamically and keeps every change in templates/codex in sync with the verified local `.codex` copy.
- 与传统项目说 'we do docs first then git': SmartCodex 把 plan/verify/deliver 变成入口节奏，花时间写的每一条都可验证，可回滚。
- Shipping needs a ritual: README、README.zh、docs/WHY 这样的结果就是为了让 end users see the same story in Chinese and English without hunting through session history.
