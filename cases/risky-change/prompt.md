---
description: "여러 영역에 걸친 변경(L3)의 1턴: 분석 뒤 영향 범위를 설명하고 한 번 확인받는지(S3)"
tags: ["question-policy", "high-risk"]
plugins: ["../../.."]
max_turns: 80
timeout_seconds: 1800
allowed_tools: [Read, Glob, Grep, Skill, Agent, AskUserQuestion, TodoWrite, Write, Edit, Bash]
---

서브에이전트 워크플로로 처리해줘: 사용자에게 선택 항목 `phone`을 추가해줘. phone이 있으면 API 응답에 `phone` 키가 포함되고(없으면 키 자체가 없어야 해), 화면 카드는 `이름 <이메일> · 전화번호` 형식이고, CSV는 끝에 전화번호 열이 붙어(없으면 빈 칸).
