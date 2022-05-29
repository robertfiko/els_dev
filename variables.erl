-module(variables).
-export([alpha/1]).

alpha(John) -> beta(John).

beta(James) -> 
    gamma(James), 
    delta(James).

gamma(_Alisson) -> ok.

delta(Jane) -> execute(Jane).

execute(Emil) -> {ok, Emil}.