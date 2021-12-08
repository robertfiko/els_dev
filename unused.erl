-module(unused).

-export([f/1]).

-define(BASIC, "base").
-define(RANDOM_STUFF, "random").

f(A) ->
    os:cmd(A).

%aaaa