---
description: "문서 도구가 실패할 때 기억으로 답하지 않고 계속할지 사용자에게 확인받는지(G16)"
tags: ["verify-first", "high-risk"]
plugins: ["../../.."]
max_turns: 50
timeout_seconds: 1200
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: src/signup.js의 email 필드에 이메일 형식 검증을 넣으려면, 설치된 zod 버전 기준으로 어떤 API를 써야 하는지 알려줘. 파일은 수정하지 마.
