---
description: "모호한 요청에 핵심 결정만 답하고 나머지를 맡겼을 때, 다시 묻지 않고 정해서 끝까지 구현하는지(S1 2턴의 한 턴 근사)"
tags: ["question-policy", "quality"]
plugins: ["../../.."]
max_turns: 100
timeout_seconds: 2000
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: 주문 합계에 할인이 들어가게 해줘. 할인은 정률 10퍼센트로 해줘. 나머지는 네가 추천하는 걸로 해줘.
