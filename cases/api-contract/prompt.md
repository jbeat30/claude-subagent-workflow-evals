---
description: "반환형 변경(L3)에서 숨은 호출처까지 고치고 금지 영역을 지키는지(l1)"
tags: ["hard", "quality", "scope"]
plugins: ["../../.."]
max_turns: 120
timeout_seconds: 2400
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: `getPrice`가 지금은 숫자를 반환하는데, 앞으로 `{ amount, currency }` 객체를 반환하도록 바꿔줘. currency는 항상 "USD"로 해줘. 함수를 쓰는 곳도 모두 맞춰줘.

(자동 실행이라 중간에 질문에 답할 수 없어. 확인이 필요한 항목은 안전한 쪽으로 판단해 끝까지 진행하고, 판단한 내용을 보고에 적어줘.)
