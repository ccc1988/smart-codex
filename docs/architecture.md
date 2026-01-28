# SmartCodex 架构说明（v2.0.0 入口系统）

本文件说明 SmartCodex 的组成与协作方式。

## 目标
- 提供可复用的指令与流程模板
- 降低自动化改动的风险
- 让产出可验收、可回滚

## 组件
1) AGENTS
- 全局行为规范
- 约束输出风格与安全边界
- 仅在入口触发时生效（go:/quote:/fix:/ship:/learn:）

2) Skills
- 把“做法”固化为流程
- 入口触发时执行对应技能

3) KB
- learn 入口写入的轻量复盘知识库
- 默认文件：`~/.codex/kb/one-man-playbook.md`

4) Install
- 模板化安装
- 自动备份与可回滚

## 协作方式
- 用户输入入口指令
- Skill 负责“怎么做”
- AGENTS 负责“怎么守规矩”
- learn 负责“怎么沉淀”

## 设计原则
- 小步、可验证
- 结构化输出
- 避免主观与夸大

## 典型流程
- go → change → verify → deliver
- fix → verify → summarize
- ship → checklist → rollback
- learn → append → reuse
