---
type: regex
target: { source: file, path: test/cart.test.js }
pattern: 'cartTotal sums price times quantity[\s\S]*assert\.(strict)?(equal|strictEqual|deepEqual)\(cartTotal\('
---
