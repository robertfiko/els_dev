-module(dependency).

len(List) ->
    length(List).

isHundered(List) ->
    hello(),
    case len(List) of
        100 -> true;
        _ -> false
    end.

hello() ->
    io:format("Hello World!").