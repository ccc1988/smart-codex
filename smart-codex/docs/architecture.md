# SmartCodex 架构说明

本文件说明 SmartCodex 的组成与协作方式。

## 目标
- 提供可复用的指令与流程模板
- 降低自动化改动的风险
- 让产出可验收、可回滚

## 组件
1) AGENTS
- 全局行为规范
- 约束输出风格与安全边界

2) Skills
- 把“做法”固化为流程
- 适合重复性任务（计划、评审、验证）

3) Prompts
- 面向具体场景的模板
- 适合不同受众（业务/开发/管理）

4) Config
- 最小可用配置示例
- 可选 MCP 服务器定义

## 协作方式
- 用户输入需求
- Skill 负责“怎么做”
- Prompt 负责“怎么说”
- AGENTS 负责“怎么守规矩”

## 版本化建议
- 每次修改记录到变更日志
- 保持技能与提示的兼容性
- 重要规则变更需同步到 README

## 设计原则
- 小步、可验证
- 结构化输出
- 避免主观与夸大

## 典型流程
- plan → change → verify → summarize
- review → fix → verify → merge
- ship → checklist → rollback

