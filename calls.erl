-module(calls).

dyncall() ->
    apply(calls, test, []).

call() ->
    test().

test() ->
    hello.
