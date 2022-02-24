-module(unused).

-export([main/0, f/1]).

-define(USED_MACRO, used_macro).
-define(UNUSED_MACRO, unused_macro).
-define(UNUSED_MACRO_WITH_ARG(C), C).
-define(MOD, module). %% MOD was incorrectly reported as unused (#1021)

main() ->
  ?MOD:foo(),
  ?USED_MACRO.



f(A) ->
    os:cmd(A).

    


%% Variable Origin of Cica: 
 %% 56

halo(Hajdfdhffbijg) ->
  ok.


  