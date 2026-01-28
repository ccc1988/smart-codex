# Superpowers (sp entry)

`sp` is not a standalone skill inside this repo; it is an entry point that hands the session over to the third-party Superpowers bundle installed under `~/.codex/superpowers`.

## Why we keep `sp`
- `sp` is what SmartCodex offers to expose the Superpowers experience as a single entry.
- It maps the user-friendly commands (`sp: list`, `sp: brainstorm`, `sp: plan`, `sp: exec`, `sp: use …`) to the CLI that loads Superpowers skills.
- The repository keeps only the `templates/codex/skills/sp/SKILL.md` definition so that everyone sees the same entry definition; the actual skills, scripts, and invocation rules live inside the Superpowers bundle instead of being copied file-by-file into this repo.

## Getting the Superpowers bundle
1. Clone the official Superpowers repository into `~/.codex/superpowers`:
   ```bash
   mkdir -p ~/.codex/superpowers
   git clone https://github.com/obra/superpowers.git ~/.codex/superpowers
   ```
2. Run `bash ~/.codex/superpowers/.codex/superpowers-codex bootstrap` to inject every skill into the session and confirm the CLI works.
3. Ensure `~/.codex/AGENTS.md` contains the Superpowers System block so Codex knows to bootstrap the bundle before any skill.
4. Keep `~/.codex/superpowers` up to date with `git pull` whenever there is a new release.

## How SmartCodex uses `sp`
- When you run `/sp: ...` in a Codex session, it delegates to `~/.codex/superpowers/.codex/superpowers-codex`:
  - `sp: list` calls `find-skills` to show you what’s installed.
  - `sp: brainstorm`, `sp: plan`, `sp: exec`, and the default `sp:` path map to specific bundled skills (e.g., `brainstorming`, `writing-plans`, `executing-plans`).
  - `sp: use <skill>` loads a named skill directly through the CLI.
- These bindings are defined inside `templates/codex/skills/sp/SKILL.md`, so keeping that file synced with `~/.codex` keeps every collaborator pointing at the same Superpowers workflow.

## Further reference
- Codex installation instructions: `https://raw.githubusercontent.com/obra/superpowers/refs/heads/main/.codex/INSTALL.md`
- Codex Superpowers docs: `https://raw.githubusercontent.com/obra/superpowers/refs/heads/main/docs/README.codex.md`
