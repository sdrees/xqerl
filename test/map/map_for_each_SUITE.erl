-module('map_for_each_SUITE').

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

-export(['map-for-each-001'/1]).
-export(['map-for-each-002'/1]).
-export(['map-for-each-003'/1]).
-export(['map-for-each-004'/1]).
-export(['map-for-each-005'/1]).
-export(['map-for-each-006'/1]).
-export(['map-for-each-007'/1]).
-export(['map-for-each-008'/1]).
-export(['map-for-each-009'/1]).
-export(['map-for-each-010'/1]).
-export(['map-for-each-011'/1]).
-export(['map-for-each-012'/1]).
-export(['map-for-each-013'/1]).
-export(['map-for-each-014'/1]).
-export(['map-for-each-015'/1]).
-export(['map-for-each-016'/1]).
-export(['map-for-each-017'/1]).

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
    __BaseDir = filename:join(TD, "map"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'map-for-each-001',
            'map-for-each-002',
            'map-for-each-003',
            'map-for-each-004',
            'map-for-each-005',
            'map-for-each-006',
            'map-for-each-007',
            'map-for-each-008',
            'map-for-each-009',
            'map-for-each-010',
            'map-for-each-011',
            'map-for-each-012',
            'map-for-each-013',
            'map-for-each-014',
            'map-for-each-015',
            'map-for-each-016',
            'map-for-each-017'
        ]}
    ].

environment('map', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/map", "map"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'map-for-each-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map{}, concat#2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-001.xq"), Qry1),
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

'map-for-each-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map:merge(()), function($k,$v){$k||$v})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-002.xq"), Qry1),
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

'map-for-each-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map{\"a\":1}, function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-003.xq"), Qry1),
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
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"a\"") of
                        true -> {comment, "Equal"};
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

'map-for-each-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map:entry(\"a\", \"1\"), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-004.xq"), Qry1),
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
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"a\"") of
                        true -> {comment, "Equal"};
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

'map-for-each-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "map:for-each(map:merge((map:entry(\"a\", \"1\"), map:entry(\"b\", 2))), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-005.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result = \"a\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = \"b\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "2") of
                        true -> {comment, "Count correct"};
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

'map-for-each-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map{\"a\":1, \"b\":2}, function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-006.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result = \"a\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = \"b\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "2") of
                        true -> {comment, "Count correct"};
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

'map-for-each-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map{\"a\":1, \"a\":2}, function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-007.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQDY0137") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQDY0137 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-for-each-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map:merge((map:entry(\"a\",1), map:entry(\"a\",2))), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-008.xq"), Qry1),
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
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"a\"") of
                        true -> {comment, "Equal"};
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

'map-for-each-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map:remove(map{\"a\":1,\"b\":2}, \"b\"), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-009.xq"), Qry1),
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
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"a\"") of
                        true -> {comment, "Equal"};
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

'map-for-each-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map:remove(map:entry(1,2),1), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-010.xq"), Qry1),
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

'map-for-each-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "map:for-each(map:remove(map:remove(map{\"a\":1,\"b\":2},\"b\"),\"a\"), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-011.xq"), Qry1),
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

'map-for-each-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map{number('NaN'):1,\"b\":2}, function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-012.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "2") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-for-each-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map:remove(map{\"a\":1,\"b\":2}, \"c\"), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-013.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result = \"a\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = \"b\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "2") of
                        true -> {comment, "Count correct"};
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

'map-for-each-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "map:for-each(map:merge(for $n in 1 to 500000 return map:entry($n, $n+1)), function($k,$v){$k})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-014.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result = 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = 500000") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "500000") of
                        true -> {comment, "Count correct"};
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

'map-for-each-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:for-each(map{\"a\":1, \"b\":2}, function($k,$v){$k||$v})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-015.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result = \"a1\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = \"b2\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "2") of
                        true -> {comment, "Count correct"};
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

'map-for-each-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:merge(map:for-each(map{\"a\":1, \"b\":2}, function($k,$v){map{$v : $k}}))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-016.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result(1) eq \"a\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result(2) eq \"b\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
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

'map-for-each-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e>{map:for-each(map{\"a\":1, \"b\":2}, function($k,$v){attribute{$k}{$v}})}</e>",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-for-each-017.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e a=\"1\" b=\"2\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
