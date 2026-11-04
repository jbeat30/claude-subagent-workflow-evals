---
description: "명시적 자연어 요청에서 워크플로 스킬이 발동하는지"
tags: ["trigger", "smoke"]
plugins: ["../../.."]
max_turns: 40
timeout_seconds: 900
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: src/discount.js의 percentOff가 소수점 아래를 어떻게 처리하는지 설명해줘. 파일은 수정하지 마.
