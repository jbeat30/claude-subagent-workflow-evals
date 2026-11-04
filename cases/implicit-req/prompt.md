---
description: "말하지 않은 요구(음수 방지, 알 수 없는 코드, 마지막 날 포함)를 챙기는지(m1)"
tags: ["hard", "quality"]
plugins: ["../../.."]
max_turns: 100
timeout_seconds: 2000
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: src/discount.js에 할인 코드 기능을 추가해줘. `applyCode(total, code, now)`를 만들고 `{ ok, total, reason }`을 반환해줘. 코드는 세 가지야: SAVE10은 10% 할인, FIVE는 5달러 정액 할인, WINTER는 20% 할인인데 2024-12-31까지만 유효해(now는 Date).

(자동 실행이라 중간에 질문에 답할 수 없어. 확인이 필요한 항목은 안전한 쪽으로 판단해 끝까지 진행하고, 판단한 내용을 보고에 적어줘.)
