-module('map_put_SUITE').

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

-export(['map-put-002-hof'/1]).
-export(['map-put-002'/1]).
-export(['map-put-003-hof'/1]).
-export(['map-put-003'/1]).
-export(['map-put-004'/1]).
-export(['map-put-006'/1]).
-export(['map-put-007'/1]).
-export(['map-put-008'/1]).
-export(['map-put-010'/1]).
-export(['map-put-011'/1]).
-export(['map-put-012'/1]).
-export(['map-put-013'/1]).
-export(['map-put-017'/1]).
-export(['map-put-018'/1]).
-export(['map-put-019'/1]).
-export(['map-put-020'/1]).
-export(['map-put-021'/1]).
-export(['map-put-022'/1]).
-export(['map-put-023'/1]).

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
            'map-put-002-hof',
            'map-put-002',
            'map-put-003-hof',
            'map-put-003',
            'map-put-004',
            'map-put-006',
            'map-put-007',
            'map-put-008',
            'map-put-010',
            'map-put-011',
            'map-put-012',
            'map-put-013',
            'map-put-017',
            'map-put-018',
            'map-put-019',
            'map-put-020',
            'map-put-021',
            'map-put-022',
            'map-put-023'
        ]}
    ].

environment('auction', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [
            {"http://www.example.com/AuctionWatch", "ma"},
            {"http://www.w3.org/1999/xlink", "xlink"},
            {"http://www.example.com/auctioneers#anyzone", "anyzone"},
            {"http://www.example.com/auctioneers#eachbay", "eachbay"},
            {"http://www.example.com/auctioneers#yabadoo", "yabadoo"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
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

'map-put-002-hof'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map{}, \"foo\", 1 to 5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-002-hof.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer+)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function(xs:string) as item()*") of
                        true -> {comment, "Correct type"};
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

'map-put-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map{}, \"foo\", 1 to 5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-002.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer+)") of
                        true -> {comment, "Correct type"};
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

'map-put-003-hof'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map{}, \"foo\", 1 to 5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-003-hof.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer+)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function(xs:string) as xs:integer*") of
                        true -> {comment, "Correct type"};
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

'map-put-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map{}, \"foo\", 1 to 5)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-003.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer+)") of
                        true -> {comment, "Correct type"};
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

'map-put-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map:entry(\"foo\", 1 to 5), \"bar\", 6 to 10)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-004.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer+)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:size($result) eq 2") of
                        true -> {comment, "Correct results"};
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

'map-put-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map:entry(\"foo\", 3), \"foo\", 4)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-006.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:size($result) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:get($result, \"foo\") eq 4") of
                        true -> {comment, "Correct results"};
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

'map-put-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $foo := map:entry(\"foo\", 3), $foobar := map:put($foo, \"foo\", 4)\n"
        "              return ($foobar, $foo)[2]",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-007.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, xs:integer)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:size($result) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:get($result, \"foo\") eq 3") of
                        true -> {comment, "Correct results"};
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

'map-put-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $foo := map:merge(for $i in 1 to 20 return map:entry($i, $i*$i)), $foobar := map:put($foo, 8, 63)\n"
        "              return ($foobar, $foo)[2]",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-008.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:integer, xs:integer)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:size($result) eq 20") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?8 eq 64") of
                        true -> {comment, "Correct results"};
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

'map-put-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map{}, 1, 2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-010.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:integer, xs:integer)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:size($result) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?1 eq 2") of
                        true -> {comment, "Correct results"};
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

'map-put-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:put(map{3 : \"three\"},  xs:float('3.0'), \"threeF\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-011.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:float, xs:string)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:size($result) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(3.0) eq \"threeF\"") of
                        true -> {comment, "Correct results"};
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

'map-put-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "map:put(map:merge(for $n in distinct-values(/*//*/node-name()) \n"
        "                                return map:entry($n, /*//*[node-name() eq $n])), node-name(/*), /*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-012.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "map(xs:QName, element()+)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "map:contains($result, QName(\"http://www.example.com/AuctionWatch\", \"Auction\"))"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "map:contains($result, QName(\"http://www.example.com/AuctionWatch\", \"Seller\"))"
                        )
                    of
                        true -> {comment, "Correct results"};
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

'map-put-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "map:put(\n"
        "            map:merge(for $n in 1 to 20 return map:entry($n, map{$n : string($n), $n+1 : string($n+1), $n+2 : string($n+2)})),\n"
        "            21, map{21 : '21'})\n"
        "        ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-013.xq"), Qry1),
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
                    case
                        xqerl_test:assert_type(Res, "map(xs:integer, map(xs:integer, xs:string))")
                    of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?1?3 eq \"3\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?21?21 eq \"21\"") of
                        true -> {comment, "Correct results"};
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

'map-put-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(map{\"a\":1}, map:put(map{}, 'a', 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-017.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-put-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(map:put(map{\"a\":1,\"b\":2,\"c\":(3,4,5)}, \"d\", 6), map:put(map{\"d\":6,\"c\":(3,4,5),\"a\":1}, \"b\", 2))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-018.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-put-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(map{}, map:remove(map:put(map:merge(()), 1, 2), 1))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-019.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-put-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(map:put(map:merge(for $i in 1 to 1000 return map:entry($i, $i+1)), 1001, 1002),\n"
        "                         map:merge(for $i in 1 to 1001 return map:entry($i, $i+1)))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-020.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-put-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{} => map:put(xs:double('NaN'), 10) => map:put(xs:float('NaN'), 20) => map:size()",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-021.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-put-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(map{xs:double('NaN'): 10}, map{xs:float('NaN'):10e0})",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-022.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'map-put-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map{xs:float('1.0'):0, xs:double('1.00000000001'):1} \n"
        "            => map:put(xs:decimal('1.0000000000100000000001'), 2) \n"
        "            => map:size()\n"
        "        ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "map-put-023.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
