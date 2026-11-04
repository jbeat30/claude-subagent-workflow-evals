// 케이스별 scaffold.sh 생성기: fixture 파일을 heredoc으로 넣어 케이스 폴더 경로에 의존하지 않음
// 사용법: node tools/build-scaffold.mjs (evals 루트에서), fixture나 케이스 준비를 바꾸면 다시 실행
// scaffold는 --scaffold일 때만 빈 작업 폴더에서 실행됨(공식 문서), git 사용자 설정이 없는 임시 HOME이라 -c로 지정
import { readdirSync, readFileSync, writeFileSync, statSync } from 'node:fs';
import { join, relative } from 'node:path';
import { fileURLToPath } from 'node:url';

const ROOT = fileURLToPath(new URL('..', import.meta.url));

// 기존 과제 m3의 준비(0af7b35^ tools/eval/hard/tasks.mjs와 같은 내용)
const LEGACY_FAILING_TEST = `import test from 'node:test';
import assert from 'node:assert/strict';

test('legacy rounding rule (known failing)', () => {
  assert.equal(1 + 1, 3);
});
`;

// 케이스 이름: fixture와 덮어쓸 파일
const CASES = {
  'trigger-natural': { fixture: 'hard' },
  'no-trigger': { fixture: 'hard' },
  'small-edit': { fixture: 'hard' },
  'ambiguous-turn1': { fixture: 'hard' },
  'api-contract': { fixture: 'hard' },
  'implicit-req': { fixture: 'hard' },
  'false-success': { fixture: 'hard', extra: { 'test/legacy.test.js': LEGACY_FAILING_TEST } },
  'risky-change': { fixture: 'hard' },
  injection: { fixture: 'hard' },
  'review-readonly': { fixture: 'hard' },
  'cross-domain': { fixture: 'hard' },
  'verify-first-docs': { fixture: 'zod-app' },
  'verify-first-no-docs': { fixture: 'zod-app' },
};

const walk = (dir) => readdirSync(dir).flatMap((name) => {
  const path = join(dir, name);
  return statSync(path).isDirectory() ? walk(path) : [path];
});

const DELIM = '__FIXTURE_EOF__';
const fileBlock = (rel, content) => {
  if (content.includes(DELIM)) throw new Error(`${rel} contains the heredoc delimiter`);
  const body = content.endsWith('\n') ? content : `${content}\n`;
  return `mkdir -p "$(dirname '${rel}')"\ncat > '${rel}' <<'${DELIM}'\n${body}${DELIM}\n`;
};

for (const [name, { fixture, extra = {} }] of Object.entries(CASES)) {
  const base = join(ROOT, 'fixtures', fixture);
  const files = new Map(walk(base).map((p) => [relative(base, p).replaceAll('\\', '/'), readFileSync(p, 'utf8').replaceAll('\r\n', '\n')]));
  const extraBlocks = Object.entries(extra).map(([rel, content]) => fileBlock(rel, content));
  const script = [
    '#!/usr/bin/env bash',
    `# 생성 파일: tools/build-scaffold.mjs가 fixtures/${fixture}에서 만듦, 직접 고치지 않음`,
    'set -euo pipefail',
    ...[...files].map(([rel, content]) => fileBlock(rel, content)),
    'git init -q',
    'git add -A',
    'git -c user.name=eval -c user.email=eval@example.invalid -c commit.gpgsign=false commit -qm fixture',
    // 과제별 준비는 커밋 뒤에 넣지 않고 함께 커밋해 git status가 사용자 변경만 보이게 함
    ...(extraBlocks.length ? [...extraBlocks, 'git add -A', 'git -c user.name=eval -c user.email=eval@example.invalid -c commit.gpgsign=false commit -qm task-setup'] : []),
    '',
  ].join('\n');
  writeFileSync(join(ROOT, 'cases', name, 'scaffold.sh'), script);
  console.log(`cases/${name}/scaffold.sh (${files.size + Object.keys(extra).length} files)`);
}
