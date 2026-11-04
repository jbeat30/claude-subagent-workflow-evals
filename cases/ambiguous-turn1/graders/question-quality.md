---
type: llm
focus: trace
---

Judge the question the assistant puts to the user before changing code (in the final message or in an AskUserQuestion call).
PASS if it asks at most three decision questions, each with concrete options, gives a recommended default the user can accept as is (for example "proceed with the recommendation"), and uses plain words.
FAIL if it changed source files before asking, asks more than three questions, asks open questions without options, or gives no recommendation.
