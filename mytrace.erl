-module(mytrace).
-export([start_trace/2, trace_unused/1, trace_referl_els/1, trace_referl_common/1]).

trace_unused(Node) ->
    start_trace(Node,'els_unused_macros_referl_diagnostics').

trace_referl_els(Node) ->
    start_trace(Node, els_refactorerl_utils),
    start_trace(Node, els_referl_unused_macros_diagnostics),
    start_trace(Node, els_referl_unsecure_calls_diagnostics).

trace_referl_common(Node) ->
    start_trace(Node, els_refactorerl_utils),
    start_trace(Node, els_refactorerl_diagnostics).

start_trace(Node, Module) ->
    dbg:tracer(),
    dbg:n(Node),
    dbg:p(all, c),
    dbg:tpl(Module, x).