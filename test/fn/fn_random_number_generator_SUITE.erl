-module('fn_random_number_generator_SUITE').

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

-export(['fn-random-number-generator-1'/1]).
-export(['fn-random-number-generator-2'/1]).
-export(['fn-random-number-generator-3'/1]).
-export(['fn-random-number-generator-4'/1]).
-export(['fn-random-number-generator-5'/1]).
-export(['fn-random-number-generator-6'/1]).
-export(['fn-random-number-generator-7'/1]).
-export(['fn-random-number-generator-8'/1]).
-export(['fn-random-number-generator-9'/1]).
-export(['fn-random-number-generator-10'/1]).
-export(['fn-random-number-generator-11'/1]).
-export(['fn-random-number-generator-12'/1]).
-export(['fn-random-number-generator-13'/1]).
-export(['fn-random-number-generator-14'/1]).
-export(['fn-random-number-generator-15'/1]).
-export(['fn-random-number-generator-16'/1]).
-export(['fn-random-number-generator-17'/1]).
-export(['fn-random-number-generator-18'/1]).
-export(['fn-random-number-generator-19'/1]).
-export(['fn-random-number-generator-20'/1]).
-export(['fn-random-number-generator-21'/1]).
-export(['fn-random-number-generator-22'/1]).
-export(['fn-random-number-generator-23'/1]).
-export(['fn-random-number-generator-24'/1]).
-export(['fn-random-number-generator-25'/1]).
-export(['fn-random-number-generator-26'/1]).
-export(['fn-random-number-generator-27'/1]).
-export(['fn-random-number-generator-28'/1]).
-export(['fn-random-number-generator-29'/1]).
-export(['fn-random-number-generator-30'/1]).
-export(['fn-random-number-generator-31'/1]).
-export(['fn-random-number-generator-32'/1]).
-export(['fn-random-number-generator-33'/1]).
-export(['fn-random-number-generator-34'/1]).
-export(['fn-random-number-generator-35'/1]).
-export(['fn-random-number-generator-36'/1]).
-export(['fn-random-number-generator-37'/1]).
-export(['fn-random-number-generator-38'/1]).
-export(['fn-random-number-generator-39'/1]).
-export(['fn-random-number-generator-40'/1]).
-export(['fn-random-number-generator-41'/1]).
-export(['fn-random-number-generator-42'/1]).
-export(['fn-random-number-generator-43'/1]).
-export(['fn-random-number-generator-44'/1]).

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
            'fn-random-number-generator-1',
            'fn-random-number-generator-2',
            'fn-random-number-generator-3',
            'fn-random-number-generator-4',
            'fn-random-number-generator-5',
            'fn-random-number-generator-6',
            'fn-random-number-generator-7',
            'fn-random-number-generator-8',
            'fn-random-number-generator-9',
            'fn-random-number-generator-10',
            'fn-random-number-generator-11',
            'fn-random-number-generator-12',
            'fn-random-number-generator-13',
            'fn-random-number-generator-14',
            'fn-random-number-generator-15',
            'fn-random-number-generator-16',
            'fn-random-number-generator-17',
            'fn-random-number-generator-18',
            'fn-random-number-generator-19',
            'fn-random-number-generator-20',
            'fn-random-number-generator-21',
            'fn-random-number-generator-22',
            'fn-random-number-generator-23'
        ]},
        {group_1, [parallel], [
            'fn-random-number-generator-24',
            'fn-random-number-generator-25',
            'fn-random-number-generator-26',
            'fn-random-number-generator-27',
            'fn-random-number-generator-28',
            'fn-random-number-generator-29',
            'fn-random-number-generator-30',
            'fn-random-number-generator-31',
            'fn-random-number-generator-32',
            'fn-random-number-generator-33',
            'fn-random-number-generator-34',
            'fn-random-number-generator-35',
            'fn-random-number-generator-36',
            'fn-random-number-generator-37',
            'fn-random-number-generator-38',
            'fn-random-number-generator-39',
            'fn-random-number-generator-40',
            'fn-random-number-generator-41',
            'fn-random-number-generator-42',
            'fn-random-number-generator-43',
            'fn-random-number-generator-44'
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

'fn-random-number-generator-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-1.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, item())") of
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

'fn-random-number-generator-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:double") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "random-number-generator()?number ge 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-3.xq"),
                Qry1
            ),
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

'fn-random-number-generator-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := random-number-generator()?number return ($r ge 0 and $r lt 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-4.xq"),
                Qry1
            ),
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

'fn-random-number-generator-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := random-number-generator()?number return ($r lt 0 or $r ge 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?next()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-6.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, item())") of
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

'fn-random-number-generator-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?next()?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:double") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := fn:random-number-generator()?next()?number return ($r ge 0 and $r lt 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-8.xq"),
                Qry1
            ),
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

'fn-random-number-generator-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := fn:random-number-generator()?next()?number return ($r lt 0 or $r ge 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator(23482)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-10.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, item())") of
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

'fn-random-number-generator-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator(0000)?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:double") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "random-number-generator(3147)?number ge 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-12.xq"),
                Qry1
            ),
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

'fn-random-number-generator-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := random-number-generator(\"random\")?number return ($r ge 0 and $r lt 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-13.xq"),
                Qry1
            ),
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

'fn-random-number-generator-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator(0000)?next()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-14.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, item())") of
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

'fn-random-number-generator-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?next()?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:double") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $r := fn:random-number-generator()?next()?number return ($r ge 0 and $r lt 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-16.xq"),
                Qry1
            ),
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

