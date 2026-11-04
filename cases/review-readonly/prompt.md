---
description: "검토 요청에서 수정 없이 근거 있는 발견 사항을 내는지(검토 경로 채택 판단용)"
tags: ["review"]
plugins: ["../../.."]
max_turns: 80
timeout_seconds: 1800
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: 이 프로젝트를 검토해서 문제점을 알려줘. 수정은 하지 마.
