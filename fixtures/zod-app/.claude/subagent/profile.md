# Project profile

File generated from the install survey and user answers. Every agent reads it before work to reduce repeated questions.
No secrets. Mark items without evidence as `unchecked`. The user may edit it.

## Tech environment

| Item | Value | Evidence path |
| --- | --- | --- |
| JavaScript (Node.js, ES modules) | npm, zod 3.22.4 | package.json |

## Check commands

| Purpose | Command | Working directory | Side effects (auto-fix, external access, state change) |
| --- | --- | --- | --- |
| Test | `npm test` | . | none |

## Project rule sources

The project's own rule files below take priority over this profile and over the workflow defaults. Re-read them from the original path before work; never rely on a copied summary. If a rule here differs from this profile, follow the source file. Apply a workflow behavior that the project's rules do not have only after the user confirms it.

| Path | Covers |
| --- | --- |
| CLAUDE.md | project summary, test command |

## Conventions

Pointers to the evidence path, not a copy of the rule files.

| Item | Content | Evidence path |
| --- | --- | --- |
| Validation | zod schemas in src/ | src/signup.js |

## Forbidden areas

| Path | Reason |
| --- | --- |

## Workflow settings

- Design tool MCP: none
- Document tool MCP: none
- PDCA mode: off
- Roles: the built-in roles come from the plugin (planning-lead, dev-lead, planner-agent, architecture-agent, frontend-agent, backend-agent, api-agent, test-agent, qa-agent); roles added for this project are listed in roles.local.json
- Source repository, tag, commit: https://github.com/jbeat30/claude-subagent-workflow · no tag · 57d6fbec99bc14d1fa0ec6336c13cad78fa22a98
