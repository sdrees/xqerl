-module('op_same_key_SUITE').

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

-export(['same-key-001'/1]).
-export(['same-key-002'/1]).
-export(['same-key-003'/1]).
-export(['same-key-004'/1]).
-export(['same-key-005'/1]).
-export(['same-key-006'/1]).
-export(['same-key-007'/1]).
-export(['same-key-008'/1]).
-export(['same-key-009'/1]).
-export(['same-key-010'/1]).
-export(['same-key-011'/1]).
-export(['same-key-012'/1]).
-export(['same-key-013'/1]).
-export(['same-key-014'/1]).
-export(['same-key-015'/1]).
-export(['same-key-016'/1]).
-export(['same-key-017'/1]).
-export(['same-key-018'/1]).
-export(['same-key-019'/1]).
-export(['same-key-020'/1]).
-export(['same-key-021'/1]).
-export(['same-key-022'/1]).
-export(['same-key-023'/1]).
-export(['same-key-024'/1]).
-export(['same-key-025'/1]).
-export(['same-key-026'/1]).
-export(['same-key-027'/1]).
-export(['same-key-028'/1]).

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
    __BaseDir = filename:join(TD, "op"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'same-key-001',
            'same-key-002',
            'same-key-003',
            'same-key-004',
            'same-key-005',
            'same-key-006',
            'same-key-007',
            'same-key-008',
            'same-key-009',
            'same-key-010',
            'same-key-011',
            'same-key-012',
            'same-key-013',
            'same-key-014',
            'same-key-015',
            'same-key-016',
            'same-key-017',
            'same-key-018',
            'same-key-019',
            'same-key-020',
            'same-key-021',
            'same-key-022',
            'same-key-023'
        ]},
        {group_1, [parallel], [
            'same-key-024',
            'same-key-025',
            'same-key-026',
            'same-key-027',
            'same-key-028'
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

'same-key-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           map:merge((\n"
        "              map:entry(xs:untypedAtomic(\"abc\"), 1),\n"
        "              map:entry(xs:string(\"abc\"), 1),\n"
        "              map:entry(xs:anyURI(\"abc\"), 1),\n"
        "              map:entry(xs:string(\"xyz\"), 1),\n"
        "              map:entry(xs:untypedAtomic(\"xyz\"), 1),\n"
        "              map:entry(QName((),\"abc\"), 1)\n"
        "           ), map{\"duplicates\":\"use-last\"})\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-001.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count(map:keys($result)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "map:keys($result)[deep-equal(.,\"abc\")] instance of xs:anyURI"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "map:keys($result)[deep-equal(.,\"xyz\")] instance of xs:untypedAtomic"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?abc eq 1") of
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

'same-key-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           declare default collation \"http://www.w3.org/2005/xpath-functions/collation/html-ascii-case-insensitive\";\n"
        "           let $keys := (\"ABC\", \"abc\", \"aBc\")\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k\n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-002.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "$result?1=>map:size() eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?1?abc eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?2) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?3) eq 1") of
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

'same-key-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           map {\n"
        "             \"ab\" || \"c\" : 1,\n"
        "             xs:anyURI(\"abc\") : 2\n"
        "           }\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-003.xq"), Qry1),
            xqerl:run(Mod)
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

'same-key-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map:merge((\n"
        "              map:entry(xs:double('NaN'), 1),\n"
        "              map:entry(xs:double('INF'), 2),\n"
        "              map:entry(xs:double('-INF'), 3),\n"
        "              map:entry(xs:float('NaN'), 1),\n"
        "              map:entry(xs:float('INF'), 2),\n"
        "              map:entry(xs:float('-INF'), 3)\n"
        "            ), map{\"duplicates\":\"use-last\"})\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-004.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:keys($result) instance of xs:float+") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double('NaN')) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double('INF')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double('-INF')) eq 3") of
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

'same-key-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map:merge((\n"
        "              map:entry(xs:double('NaN'), 1),\n"
        "              map:entry(xs:double('INF'), 2),\n"
        "              map:entry(xs:double('-INF'), 3),\n"
        "              map:entry(xs:float('NaN'), 1),\n"
        "              map:entry(xs:float('INF'), 2),\n"
        "              map:entry(xs:float('-INF'), 3)\n"
        "              ), map{\"duplicates\":\"use-last\"})\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-005.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "map:keys($result) instance of xs:float+") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double('NaN')) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double('INF')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double('-INF')) eq 3") of
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

