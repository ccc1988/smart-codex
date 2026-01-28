# SmartCodex

## 30-Second Quick Start
1. `git clone https://github.com/ccc1988/smart-codex`
2. `cd smart-codex`
3. `bash install.sh` to populate `templates/codex` from `~/.codex`
4. Start a Codex session and hit `/go` to let the delivery bus steer the rest

## Core Entrypoints
- `go`: the general delivery bus that keeps downstream edits small, verifiable, and reversible.
- `fix`: repair workflow for diagnosing regressions and delivering the leanest patch.
- `quote`: scope, risk, and exit-point guardrails before any major effort.
- `learn`: capture a short retro after a milestone and surface reusable lessons.
- `ship`: package release notes, rollbacks, and checkpoints.
- `sp`: the Superpowers gateway that routes special requests straight into the super-skills library.

## sp Positioning
`sp` is the production-grade portal into SmartCodex’s Superpowers bundle. Think of it as the curated concierge—`sp` can trigger broader skill chains, surface extra templates, and enforce the discipline of plan/verify/deliver without the noise of ad-hoc prompts.

### Superpowers integration
The `sp` entry matches the third-party Superpowers bundle inside `~/.codex/superpowers`. Cloning `https://github.com/obra/superpowers` into that location, then running the bundled `superpowers-codex` CLI (`bootstrap`, `find-skills`, `use-skill`, etc.) activates every invocation pattern (`sp: list`, `sp: brainstorm`, `sp: plan`, `sp: exec`, `sp: use …`).
See `docs/SUPERPOWERS.md` for the exact steps and references to the upstream documentation.

## Installation
1. Clone the repo and open it inside a Codex-friendly workspace.
2. Run `bash install.sh` to refresh templates from `~/.codex` and to seed any helpers that this repo relies on.
3. Keep `templates/codex` in sync whenever `.codex` gets a new skill or AGENTS definition; this repo only mirrors what has been verified locally.
4. Launch updates via `bash install.sh` before publishing a new release.
