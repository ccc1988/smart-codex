---
name: bugfix
description: Reproduce → find root cause → apply smallest fix → verify.
argument-hint: [ERROR="<log>"] [STEPS="<repro steps>"]
---

# Skill: bugfix

## Workflow
1) Ask for error log/screenshot if missing.
2) Reproduce (or explain how to reproduce).
3) Locate root cause (file + line + why).
4) Apply the smallest fix.
5) Verify with a test/lint/build or 3-step manual check.
6) Summarize the diff and next steps.

## Rules
- No large refactors.
- If unsure, ask one clear question.

## Output format
- Root cause → Fix → Verification.

## Checklist
- 输入完整
- 计划最小
- 验证最小
- 结论明确

## 输出约束
- 不臆测
- 不夸大
- 不隐去关键限制

