-module('fn_apply_SUITE').

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

-export(['fn-apply-01'/1]).
-export(['fn-apply-02'/1]).
-export(['fn-apply-03'/1]).
-export(['fn-apply-04'/1]).
-export(['fn-apply-05'/1]).
-export(['fn-apply-06'/1]).
-export(['fn-apply-07'/1]).
-export(['fn-apply-08'/1]).
-export(['fn-apply-09'/1]).
-export(['fn-apply-10'/1]).
-export(['fn-apply-11'/1]).
-export(['fn-apply-12'/1]).
-export(['fn-apply-13'/1]).
-export(['fn-apply-14'/1]).
-export(['fn-apply-15'/1]).
-export(['fn-apply-16'/1]).

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
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-apply-01',
            'fn-apply-02',
            'fn-apply-03',
            'fn-apply-04',
            'fn-apply-05',
            'fn-apply-06',
            'fn-apply-07',
            'fn-apply-08',
            'fn-apply-09',
            'fn-apply-10',
            'fn-apply-11',
            'fn-apply-12',
            'fn-apply-13',
            'fn-apply-14',
            'fn-apply-15',
            'fn-apply-16'
        ]}
    ].

'fn-apply-01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "apply(abs#1, [-2])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-01.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-02'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "apply(true#0, array {})",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-02.xq"), Qry1),
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

'fn-apply-03'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "apply(string-join#1, [reverse(1 to 5) ! string()])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-03.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"54321\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-04'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $func := function($a,$b,$c) { $a + $b + $c }\n"
        "           , $args := [ 1, 2, 3 ]\n"
        "         return apply($func, $args)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-04.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "6") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-05'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:square($n as xs:integer) { $n * $n };\n"
        "         apply(local:square#1, [ 10 ])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-05.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "100") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-06'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         apply(substring('flower', ?, ?), [ 3, 2 ])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-06.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"ow\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-07'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function-lookup(xs:QName('fn:count'), 1)\n"
        "         return apply($f, [ ('one', 'two') ])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-07.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-08'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $a in 2 to 3\n"
        "         return\n"
        "         let $f := function-lookup(xs:QName('fn:concat'), $a)\n"
        "         return apply($f, array { 1 to $a })\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-08.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "\"12\", \"123\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-09'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $name in (true#0, count#1, empty#1, concat#2) \n"
        "         return\n"
        "         let $arity := function-arity($name)\n"
        "           , $args := array { (1 to $arity) ! 'X' }\n"
        "         return apply($name, $args)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-09.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "true(), 1, false(), \"XX\"") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         for $f in (\n"
        "           function($a) { $a },\n"
        "           function($a, $b) { $a + $b },\n"
        "           function($a, $b, $c) { $a + $b + $c }\n"
        "         )\n"
        "         return apply($f, array { 1 to function-arity($f) })\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 3, 6") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         data#1 => fn:apply([ [ 1 to 3 ] ])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 2, 3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "apply(false#0, [0])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAP0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAP0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "apply(string-length#1, [ ('a','b') ])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-13.xq"), Qry1),
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

'fn-apply-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         fn:apply(lower-case#1, [<a>ABC</a>])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"abc\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:l($x as xs:string){lower-case($x)};\n"
        "         declare function local:u($x as xs:string){upper-case($x)};\n"
        "         let $data := <a><b>Banana</b></a>\n"
        "         return apply(if (current-date() lt xs:date('1900-01-01')) then local:l#1 else local:u#1, [$data])\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"BANANA\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-apply-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "apply(if (current-date() lt xs:date('1900-01-01')) then abs#1 else round#1, [-2])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-apply-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-2") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
