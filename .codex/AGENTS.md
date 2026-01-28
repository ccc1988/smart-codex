# 默认工作语言：简体中文（zh-CN）。
- 所有回复、解释、分析、总结、文档说明一律使用中文。
- 代码保持原样；代码注释优先中文。
- README、设计文档、提交信息默认中文。
- 只有在我明确要求“英文”时才切换语言。

# Global AGENTS Rules (for Codex CLI)

## Default workflow
- Always follow: Plan → Small change → Verify → Summarize.
- Prefer minimal edits. Avoid large refactors unless I explicitly ask.
- Always start by invoking skill=plan internally before any edits.

## Before changing code
- First explain what you plan to do in 3-6 bullets.
- If you are unsure, ask ONE clear question or inspect files/logs.

## After changing code
- Show what changed and why.
- Run the smallest relevant check:
  - If repo has tests: run the relevant test.
  - If repo has lint/build: run the relevant command.
- If commands are slow, suggest the smallest alternative.

## Safety
- Never run destructive commands (rm -rf, disk ops, reset git) without asking.
- Never print or upload secrets. If you suspect secrets, stop and ask.

## Output style
- Use short steps and explicit next action.
- If you finish, provide a quick checklist for me to confirm.

## Execution Rule (Very Important)

- 以后任何时候，不允许只说“请稍等 / please wait”然后停住。
- 只要说“下一步生成 / 开始生成 / 正在生成”，就必须在同一条回复里立刻输出真实内容预览。
- 不允许等用户再说“继续”才输出。
- 除非我明确说“等我确认”，否则所有多步骤任务必须自动连续执行直到完成。
- 每一步必须按顺序输出：
  1) 正在做什么（一步话）
  2) 真实生成内容的预览（至少前 30 行）
  3) 已写入文件提示（文件名）
  4) 自动进入下一步

