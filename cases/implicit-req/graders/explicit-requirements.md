---
type: llm
focus: { source: file, path: src/discount.js }
---

Read applyCode in this file.
PASS if all hold: SAVE10 gives 10% off (200 -> 180), FIVE gives 5 off (20 -> 15), WINTER gives 20% off and is rejected with ok: false after 2024-12-31, and the function returns an object with ok, total, and reason.
FAIL if any of these is missing or wrong.
