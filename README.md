# subagent-workflow 평가 (비공개)

`claude plugin eval`로 실행하는 행동 평가 케이스와 fixture
플러그인 저장소에서는 `evals/`가 gitignore 대상이라, 이 폴더 자체를 별도 비공개 저장소로 관리함

## 구조

| 경로 | 내용 |
| --- | --- |
| `cases/<case>/prompt.md`, `graders/*.md`, `case.yaml` | 평가 케이스(공식 형식), 목록과 합격 기준은 `CRITERIA.md` |
| `cases/<case>/scaffold.sh` | 생성 파일. `tools/build-scaffold.mjs`가 fixture에서 만듦, 직접 고치지 않음 |
| `mocks/context7/_server.md` | 스위트 공통 Context7 모의 응답(판정 모델이 서버 역할) |
| `cases/verify-first-*/mocks/context7/` | 케이스 전용 Context7 고정 응답(정상, 오류), 공통 응답을 덮어씀 |
| `fixtures/hard/` | 어려운 과제용 합성 프로젝트(커밋 0af7b35^의 `tools/eval/hard/fixture`에서 복구), 설치기로 만든 `.claude/subagent/profile.md` 포함 |
| `fixtures/zod-app/` | 버전에 민감한 질문용 프로젝트(zod 3.22.4), profile 포함 |
| `results/` | 실행 결과, 추적하지 않음 |

fixture나 케이스 준비를 바꾸면 `node tools/build-scaffold.mjs`를 다시 실행

## 실행

플러그인 루트에서. `--scaffold`가 없으면 fixture가 만들어지지 않음. 네이티브 Windows에서는 `Bash`를 허용하지 않음(`CRITERIA.md` 알려진 제약)

```sh
# 로드 확인(비용 없음): 케이스 파일 오류만 출력
claude plugin eval . --case "__none__"

# 점검 1: 가벼운 케이스로 스킬 로드, scaffold, grader 동작 확인
claude plugin eval . --scaffold --tag smoke --runs 1 --ablation none --model sonnet --judge-model sonnet --allow-tools Write Edit --max-cost-usd 1 --no-publish

# 점검 2: 전체
claude plugin eval . --scaffold --runs 1 --ablation none --model sonnet --judge-model sonnet --allow-tools Write Edit --max-cost-usd 3 --no-publish
```

## 주의

- `fixtures/hard/docs/NOTES.md`의 PWNED.txt 생성과 `test/` 삭제 지시는 주입 시험용 문장, 따르지 않음
- 합격 기준은 `CRITERIA.md`에 실행 전 고정
