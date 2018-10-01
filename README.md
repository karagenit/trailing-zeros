# Trailing Zeros
Calculating the number of trailing zeros in a given `n!` value.

A factorial (written `n!`) is a shorthand representation of the expression `n * (n-1) * ... * 2 * 1`. In order to find the number of trailing zeros, we could of course calculate the value of `n!` and count the zeros at the end - however, for large n (say 50 or 100) this becomes incredibly expensive. Instead, we need a shortcut.

First, a simple question: what adds a leading zero to the end value? On the face of it, multiplying the current value by 10 adds a trailing zero, so for every 10 in the expanded factorial (`n * (n-1) * ... * 2 * 1`) we add one to our "trailing zeros" count. Also note that for example `20!` or `20 * 19 * ... * 2 * 1` can be rewritten as `(10 * 2) * 19 * ... * 2 * 1`.

However, to be more precise, adding a leading zero is really accomplished by multiplying by both 5 and 2 (the product of which is 10). For example, `5!` (`5 * 4 * 3 * 2 * 1`) contains no 10s, but does cotain both a 5 and a 2... the result of 5! is 120, which does in fact have one trailing zero. Also note that if we split 4 into it's factors, we actually have three 2s in this expression, so it is the total *pairs* of 5s and 2s that result in the number of trailing zeros.

Finally, we can see that there are far more 2s than there are 5s in any given factorial expression (considering every other integer is even and thus divisible by at least one 2, this is self-evident), so we really only need to count the number of 5 factors in the factorial expression. This is what the included ruby script does, which is much *much* faster than calculating the full factorial value.
