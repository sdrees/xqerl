-module('fn_sort_SUITE').

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

-export(['fn-sort-1'/1]).
-export(['fn-sort-2'/1]).
-export(['fn-sort-3'/1]).
-export(['fn-sort-4'/1]).
-export(['fn-sort-5'/1]).
-export(['fn-sort-6'/1]).
-export(['fn-sort-7'/1]).
-export(['fn-sort-8'/1]).
-export(['fn-sort-9'/1]).
-export(['fn-sort-10'/1]).
-export(['fn-sort-11'/1]).
-export(['fn-sort-12'/1]).
-export(['fn-sort-13'/1]).
-export(['fn-sort-14'/1]).
-export(['fn-sort-15'/1]).
-export(['fn-sort-16'/1]).
-export(['fn-sort-17'/1]).
-export(['fn-sort-18'/1]).
-export(['fn-sort-19'/1]).
-export(['fn-sort-20'/1]).
-export(['fn-sort-21'/1]).
-export(['fn-sort-22'/1]).
-export(['fn-sort-frac-1'/1]).
-export(['fn-sort-str-1'/1]).
-export(['fn-sort2-str-1'/1]).
-export(['fn-sort2-str-2'/1]).
-export(['fn-sort-error-1'/1]).
-export(['fn-sort-error-2'/1]).
-export(['fn-sort-error-3'/1]).
-export(['fn-sort-error-4'/1]).
-export(['fn-sort-spec-1'/1]).
-export(['fn-sort-spec-1b'/1]).
-export(['fn-sort-spec-2'/1]).
-export(['fn-sort-spec-4'/1]).
-export(['fn-sort-spec-5'/1]).
-export(['fn-sort-collation-1'/1]).
-export(['fn-sort-collation-2'/1]).
-export(['fn-sort-collation-3'/1]).
-export(['fn-sort-collation-4'/1]).
-export(['fn-sort-collation-5'/1]).
-export(['fn-sort-collation-6'/1]).
-export(['fn-sort-collation-7'/1]).
-export(['fn-sort-collation-8'/1]).

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
    __BaseDir = filename:join(TD, "fn"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-sort-1',
            'fn-sort-2',
            'fn-sort-3',
            'fn-sort-4',
            'fn-sort-5',
            'fn-sort-6',
            'fn-sort-7',
            'fn-sort-8',
            'fn-sort-9',
            'fn-sort-10',
            'fn-sort-11',
            'fn-sort-12',
            'fn-sort-13',
            'fn-sort-14',
            'fn-sort-15',
            'fn-sort-16',
            'fn-sort-17',
            'fn-sort-18',
            'fn-sort-19',
            'fn-sort-20',
            'fn-sort-21',
            'fn-sort-22',
            'fn-sort-frac-1'
        ]},
        {group_1, [parallel], [
            'fn-sort-str-1',
            'fn-sort2-str-1',
            'fn-sort2-str-2',
            'fn-sort-error-1',
            'fn-sort-error-2',
            'fn-sort-error-3',
            'fn-sort-error-4',
            'fn-sort-spec-1',
            'fn-sort-spec-1b',
            'fn-sort-spec-2',
            'fn-sort-spec-4',
            'fn-sort-spec-5',
            'fn-sort-collation-1',
            'fn-sort-collation-2',
            'fn-sort-collation-3',
            'fn-sort-collation-4',
            'fn-sort-collation-5',
            'fn-sort-collation-6',
            'fn-sort-collation-7',
            'fn-sort-collation-8'
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

'fn-sort-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:empty(fn:sort( () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-1.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (1, 2, 3) ) return (count($r) eq 3 and $r[1] eq 1 and $r[2] eq 2 and\n"
        "         $r[3] eq 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-2.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (3, 2, 1) ) return (count($r) eq 3 and $r[1] eq 1 and $r[2] eq 2 and\n"
        "         $r[3] eq 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-3.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := fn:sort( (1) ) return (count($r) eq 1 and $r[1] eq 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-4.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort(42) = 42",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-5.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := fn:sort( (1) ) return (count($r) eq 1 and $r[1] eq 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-6.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (1, 17) ) return (count($r) eq 2 and $r[1] eq 1 and $r[2] eq\n"
        "         17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-7.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (17, 1) ) return (count($r) eq 2 and $r[1] eq 1 and $r[2] eq\n"
        "         17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-8.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (17, 17) ) return (count($r) eq 2 and $r[1] eq 17 and $r[2] eq\n"
        "         17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-9.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (17, 5, 14) ) return (count($r) eq 3 and $r[1] eq 5 and $r[2] eq 14\n"
        "         and$r[3] eq 17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-10.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (4, 4, 4) ) return (count($r) eq 3 and $r[1] eq 4 and $r[2] eq 4 and\n"
        "         $r[3] eq 4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-11.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (17, 14, 5) ) return (count($r) eq 3 and $r[1] eq 5 and $r[2] eq 14\n"
        "         and $r[3] eq 17)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-12.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (-42, 14, 5, 6, 14, 0) ) return (count($r) eq 6 and $r[1] eq -42 and\n"
        "         $r[2] eq 0 and $r[3] eq 5 and $r[4] eq 6 and $r[5] eq 14 and $r[6] eq 14) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-13.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <turtles>\n"
        "          <name>Leonardo</name>\n"
        "          <name>Raphael</name>\n"
        "          <name>Donatello</name>\n"
        "          <name>Michelangelo</name>\n"
        "        </turtles>\n"
        "        !sort(*)!data()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "\"Donatello\", \"Leonardo\", \"Michelangelo\", \"Raphael\""
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         deep-equal(\n"
        "            sort(\n"
        "              (\n"
        "                [<e>a</e>, <e>b</e>],\n"
        "                [(<f>a</f>, <f>b</f>)],\n"
        "                [<g>a</g>, <g>b</g>],\n"
        "                \"A\",\n"
        "                <h><i><j>A</j></i></h>   \n"
        "              )\n"
        "            )\n"
        "            ,(\n"
        "                \"A\",\n"
        "                <h><i><j>A</j></i></h>,     \n"
        "                [<e>a</e>, <e>b</e>],\n"
        "                [(<f>a</f>, <f>b</f>)],\n"
        "                [<g>a</g>, <g>b</g>]  \n"
        "              )\n"
        "            )\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-15.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(\n"
        "         sort((\"b\", \"d\", <e>a</e>, \"c\", <f>e</f>))\n"
        "         ,(<e>a</e>, \"b\", \"c\", \"d\", <f>e</f>)\n"
        "         )\n"
        "         ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-16.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "          let $a := [xs:float(\"NaN\"), 1],     \n"
        "          $b := [xs:float(\"NaN\"), 2]\n"
        "          return     \n"
        "             sort(($a,$b,$a,$b))\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-17.xq"), Qry1),
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
                            "every $x in 1 to 4 satisfies deep-equal($result[$x]?1, xs:float(\"NaN\"))"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[1]?2 eq 1 and $result[2]?2 eq 1") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[3]?2 eq 2 and $result[4]?2 eq 2") of
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

'fn-sort-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( (1, [1, 2]) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, [1, 2])") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( ([1, 2], 1) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(1, [1, 2])") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( ([()], 1) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "([()], 1)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( (1, [()]) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "([()], 1)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:sort( (map{\"key\":1, \"value\":89}, map{\"key\":6, \"value\":21}, map{\"key\":2, \"value\":33}),\n"
        "         (), map:get(?, \"key\"))?value",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-22.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "89, 33, 21") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-frac-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (-4.2, 14.25, 5.99, 6, 14.24, 0) ) return (count($r) eq 6 and $r[1]\n"
        "         eq -4.2 and $r[2] eq 0 and $r[3] eq 5.99 and $r[4] eq 6 and $r[5] eq 14.24 and $r[6] eq\n"
        "         14.25) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-frac-1.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-str-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (\"boy\",\"for\",\"new\",\"chosen\",\"black\",\"pope\") ) return (count($r) eq 6\n"
        "         and $r[1] eq \"black\" and $r[2] eq \"boy\" and $r[3] eq \"chosen\" and $r[4] eq \"for\" and $r[5]\n"
        "         eq \"new\" and $r[6] eq \"pope\" ) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-str-1.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort2-str-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (\"boy\",\"for\",\"new\",\"chosen\",\"black\",\"pope\"), (), fn:data#1 ) return\n"
        "         (count($r) eq 6 and $r[1] eq \"black\" and $r[2] eq \"boy\" and $r[3] eq \"chosen\" and $r[4] eq\n"
        "         \"for\" and $r[5] eq \"new\" and $r[6] eq \"pope\" ) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort2-str-1.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort2-str-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort( (\"boy\",\"for\",\"new\",\"chosen\",\"black\",\"pope\"), (), function($input as\n"
        "         xs:anyAtomicType *) as item()* { fn:data($input) } ) return (count($r) eq 6 and $r[1] eq\n"
        "         \"black\" and $r[2] eq \"boy\" and $r[3] eq \"chosen\" and $r[4] eq \"for\" and $r[5] eq \"new\" and\n"
        "         $r[6] eq \"pope\" ) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort2-str-2.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-error-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( (1, \"a\") )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-error-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-error-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( (map{\"key\":1}, map{\"key\":\"a\"}), (), map:get(?, \"key\"))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-error-2.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-error-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( (1, xs:untypedAtomic(\"2\")) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-error-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-error-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sort( (1, <a>1</a>) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-error-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-spec-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort((1, 4, 6, 5, 3), (), fn:data#1 ) return (count($r) eq 5 and $r[1] eq 1\n"
        "         and $r[2] eq 3 and $r[3] eq 4 and $r[4] eq 5 and $r[5] eq 6 ) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-spec-1.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-spec-1b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort((10, 4, 6, 5, 3), (), fn:data#1 ) return (count($r) eq 5 and $r[1] eq\n"
        "         3 and $r[2] eq 4 and $r[3] eq 5 and $r[4] eq 6 and $r[5] eq 10 ) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-spec-1b.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-spec-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $r := fn:sort((1, -2, 5, 10, -10, 10, 8), (), fn:abs#1) return (count($r) eq 7 and\n"
        "         $r[1] eq 1 and $r[2] eq -2 and $r[3] eq 5 and $r[4] eq 8 and $r[5] eq 10 and $r[6] eq -10\n"
        "         and $r[7] eq 10 ) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-spec-2.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-spec-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let\n"
        "	  $employees := (\n"
        "	    <emp><name><first>Reginald</first><last>Cawcutt</last></name></emp>,\n"
        "	    <emp><name><first>Hans</first><last>Gro&#xeb;r</last></name></emp>,\n"
        "	    <emp><name><first>Domingo</first><last>De Silveira</last></name></emp>,\n"
        "	    <emp><name><first>Keith</first><last>O'Brien</last></name></emp>,\n"
        "	    <emp><name><first>Susan</first><last>Cawcutt</last></name></emp>,\n"
        "	    <emp><name><first>Martin</first><last>Cawcutt</last></name></emp>\n"
        "	    ),\n"
        "	  $r := fn:sort($employees, default-collation(), function($emp) {$emp/name/last, $emp/name/first})\n"
        "	  return (count($r) eq 6\n"
        "	  and fn:data($r[1]/name/first) eq \"Martin\"\n"
        "	  and fn:data($r[2]/name/first) eq \"Reginald\"\n"
        "	  and fn:data($r[3]/name/first) eq \"Susan\"\n"
        "	  and fn:data($r[4]/name/first) eq \"Domingo\"\n"
        "	  and fn:data($r[5]/name/first) eq \"Hans\"\n"
        "	  and fn:data($r[6]/name/first) eq \"Keith\"\n"
        "	  )\n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-spec-4.xq"), Qry1),
            xqerl:run(Mod)
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

