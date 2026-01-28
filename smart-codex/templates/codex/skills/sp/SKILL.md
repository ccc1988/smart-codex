---
name: sp
description: "中文：Superpowers 生产级超级入口（直通方法论技能库）。EN: Superpowers gateway for production-grade workflows."
argument-hint: 'sp: [list|brainstorm|plan|exec|use <skill>] <task>'
---

# Skill: sp

## When to use
- 需要生产级方法论支持：计划、调试、TDD、评审、并行开发等。
- 希望在 SmartCodex 的入口体系下，直接调用 superpowers 的完整技能库。

## Invocation rules
User input patterns:
- "sp: list" → list local superpowers skills
- "sp: <task>" → default = writing-plans
- "sp: brainstorm <task>" → brainstorming
- "sp: plan <task>" → writing-plans
- "sp: exec <task>" → executing-plans
- "sp: use <skill-name> <task>" → direct superpowers skill

## Workflow
1) Parse user input:
   - If exactly "list": MODE=list
   - Else if starts with "use <skill>": MODE=use, TARGET=<skill>
   - Else if starts with "brainstorm": MODE=brainstorm
   - Else if starts with "plan": MODE=plan
   - Else if starts with "exec": MODE=exec
   - Else MODE=plan

2) Validate superpowers install paths:
   - Executor: ~/.codex/superpowers/.codex/superpowers-codex
   - Skills dir: ~/.codex/superpowers/skills

3) If MODE=list:
   - List directories under ~/.codex/superpowers/skills as available skill names.
   - Output:
     (a) a short “recommended” set for production work
     (b) the full list of skill names
   - Provide usage hint: "sp: use <skill-name> <task>"
   - STOP.
   - IMPORTANT: Do NOT invoke any superpowers skill for MODE=list.
   - Directly read ~/.codex/superpowers/skills directory names and print them.
   - Output must be <= 30 lines. No tutorials, no extra workflow narration.
   - Provide a single usage line: "sp: use <skill-name> <task>"


4) Otherwise route:
   - brainstorm → brainstorming
   - plan       → writing-plans
   - exec       → executing-plans
   - use        → <skill-name>

5) Execute:
   ~/.codex/superpowers/.codex/superpowers-codex use-skill <resolved-skill>

6) Enforce SmartCodex constraints:
   - small steps
   - verification before completion
   - deliverable outputs
   - rollback-friendly when modifying files

## Notes
- This skill does NOT modify upstream superpowers.
- All execution is delegated to superpowers-codex.
- Keep responses concise and action-oriented.
- When in doubt, ask user to confirm next step.
