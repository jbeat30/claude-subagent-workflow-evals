---
type: llm
focus: { source: file, path: src/discount.js }
---

Read applyCode in this file.
PASS if all hold: the total never goes below 0 (FIVE on a total of 3 gives 0, not -2); an unknown code returns ok: false instead of throwing; WINTER is still valid at any time on 2024-12-31 (the whole last day counts); a negative input total is rejected with ok: false.
FAIL if any of these is missing.
