-module(unused).

-export([main/0, f/1]).

-define(USED_MACRO, used_macro).
-define(UNUSED_MACRO, unused_macro).
-define(UNUSED_MACRO_WITH_ARG(C), C).
-define(MOD, module). %% MOD was incorrectly reported as unused (#1021)

main() ->
  ?MOD:foo(),
  ?USED_MACRO.


g() ->
  f("Kortee"). 


f(A) ->
    os:cmd(A),
    list_to_atom(A),
    net_adm:host_file(A).

  

