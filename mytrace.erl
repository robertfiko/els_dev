-module(mytrace).
-export([start_trace/2, trace_unused/1]).

trace_unused(Node) ->
    start_trace(Node,'els_unused_macros_referl_diagnostics').

start_trace(Node, Module) ->
    dbg:tracer(),
    dbg:n(Node),
    dbg:p(all, c),
    dbg:tpl(Module, x).