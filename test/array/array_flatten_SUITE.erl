-module('array_flatten_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

-export(['array-flatten-001'/1]).
-export(['array-flatten-002'/1]).
-export(['array-flatten-003'/1]).
-export(['array-flatten-004'/1]).
-export(['array-flatten-005'/1]).
-export(['array-flatten-006'/1]).
-export(['array-flatten-007'/1]).
-export(['array-flatten-008'/1]).
-export(['array-flatten-009'/1]).
-export(['array-flatten-010'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "array"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'array-flatten-001',
            'array-flatten-002',
            'array-flatten-003',
            'array-flatten-004',
            'array-flatten-005',
            'array-flatten-006',
            'array-flatten-007',
            'array-flatten-008',
            'array-flatten-009',
            'array-flatten-010'
        ]}
    ].

environment('array', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/array", "array"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'array-flatten-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten([1, 4, 6, 5, 3])",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-001.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_type(Res, "xs:integer*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result) eq 5") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "1, 4, 6, 5, 3") of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten([])",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-002.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten(())",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_empty(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten((1, 4, 6, 9))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 4, 6, 9") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten(([1, [4, [6, 9]]]))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 4, 6, 9") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten((map{}, map{1:2}, map{1:2, 2:3}))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-006.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{}, map{1:2}, map{1:2, 2:3}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:flatten((map{}, map{1:[2,3]}, map{1:[2], 2:[3]}))",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-007.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{}, map{1:[2,3]}, map{1:[2], 2:[3]}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<out>{array:flatten((<a/>, <b/>, <c/>))}</out>",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-008.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out><a/><b/><c/></out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<out>{array:flatten([<a/>, [<b/>, <c/>]])}</out>",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-009.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out><a/><b/><c/></out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'array-flatten-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<out>{[<a/>, [<b/>, <c/>]]}</out>",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "array-flatten-010.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out><a/><b/><c/></out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
