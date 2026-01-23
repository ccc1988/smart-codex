---
name: review
description: Review changes for correctness, safety, edge cases, and style; provide merge checklist.
argument-hint: [FOCUS="<what to check>"]
---

# Skill: review

## Workflow
1) Summarize what changed (diff-level).
2) Check correctness, safety, edge cases, style.
3) Output: Must-fix / Nice-to-have.
4) Provide a short merge checklist.

## Rules
- Focus on high-impact issues.
- Be concise.
- Cite file/line when possible.

## Output format
- Findings first, summary last.

## Checklist
- 输入完整
- 计划最小
- 验证最小
- 结论明确

## 输出约束
- 不臆测
- 不夸大
- 不隐去关键限制

