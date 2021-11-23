-module(unused).

-export([f/1]).

-define(BASIC, "base").
-define(RU, "russia").

f(A) ->
    os:cmd(A).
