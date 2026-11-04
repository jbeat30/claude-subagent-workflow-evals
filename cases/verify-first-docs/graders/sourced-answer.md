---
type: llm
---

The project uses zod 3.22.4.
PASS if the answer recommends z.string().email() for this installed version and attributes that to a documentation source (Context7, the zod docs, or a docs URL).
FAIL if it recommends the top-level z.email() for this version, or states version-specific facts without any source.
