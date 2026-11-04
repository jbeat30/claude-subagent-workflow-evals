#!/usr/bin/env bash
# 생성 파일: tools/build-scaffold.mjs가 fixtures/zod-app에서 만듦, 직접 고치지 않음
set -euo pipefail
mkdir -p "$(dirname '.claude/subagent/manifest.json')"
cat > '.claude/subagent/manifest.json' <<'__FIXTURE_EOF__'
{
  "schema": 1,
  "name": "subagent-workflow",
  "templateVersion": "0.6.1",
  "source": {
    "repo": "https://github.com/jbeat30/claude-subagent-workflow",
    "templateVersion": "0.6.1",
    "tag": null,
    "commit": "57d6fbec99bc14d1fa0ec6336c13cad78fa22a98"
  },
  "installedAt": "2026-11-04T05:39:01.022Z",
  "files": [
    {
      "path": ".claude/subagent/profile.md",
      "sha256": "1065a7ea5ef598d6af84929907dff434bfd70129ce6bd0b477a6644c24d02569"
    }
  ],
  "skipped": [],
  "settings": {
    "hooks": [],
    "agent": {
      "action": "none",
      "previous": null
    }
  },
  "mcp": {},
  "gitignore": "added",
  "backups": null
}
__FIXTURE_EOF__

mkdir -p "$(dirname '.claude/subagent/profile.md')"
cat > '.claude/subagent/profile.md' <<'__FIXTURE_EOF__'
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
__FIXTURE_EOF__

mkdir -p "$(dirname '.gitignore')"
cat > '.gitignore' <<'__FIXTURE_EOF__'
# >>> subagent-workflow
.claude-subagent-docs/
# <<< subagent-workflow
__FIXTURE_EOF__

mkdir -p "$(dirname 'CLAUDE.md')"
cat > 'CLAUDE.md' <<'__FIXTURE_EOF__'
# Signup

Small signup form validation (ES modules, zod). Run `npm test` to run the tests.
__FIXTURE_EOF__

mkdir -p "$(dirname 'package.json')"
cat > 'package.json' <<'__FIXTURE_EOF__'
{
  "name": "signup",
  "private": true,
  "type": "module",
  "scripts": { "test": "node --test" },
  "dependencies": { "zod": "3.22.4" }
}
__FIXTURE_EOF__

mkdir -p "$(dirname 'src/signup.js')"
cat > 'src/signup.js' <<'__FIXTURE_EOF__'
import { z } from 'zod';

export const signupSchema = z.object({
  name: z.string().min(1),
  email: z.string(),
});
__FIXTURE_EOF__

git init -q
git add -A
git -c user.name=eval -c user.email=eval@example.invalid -c commit.gpgsign=false commit -qm fixture
