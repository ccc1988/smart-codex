⭐ If SmartCodex helps you work smarter with Codex, please give it a star and share it with the community.

# SmartCodex

**中文一句话定位：**  
更聪明的 Codex：把原生 Codex CLI 升级为  
具备 **Skills + MCP 工具链 + 自动化 Prompts + 工程级 SOP** 的智能体工作台。

**English One-liner:**  
SmartCodex turns OpenAI Codex CLI into a production-ready Agent System  
with Skills, MCP tools, automated workflows and one-command installation.

---

## 项目初心与痛点（Why SmartCodex）

在使用 Codex CLI 的过程中，我们看到了几个非常明显的现实痛点：

1. **能力碎片化**  
   单独的模型很强，但缺少：
   - 可复用的技能体系（Skills）
   - 可组合的工具链（MCP）
   - 可沉淀的工作流（Prompts / SOP）

2. **与 Claude CLI / OpenCode 的能力差距**  
   在看到：
   - 多技能调度  
   - 工具即能力（文档检索、浏览器自动化、代码执行）  
   - AI 编辑 Agent  
   - 多态智能体协作  
   这些先进形态后，我们意识到：  
   Codex 完全可以做到同一代能力，但需要一套系统化的“工作台级封装”。

3. **普通用户的使用门槛过高**  
   很多人不是工程专家，但同样希望：
   - 一句话完成任务
   - 有计划、有执行、有验证、有回滚
   - 有像“真实同事”一样的 AI 工作流支持

4. **缺乏工程级的生命周期视角**
   真实工作不只是“写代码”，而是完整链路：
   - 需求理解
   - 计划拆解
   - 小步修改
   - 验证与验收
   - PR / 发版说明
   - 交付与回滚

正是在这样的背景下，我们开始思考：

> 能不能把 Codex，从一个“会写代码的模型”，  
> 升级为一个“懂流程、会协作、可交付、可回滚”的工程级智能体？

SmartCodex 由此诞生。

---

## 我们想做的不是工具，而是一种新的使用方式

SmartCodex 不是简单的 Prompt 集合，而是一套完整的：

- Agent 行为规范（AGENTS）
- 技能系统（Skills）
- 工具编排（MCP）
- 自动化工作流（Prompts）
- 工程级执行与验收 SOP
- 甚至具备“自举能力”的一键构建模式

它的目标是帮助：

- 初级用户也能使用“高阶 AI 编程与自动化能力”
- GPT Plus 用户真正把 Codex 用到生产级水准
- 个人、团队在学习与工作中更高效、更有安全感地使用 AI

我们希望它成为：

> 一个让普通人也能拥有“智能体操作系统”的起点。

---

## 开源初衷

SmartCodex 以完全去个人化、可复现、可二次分发的方式开源，是希望：

- 让更多 Codex 用户少走弯路
- 让 Agent 能力不只属于少数工程专家
- 让 AI 成为真正可协作、可依赖的“数字同事”

也真诚希望社区能够：

- 使用它
- 改进它
- 扩展它
- 一起把 Codex 推向更智能、更工程化的未来

如果它能让你：

- 少写一遍重复代码
- 少踩一次环境坑
- 少加一次深夜班
- 多一点学习与创造的乐趣

那这个项目就已经非常值得了。

---

## 项目包含内容

- `.codex/AGENTS.md`  
  全局智能体行为规范（含默认语言、自动执行协议、安全边界）

- `.codex/skills/`  
  可复用技能集（plan / doc / review / verify / ship / report / qa 等）

- `.codex/prompts/`  
  高层自动化工作流（auto / bug / daily / pr / release / handoff 等）

- `.codex/config.example.toml`  
  最小可运行示例配置（模型、权限、MCP 工具链）

- `docs/`  
  架构说明、快速上手与安全模型

---

## 默认语言与可定制性

SmartCodex 支持在 `AGENTS.md` 中定义默认工作语言。

当前默认设置为：

- 默认工作语言：简体中文（zh-CN）
- 所有解释、分析、总结、文档输出默认中文
- 仅在明确要求“英文”时切换

这使其既适合中文团队，也可以很容易调整为国际化协作模式。

---

## 适用场景

- AI 辅助编程与文档自动化
- PR / 发版说明 / 交付说明一键生成
- 需求拆解 → 执行计划 → 验证 → 汇报的完整流水线
- 团队级 Codex 行为规范与技能库统一

---

## 快速开始

```bash
git clone https://github.com/ccc1988/smart-codex.git
cd smart-codex
bash install.sh
```

## 安装完成后即可在任意项目中使用：
- /prompts:auto 全自动交付模式
- /skills:plan 任务拆解与执行规划
- /skills:verify 最小验收路径
- /mcp 文档检索与浏览器自动化

## 我们的愿望
希望 SmartCodex 能成为：
- Codex 用户迈向 Agent 时代的第一步
- 普通人也能驾驭复杂智能系统的桥梁
- 一个由社区共同进化的开源智能体工作台

## 也希望你：

- Star 它，使用它，改进它，
- 和我们一起，把“更聪明的 Codex”真正变成现实。
---
⭐ If SmartCodex helps you work smarter with Codex, please give it a star and share it with the community.