'same-key-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "             let $keys := (\n"
        "                 xs:decimal(\"1.00000000000000001\"),\n"
        "                 xs:decimal(\"1.00000000000000002\"),\n"
        "                 xs:double(\"1.0\")\n"
        "             )\n"
        "             return [\n"
        "                 map:merge($keys ! map:entry(., position())),\n"
        "                 distinct-values($keys),\n"
        "                 for $k in $keys group by $k return $k              \n"
        "             ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-006.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?(1)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?1?(xs:double(\"1.0\") cast as xs:decimal) eq 3"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?1?(xs:double(\"1.0\")) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?2) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?3) lt 3") of
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

'same-key-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map {\n"
        "              xs:double(\"1.1\") : 1\n"
        "            }\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-007.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert(Res, "$result?(xs:decimal(\"1.1\")) => empty()") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(1.1E0) eq 1") of
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

'same-key-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map {\n"
        "              1 div 3 cast as xs:float : \"float\",\n"
        "              1 div 3 cast as xs:double : \"double\",\n"
        "              1 div 3 cast as xs:integer : \"integer\"\n"
        "            }\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-008.xq"), Qry1),
            xqerl:run(Mod)
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
                        xqerl_test:assert(
                            Res,
                            "$result?((1 div 3 cast as xs:float)   cast as xs:decimal) eq \"float\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?((1 div 3 cast as xs:double)  cast as xs:decimal) eq \"double\""
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?((1 div 3 cast as xs:integer) cast as xs:decimal) eq \"integer\""
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

'same-key-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           map { xs:integer(\"16777218\") : 1 }\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-009.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert(Res, "$result?(16777218) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:double(\"16777218\")) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:decimal(\"16777218\")) eq 1") of
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

'same-key-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           for $i in -100000 to 100000\n"
        "           let $f := xs:float($i)\n"
        "           let $m := map { $f : 1 }\n"
        "           where not(map:contains($m, $f)) or\n"
        "                 not(map:contains($m, $f cast as xs:decimal))\n"
        "           return error((), \"i=\" || $i)\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-010.xq"), Qry1),
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

'same-key-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           for $i in -100000 to 100000\n"
        "           let $d := xs:double($i)\n"
        "           let $m := map { $d : 1 }\n"
        "           where not(map:contains($m, $d)) or\n"
        "                 not(map:contains($m, $d cast as xs:decimal))\n"
        "           return error((), \"i=\" || $i)\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-011.xq"), Qry1),
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

'same-key-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           for $i in -100000 to 100000\n"
        "           let $m := map { $i : 1 }\n"
        "           where not(map:contains($m, $i)) or\n"
        "                 not(map:contains($m, $i cast as xs:decimal))\n"
        "           return error((), \"i=\" || $i)\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-012.xq"), Qry1),
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

'same-key-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $without_tz := xs:dateTime('2015-04-08T01:30:00') \n"
        "           let $with_tz := adjust-dateTime-to-timezone($without_tz, implicit-timezone())\n"
        "           let $keys := (xs:dateTime('2015-04-08T02:30:00'), $without_tz, $with_tz)\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-013.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?1) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?1?(xs:dateTime('2015-04-08T02:30:00')) eq 1"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?2) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?3) lt 3") of
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

'same-key-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $without_tz := xs:date('2015-04-08') \n"
        "           let $with_tz := adjust-date-to-timezone($without_tz, implicit-timezone())\n"
        "           let $keys := (xs:date('2015-04-09'), $without_tz, $with_tz)\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-014.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?1) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?1?(xs:date('2015-04-08')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?2) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?3) lt 3") of
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

'same-key-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $without_tz := xs:time('01:30:00') \n"
        "           let $with_tz := adjust-time-to-timezone($without_tz, implicit-timezone())\n"
        "           let $keys := (xs:time('02:30:00'), $without_tz, $with_tz)\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-015.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?1) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?1?(xs:time('02:30:00')) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?2) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?3) lt 3") of
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

'same-key-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())\n"
        "           let $keys := ($date cast as xs:gYear, xs:gYear(\"2015\"), xs:gYear(\"2014\"))\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-016.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?(1)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(1)?(xs:gYear('2015')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(2)) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(3)) lt 3") of
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

'same-key-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())\n"
        "           let $keys := ($date cast as xs:gYearMonth, xs:gYearMonth(\"2015-10\"), xs:gYearMonth(\"2015-11\"))\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-017.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?(1)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(1)?(xs:gYearMonth('2015-10')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(2)) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(3)) lt 3") of
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

