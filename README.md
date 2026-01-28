# SmartCodex Guide

**SmartCodex turns Codex / GPT Plus into a low-friction, multi-skill workflow: five disciplined entrypoints plus a production-grade `sp` bridge to the upstream Superpowers bundle, so you can hit Claude CLI / OpenCode vibes without the overhead.**

## 1. What this is for
- Upgrade Codex’ single-stream chat into repeatable, plan/verify/deliver workflows.  
- Handle delivery, bug fixes, quoting, releases, and retros with `go/fix/quote/ship/learn`, and reserve `sp` for method-driven, cross-cutting challenges.  
- `sp` actually invokes the third-party bundle living at `~/.codex/superpowers`; `install.sh` clones or updates it so your setup mirrors this repo.  
- This project wraps `https://github.com/obra/superpowers` as a dependency—if you have licensing or usage concerns, contact me so I can remove the content; for issues with Superpowers itself, file tickets upstream.  
- GPT Plus users already get Codex for free, and this script-based stack lets everyone tap into the advanced models plus the Superpowers plugin extensions, effectively making Codex a smarter, more adaptable engine.

## 2. Background & why we open-source it
- Claude CLI and OpenCode ship rich multi-skill experiences, but Codex’ affordances are lean. SmartCodex is our “forward march” fix: fewer ad-hoc prompts, more structured entrypoints, and a smarter Codex that fits more scenarios.  
- Because Codex is free for GPT Plus owners, we want to lower the barrier further—publish the installation flow, share what we keep tuned locally, and invite people to enjoy the productivity. Think of this as a shared toolbox; if you spot copyright issues, reach out and I’ll deal with them or remove the offending pieces.  
- This project is just the starting line—if you find value, give us a star, contribute feedback, and help keep the tool sharp.

## 3. 30-second setup (copy these steps)
1. `git clone https://github.com/ccc1988/smart-codex && cd smart-codex` – pull the repo and enter it.  
2. `mkdir -p ~/.codex && touch ~/.codex/.gitkeep` – ensure the Codex directory exists, then `cd $(pwd)` to stay in the repo.  
3. Run `bash install.sh`: it backs up the target `.codex`, copies `templates/codex`, and clones/pulls `https://github.com/obra/superpowers` into `~/.codex/superpowers` (use `TARGET_DIR=/path/.codex` if you want another location).  
4. After installation, inspect `~/.codex` to confirm `AGENTS.md`, `skills/`, and the `superpowers/` folder contain the synchronized content (`ls ~/.codex`).  
5. Launch a Codex session and let `go:`/`fix:`/`quote:`/`ship:`/`learn:` drive the majority of tasks; switch to `sp:` when you need the method-level guidance.  
6. Paste any of the sample commands (e.g., `go: Give me a 3-step plan...` or `sp: use writing-plans...`) into Codex to verify the workflows are active—if there is output, you’re done.  
7. For Superpowers-specific issues refer to `docs/SUPERPOWERS.md`, and report upstream at `https://github.com/obra/superpowers` when relevant. Don’t forget to star this repo so we can keep investing in improvements.

## 4. Quick entry reference

### Core five entrypoints (90% of what you need)
|Entrypoint|Role|When to use|Copyable command|
|---|---|---|---|
|`go:`|General delivery bus|When the task hasn’t been broken down|`go: Give me a 3-step plan, wait for my confirmation before continuing`|
|`fix:`|Fault-repair flow|Production bugs or behavioral regressions|`fix: Login fails—reproduce, deliver the smallest fix, and verify`|
|`quote:`|Scope & risk guardrail|Assessing requests, estimating cost|`quote: Update README in two days—list scope, exclusions, risks, and quote`|
|`ship:`|Delivery/launch output|Deliverables, PR summaries, release notes|`ship: Produce delivery notes, acceptance criteria, and rollback plan`|
|`learn:`|Lightweight retro|End-of-day or post-sprint retros|`learn: Review today’s changes and capture reusable lessons`|

### `sp` entrypoint (Superpowers bundle)
|Skill|Purpose|Use when|Copyable command|
|---|---|---|---|
|`systematic-debugging`|Systematic bug investigation|Weird/multi-factor issues|`sp: use systematic-debugging This bug only shows up in production`|
|`test-driven-development`|TDD-style development|Core logic that can be tested|`sp: use test-driven-development Implement permission checks`|
|`writing-plans`|Rigorous planning|Large refactors or multi-step work|`sp: use writing-plans Refactor the config loader`|
|`executing-plans`|Plan execution|You already have a plan|`sp: use executing-plans Carry out the plan from earlier`|
|`verification-before-completion`|High-standard validation|Risky changes|`sp: use verification-before-completion Ensure this is deliverable`|
|`receiving-code-review`|Self-review prep|Before merging|`sp: use receiving-code-review Review the latest diff`|
|`requesting-code-review`|Review checklist|Before opening a PR|`sp: use requesting-code-review Generate review points`|
|`using-git-worktrees`|Branch management|Parallel feature work|`sp: use using-git-worktrees Advance two features simultaneously`|
|`subagent-driven-development`|Sub-agent orchestration|Complex systems|`sp: use subagent-driven-development Split the work into agents`|

### Native Codex (no prefix)
|Use|What it is for|Example|
|---|---|---|
|Free-form request|Walkthroughs, explanations|`Explain git rebase`|
|Brainstorm|Quick ideas/discussion|`What problems does this design have?`|

**Principles:** Use native Codex for brief answers; switch to the five entrypoints as soon as you need to deliver something; explicitly invoke `sp:` only for method-level upgrades, then return to the core flow; don’t keep `sp` as a permanent channel.

## 5. Wrap-up & a star request
- SmartCodex is more than a single skill—it’s a structured way to make Codex smarter. Every table and command here is ready to paste into Codex.  
- If this helps, please star the repo, share it, and help us keep building. That’s how we keep the tool improving for everyone.
