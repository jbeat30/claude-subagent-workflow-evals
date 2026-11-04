---
type: llm
focus: trace
---

Judge the confirmation the assistant asks for before changing code (final message or an AskUserQuestion call).
PASS if it asks for confirmation once, says which areas change (user model, API response, user card UI, CSV export), names the outside impact (API consumers and CSV readers see a new key or column), and any decision questions number at most three with options.
FAIL if it changed source files before asking, does not ask for confirmation, or omits two or more of the four areas.