'same-key-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())\n"
        "           let $keys := ($date cast as xs:gMonth, xs:gMonth(\"--10\"), xs:gMonth(\"--11\"))\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-018.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?(1)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(1)?(xs:gMonth('--10')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(2)) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(3)) lt 3") of
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

'same-key-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())\n"
        "           let $keys := ($date cast as xs:gMonthDay, xs:gMonthDay(\"--10-10\"), xs:gMonthDay(\"--11-11\"))\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-019.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?(1)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(1)?(xs:gMonthDay('--10-10')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(2)) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(3)) lt 3") of
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

'same-key-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "           let $date := adjust-date-to-timezone(xs:date(\"2015-10-10\"), implicit-timezone())\n"
        "           let $keys := ($date cast as xs:gDay, xs:gDay(\"---10\"), xs:gDay(\"---11\"))\n"
        "           return [\n"
        "               map:merge($keys ! map:entry(., position())),\n"
        "               distinct-values($keys),\n"
        "               for $k in $keys group by $k return $k             \n"
        "           ]\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-020.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result?(1)) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(1)?(xs:gDay('---10')) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(2)) lt 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result?(3)) lt 3") of
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

'same-key-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map {\n"
        "               fn:true() : 1,\n"
        "               fn:false() : 2,\n"
        "               xs:hexBinary(\"ff\") : 3,\n"
        "               xs:base64Binary(xs:hexBinary(\"ff\")) : 4,\n"
        "               xs:duration(\"P12M\") : 5,\n"
        "               QName((), \"abc\") : 6,\n"
        "               QName(\"http://example.org\", \"abc\") : 7\n"
        "            }\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-021.xq"), Qry1),
            xqerl:run(Mod)
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
                    case xqerl_test:assert(Res, "map:size($result) eq 7") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(fn:true()) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(fn:false()) eq 2") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:hexBinary(\"ff\")) eq 3") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?(xs:base64Binary(xs:hexBinary(\"ff\"))) eq 4"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(xs:duration(\"P12M\")) eq 5") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result?(QName((), \"abc\")) eq 6") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?(QName(\"http://example.org\", \"abc\")) eq 7"
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

'same-key-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $ns := \"http://example.org\",\n"
        "           $keys := (QName($ns, \"foo\"), QName($ns, \"ns:foo\"), QName($ns, \"ns2:foo\"))\n"
        "          return\n"
        "             map:merge($keys ! map:entry(., position()), map{\"duplicates\":\"use-last\"})\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-022.xq"), Qry1),
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
                    case xqerl_test:assert(Res, "map:size($result) eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result?(QName(\"http://example.org\",\"foo\")) eq 3"
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

'same-key-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $keys :=\n"
        "           let $range := 48 to 122\n"
        "           for $c1 in $range, $c2 in $range, $c3 in $range\n"
        "           return codepoints-to-string(($c1, $c2, $c3))\n"
        "         \n"
        "         let $map := \n"
        "           map:merge(($keys,$keys) ! map:entry(.,.))\n"
        "         \n"
        "         return\n"
        "           map:size($map) eq count($keys) and \n"
        "           (\n"
        "             every $key in $keys \n"
        "             satisfies \n"
        "               $map($key) eq $key and \n"
        "               not(map:contains(map:remove($map, $key), $key)) and\n"
        "               map:get(map:put($map, $key, \"x\"), $key) eq \"x\"      \n"
        "           )\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-023.xq"), Qry1),
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

'same-key-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $keys :=\n"
        "           let $range := 48 to 122\n"
        "           for $c1 in $range, $c2 in $range\n"
        "           let $i := $c1*1000 + $c2\n"
        "           return (\n"
        "             codepoints-to-string(($c1, $c2)),\n"
        "             switch($i mod 3)\n"
        "               case 0 return xs:integer($i)\n"
        "               case 1 return xs:decimal($i)\n"
        "               case 2 return xs:double($i)\n"
        "               default return error()\n"
        "           )\n"
        "\n"
        "         let $map :=\n"
        "           map:merge(($keys,$keys) ! map:entry(.,.), map{\"duplicates\":\"use-last\"})\n"
        "         \n"
        "         return\n"
        "           map:size($map) eq count($keys) and\n"
        "           (\n"
        "             every $key in $keys\n"
        "             satisfies\n"
        "               $map($key) eq $key and\n"
        "               not(map:contains(map:remove($map, $key), $key)) and\n"
        "               map:get(map:put($map, $key, \"x\"), $key) eq \"x\"\n"
        "           )\n"
        "         \n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-024.xq"), Qry1),
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

'same-key-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $keys := (1 to 10000) ! xs:float(1 div .)\n"
        "         let $map := map:merge(\n"
        "           $keys ! (\n"
        "              map:entry(.,.), \n"
        "              map:entry(-.,-.)\n"
        "           )\n"
        "         )\n"
        "         return \n"
        "            map:size($map) eq 20000 and\n"
        "            (\n"
        "             every $key in $keys \n"
        "             satisfies $map($key) eq $key and\n"
        "                       $map(xs:double($key)) eq $key and\n"
        "                       $map(xs:decimal($key)) eq $key\n"
        "            )\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-025.xq"), Qry1),
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

