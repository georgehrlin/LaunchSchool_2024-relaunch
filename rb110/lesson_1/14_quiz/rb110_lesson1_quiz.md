✓ 1. D 
✕ 2. A B C D
✕ 3. C D
✓ 4. A
✓ 5. B
✓ 6. B
✕ 7. A B C   # Does `each` always return an array, even when it's called on a hash?
✓ 8. B D     # Does `select` return a new array or hash when it's called on a hash?
✓ 9. B C
✓ 10. B C
✓ 11. B C
✓ 12. B
✓ 13. D
✓ 14. C
✓ 5. A
✓ 16. A C
✓ 17. D
✓ 18. A B C
✕ 19. B C D
✕ 20. C D

15/20

NOTES:
- `Enumerable#find_all` is an alias for `Enumerable#select` and `Enumerable#filter`
  - `Enumerable#find_all` always returns a new array
- `Array#select` is an alias only for `Array#filter` (no such thing as `Array#find_all`)
  - `Array#select` returns a new array
- `Hash#select` is an alias only for `Hash#filter` (no such thing as `Hash#find_all`)
  - `Hash#select` returns a new hash
