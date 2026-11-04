---
description: "주석 오탈자(L1)는 위임 없이 PM이 직접 고치는지"
tags: ["grade", "cost"]
plugins: ["../../.."]
max_turns: 30
timeout_seconds: 900
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: src/pricing.js 주석에 오탈자가 있어. 고쳐줘.

(자동 실행이라 중간에 질문에 답할 수 없어. 확인이 필요한 항목은 안전한 쪽으로 판단해 끝까지 진행하고, 판단한 내용을 보고에 적어줘.)