'fn-sort-spec-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let\n"
        "	  $employees := (\n"
        "	    <emp id='1'><name><last>Cawcutt</last></name></emp>,\n"
        "	    <emp id='2'><name><first>Hans</first><last>Gro&#xeb;r</last></name></emp>,\n"
        "	    <emp id='3'><name><first>Domingo</first><last>De Silveira</last></name></emp>,\n"
        "	    <emp id='4'><name><first>Keith</first><last>O'Brien</last></name></emp>,\n"
        "	    <emp id='5'><name><first>Susan</first><last>Cawcutt</last></name></emp>,\n"
        "	    <emp id='6'><name><first>Martin</first><last>Cawcutt</last></name></emp>,\n"
        "	    <emp id='7'><name><first>Martin</first><first>James</first><last>Cawcutt</last></name></emp>\n"
        "	    )\n"
        "	    return fn:sort($employees, default-collation(), function($emp) {$emp/name/last, $emp/name/first}) ! number(@id)\n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-sort-spec-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 6, 7, 5, 3, 2, 4") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";\n"
        "         fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"))\n"
        "     ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";\n"
        "         fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"), ())\n"
        "     ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default collation \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\";\n"
        "         fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"), (), string#1)\n"
        "     ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),\n"
        "         \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\")",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),\n"
        "         \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\", fn:string#1)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"blUE\", \"green\", \"ORanGE\", \"PINK\", \"Red\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),\n"
        "         \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:sort((\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\"),\n"
        "         \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", fn:string#1)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"ORanGE\", \"PINK\", \"Red\", \"blUE\", \"green\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-sort-collation-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:key($n as xs:integer) as xs:string {\n"
        "             (\"Red\", \"green\", \"blUE\", \"PINK\", \"ORanGE\")[$n]\n"
        "         };\n"
        "         fn:sort((1 to 5), \"http://www.w3.org/2010/09/qt-fots-catalog/collation/caseblind\", local:key#1)\n"
        "         ",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-sort-collation-8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3, 2, 5, 4, 1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
