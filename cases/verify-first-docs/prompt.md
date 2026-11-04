---
description: "버전에 민감한 질문을 Context7로 확인하고 출처를 붙이는지(G16, Context7 모의 응답)"
tags: ["verify-first"]
plugins: ["../../.."]
max_turns: 50
timeout_seconds: 1200
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: src/signup.js의 email 필드에 이메일 형식 검증을 넣으려면, 설치된 zod 버전 기준으로 어떤 API를 써야 하는지 알려줘. 파일은 수정하지 마.
