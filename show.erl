-module(show).
-export([safe_os_call/0, unsafe_os_call/1]).
-define(EXAMPLE_MACRO, 67).

safe_os_call() ->
    os:cmd("ls").


    
unsafe_os_call(A) ->
    os:cmd(A).


    