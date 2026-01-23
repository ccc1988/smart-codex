---
name: verify
description: Provide the smallest verification path and report pass/fail with next action.
argument-hint: [SCOPE="<what to verify>"]
---

# Skill: verify

## Workflow
1) Identify the smallest check to confirm success.
2) Prefer: unit test → lint/build → manual steps.
3) If no tests exist, provide a 3-step manual checklist.
4) Report pass/fail and next action.

## Rules
- Don’t claim success without verification.
- If verification cannot run, say why.

## Output format
- Check → Result → Next action.

## Checklist
- 输入完整
- 计划最小
- 验证最小
- 结论明确

## 输出约束
- 不臆测
- 不夸大
- 不隐去关键限制

