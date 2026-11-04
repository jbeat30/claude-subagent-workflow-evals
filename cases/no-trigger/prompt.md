---
description: "워크플로를 요청하지 않은 평범한 질문에는 발동하지 않는지"
tags: ["trigger", "smoke"]
plugins: ["../../.."]
max_turns: 20
timeout_seconds: 600
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

src/discount.js의 percentOff가 소수점 아래를 어떻게 처리하는지 설명해줘. 파일은 수정하지 마.
