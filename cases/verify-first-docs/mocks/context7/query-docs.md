---
type: fixed
---

### Strings (zod v3.22.4)

Source: https://github.com/colinhacks/zod/blob/v3.22.4/README.md#strings

Zod includes a handful of string-specific validations.

```ts
z.string().email({ message: "Invalid email address" });
z.string().url();
z.string().uuid();
```

Note: the top-level `z.email()` format schema does not exist in v3. It was added in zod v4, where `z.string().email()` is deprecated.