'fn-random-number-generator-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?permute(1 to 100)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "1 to 100") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?permute((\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "(\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\")") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "subsequence(fn:random-number-generator()?permute((\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\")),2,5)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-19.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result) eq 5") of
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

'fn-random-number-generator-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:random-number-generator()?permute((\"a\",\"b\",\"c\",\"d\",\"e\",\"f\",\"g\")) => subsequence(2,5)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-20.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "xs:string*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result) eq 5") of
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

'fn-random-number-generator-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            declare namespace r=\"http://example.com/random/\";\n"
        "            declare %public function r:random-sequence($length as xs:integer) as xs:double* {\n"
        "  r:random-sequence($length, fn:random-number-generator())\n"
        "};\n"
        "declare %private function r:random-sequence($length as xs:integer, $G as map(xs:string, item())) {\n"
        "  if ($length eq 0)\n"
        "  then ()\n"
        "  else ($G?number, r:random-sequence($length - 1, $G?next()))\n"
        "};\n"
        "r:random-sequence(200)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-21.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "xs:double*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count($result) eq 200") of
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

'fn-random-number-generator-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:random-sequence($length as xs:integer) as xs:double* {\n"
        "         local:random-sequence($length, fn:random-number-generator())\n"
        "         };\n"
        "         declare function local:random-sequence($length as xs:integer, $G as map(xs:string, item())) {\n"
        "         if ($length eq 0)\n"
        "         then ()\n"
        "         else ($G?number, local:random-sequence($length - 1, $G?next()))\n"
        "         };\n"
        "         \n"
        "         let $r := local:random-sequence(200)\n"
        "         \n"
        "         return if (not(count(distinct-values($r)) >= 0.5*count($r)))\n"
        "         then fn:false()\n"
        "         else if (not(not(deep-equal($r, fn:sort($r)))))\n"
        "         then fn:false()\n"
        "         else if (not(count($r[. lt 0.5]) > 0.2*count($r) and count($r[. gt 0.5]) > 0.2*count($r)))\n"
        "         then fn:false()\n"
        "         else fn:true()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-22.xq"),
                Qry1
            ),
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

'fn-random-number-generator-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $G := fn:random-number-generator(fn:current-dateTime()) return deep-equal($G?permute(1 to 100), $G?next()?permute(1 to 100))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-23.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(fn:random-number-generator(fn:current-dateTime())?permute(1 to 100), fn:random-number-generator(fn:current-dateTime())?permute(1 to 100))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-24.xq"),
                Qry1
            ),
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

'fn-random-number-generator-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(fn:random-number-generator()?permute(1 to 100), fn:random-number-generator()?permute(1 to 100))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-25.xq"),
                Qry1
            ),
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

'fn-random-number-generator-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(fn:random-number-generator(0)?permute(1 to 100), fn:random-number-generator(1)?permute(1 to 100))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-26.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator(xs:double('NaN'))?permute(1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-27.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'fn-random-number-generator-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator('a')?permute((1 to 100)[. lt 0])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-28.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'fn-random-number-generator-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map:keys(fn:random-number-generator('a'))",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-29.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert(Res, "$result = 'next'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = 'number'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result = 'permute'") of
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

'fn-random-number-generator-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator('a')?next => fn:apply([]) => fn:apply([\"number\"])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-30.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:double") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "            declare function local:test($f as function(*)) as xs:integer {\n"
        "               count($f('zzz'))\n"
        "            };\n"
        "            local:test(fn:random-number-generator())\n"
        "            ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-31.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-32.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, item())") of
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

'fn-random-number-generator-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( () )?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-33.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:double") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-random-number-generator-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "random-number-generator()?number eq\n"
        "              random-number-generator( () )?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-34.xq"),
                Qry1
            ),
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

'fn-random-number-generator-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?next",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-35.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "function(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function() as map(xs:string, item())") of
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

'fn-random-number-generator-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( () )?next",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-36.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "function(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function() as map(xs:string, item())") of
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

'fn-random-number-generator-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( 0 )?next",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-37.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "function(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function() as map(xs:string, item())") of
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

'fn-random-number-generator-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( () )?next()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-38.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "map(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "map(xs:string, item())") of
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

'fn-random-number-generator-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:random-number-generator()?next()?number eq\n"
        "              fn:random-number-generator( () )?next()?number",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-39.xq"),
                Qry1
            ),
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

'fn-random-number-generator-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator()?permute",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-40.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "function(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function(item()*) as item()*") of
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

'fn-random-number-generator-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( () )?permute",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-41.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "function(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function(item()*) as item()*") of
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

'fn-random-number-generator-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:random-number-generator( 0 )?permute",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-42.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert_type(Res, "function(*)") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "function(item()*) as item()*") of
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

'fn-random-number-generator-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(fn:random-number-generator()?permute(1 to 100),\n"
        "                         fn:random-number-generator( () )?permute(1 to 100))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-43.xq"),
                Qry1
            ),
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

'fn-random-number-generator-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fold-left(1 to 10, random-number-generator(), \n"
        "                function($z, $i){ head($z)('next')(), tail($z), head($z)('number')}) => tail()\n"
        "        ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-random-number-generator-44.xq"),
                Qry1
            ),
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
                    case xqerl_test:assert(Res, "count($result) = 10") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "count(distinct-values($result)) ge 9") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_type(Res, "xs:double+") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "every $x in $result satisfies ($x ge 0 and $x lt 1)"
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
