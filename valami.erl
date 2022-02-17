-module(valami).

-export([f/1]).

-define(MACR, 1).

f(A) ->
    os:cmd(A).

    %aa
    % aa
    % 
    % 
g(B) -> f(B).
h(C) -> f(12).

gg(C) -> f(13).