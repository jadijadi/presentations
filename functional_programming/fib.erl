-module (fib).
-export([fib/1]).

fib(N) -> fib_internal(N, 0, 1).

fib_internal(0, Result, _) -> Result;
fib_internal(Iter, Result, Next) when Iter > 0 ->
	fib_internal(Iter-1, Next, Next+Result).
