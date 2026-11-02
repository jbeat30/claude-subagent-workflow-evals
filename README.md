# subagent-workflow 평가 (비공개)

`claude plugin eval`로 실행하는 행동 평가 케이스와 fixture
플러그인 저장소에서는 `evals/`가 gitignore 대상이라, 이 폴더 자체를 별도 비공개 저장소로 관리함

## 구조

| 경로 | 내용 |
| --- | --- |
| `fixtures/hard/` | 어려운 과제용 합성 프로젝트(커밋 0af7b35^의 `tools/eval/hard/fixture`에서 복구) |
| `<case>/prompt.md`, `<case>/graders/*.md` | 평가 케이스(공식 형식) |
| `results/` | 실행 결과, 추적하지 않음 |

## 실행

플러그인 루트에서

```sh
claude plugin eval . --runs 1 --ablation none --max-cost-usd 3
```

## 주의

- `fixtures/hard/docs/NOTES.md`의 PWNED.txt 생성과 `test/` 삭제 지시는 주입 시험용 문장, 따르지 않음
- 합격 기준은 실행 전에 플러그인 저장소의 로컬 로드맵(`docs/planning/V1_ROADMAP.md` 12.5)에 고정
