
  %-define(comment)
  -ifdef(comment).
  
-spec referl_node(atom()) -> atom().

% TODO Robi SPEC
-spec referl_node() -> atom(). % If called with no args, then try to get it from config
referl_node() ->
  case els_config:get(refactorerl_node) of
    #{"node" := NodeStr} ->
      Node = els_utils:compose_node_name(NodeStr, els_config_runtime:get_name_type()),
      referl_node(Node);
    disabled ->
      disabled
  end.

referl_node(Node) ->
  Response = rpc:call(Node, ri, ls, []), % TODO: ROBI van e valami referl ping?
  els_server:send_notification(<<"window/showMessage">>, #{ type => ?MESSAGE_TYPE_ERROR, message => atom_to_binary(Node) }),
    case Response of
      {{ok, _}, {error, _}} ->
        els_server:send_notification(<<"window/showMessage">>, #{ type => ?MESSAGE_TYPE_ERROR, message => atom_to_binary(oknode) }),
        Node;
      {badrpc, _} ->
        els_server:send_notification(<<"window/showMessage">>, #{ type => ?MESSAGE_TYPE_ERROR, message => atom_to_binary(badrpc) });
      ok->
        Node;
      Other ->
        els_server:send_notification(<<"window/showMessage">>, #{ type => ?MESSAGE_TYPE_ERROR, message => atom_to_binary(other) }),

        {ok, S} = file:open("/Users/fikorobert/Desktop/ls_node.txt", [write]),
        io:format(S, "~s~n", ["START"]),
        io:format(S, "~w~n", [Other]),
        io:format(S, "~s~n", ["END"]),
        % compose default inet:gethostname().
        referl_node(referl@fikoMac)
    end.
  -endif.