'same-key-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:type($n) {\n"
        "            if ($n instance of xs:integer) then \"integer\"\n"
        "            else if ($n instance of xs:double) then \"double\" \n"
        "            else if ($n instance of xs:float) then \"float\"\n"
        "            else error()\n"
        "         };\n"
        "\n"
        "         let $values := (\n"
        "           xs:integer(\"9223372036854773760\"), xs:double(\"9.223372036854774E18\"), \n"
        "           xs:integer(\"9223372036854773761\"),\n"
        "           xs:integer(\"9223372036854774784\"), xs:double(\"9.223372036854775E18\"), \n"
        "           xs:integer(\"9223372036854774785\"),\n"
        "           xs:integer(\"9223372036854775808\"), xs:double(\"9.223372036854776E18\"), xs:float(\"9.223372E18\"), \n"
        "           xs:integer(\"9223372036854775809\"),\n"
        "           xs:integer(\"9223372036854777856\"), xs:double(\"9.223372036854778E18\")\n"
        "         )\n"
        "         let $m := map:merge(\n"
        "                     for $i in $values\n"
        "                     return\n"
        "                       map:entry($i,$i)\n"
        "                   , map{\"duplicates\":\"use-last\"})\n"
        "         let $contents := \n"
        "            string-join(for $v at $p in $values return\n"
        "              ($p || \" $m(\" || local:type($v) || \") == \" || local:type($m($v))), \n"
        "              \", \"\n"
        "            )\n"
        "         return\n"
        "            (\"Size: \" || map:size($m) || \", \" || $contents)\n"
        "       ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-026.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_string_value(
                            Res,
                            "Size: 7, 1 $m(integer) == double, 2 $m(double) == double, 3 $m(integer) == integer, 4 $m(integer) == double, 5 $m(double) == double, 6 $m(integer) == integer, 7 $m(integer) == float, 8 $m(double) == float, 9 $m(float) == float, 10 $m(integer) == integer, 11 $m(integer) == double, 12 $m(double) == double"
                        )
                    of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FORG0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FORG0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'same-key-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map{ xs:time('17:00:00Z'):1, xs:time('12:00:00-05:00'):2 }\n"
        "        ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-027.xq"), Qry1),
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

'same-key-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            map{ xs:time('17:00:00Z'):1,\n"
        "                xs:time('17:00:01Z'):1,\n"
        "                xs:time('17:00:02Z'):1,\n"
        "                xs:time('17:00:03Z'):1,\n"
        "                xs:time('17:00:04Z'):1,\n"
        "                xs:time('17:00:05Z'):1,\n"
        "                xs:time('17:00:06Z'):1,\n"
        "                xs:time('17:00:07Z'):1,\n"
        "                xs:time('17:00:08Z'):1,\n"
        "                xs:time('17:00:09Z'):1,\n"
        "                xs:time('17:00:10Z'):1,\n"
        "                xs:time('17:00:11Z'):1,\n"
        "                xs:time('17:00:12Z'):1,\n"
        "                xs:time('17:00:13Z'):1,\n"
        "                xs:time('17:00:14Z'):1,\n"
        "                xs:time('17:00:15Z'):1,\n"
        "                xs:time('17:00:16Z'):1,\n"
        "                xs:time('17:00:17Z'):1,\n"
        "                xs:time('17:00:18Z'):1,\n"
        "                xs:time('17:00:19Z'):1,\n"
        "                xs:time('17:00:20Z'):1,           \n"
        "                xs:time('12:00:00-05:00'):2 }\n"
        "        ",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "same-key-028.xq"), Qry1),
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
