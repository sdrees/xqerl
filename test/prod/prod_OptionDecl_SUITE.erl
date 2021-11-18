-module('prod_OptionDecl_SUITE').

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

-export(['optiondeclprolog-1'/1]).
-export(['optiondeclprolog-2'/1]).
-export(['K-OptionDeclarationProlog-1'/1]).
-export(['K-OptionDeclarationProlog-1b'/1]).
-export(['K-OptionDeclarationProlog-2'/1]).
-export(['K-OptionDeclarationProlog-3'/1]).
-export(['K-OptionDeclarationProlog-4'/1]).
-export(['K-OptionDeclarationProlog-5'/1]).
-export(['K-OptionDeclarationProlog-6'/1]).

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
    __BaseDir = filename:join(TD, "prod"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'optiondeclprolog-1',
            'optiondeclprolog-2',
            'K-OptionDeclarationProlog-1',
            'K-OptionDeclarationProlog-1b',
            'K-OptionDeclarationProlog-2',
            'K-OptionDeclarationProlog-3',
            'K-OptionDeclarationProlog-4',
            'K-OptionDeclarationProlog-5',
            'K-OptionDeclarationProlog-6'
        ]}
    ].

'optiondeclprolog-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace exq = \"http://example.org/XQueryImplementation\"; declare option exq:java-class \"math = java.lang.Math\"; \"aaa\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "optiondeclprolog-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "aaa") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'optiondeclprolog-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare option exq:java-class \"math = java.lang.Math\"; \"aaa\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "optiondeclprolog-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0081") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-OptionDeclarationProlog-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-OptionDeclarationProlog-1b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare option myopt \"option value\"; true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-OptionDeclarationProlog-1b.xq"),
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
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XQST0123") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0123 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
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

'K-OptionDeclarationProlog-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare(::)option(::)local:opt(::)\"option value\"(::); \n"
        "        declare(::)option(::)local:opt(::)\"option value\"(::); \n"
        "        declare(::)option(::)local:opt(::)\"option value\"(::); \n"
        "        declare(::)option(::)local:opt(::)\"option value\"(::); \n"
        "        declare(::)option(::)local:opt(::)\"option value\";1(::)eq(::)1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-OptionDeclarationProlog-2.xq"),
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

'K-OptionDeclarationProlog-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare(::)option(::)local:opt\"option value\"; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-OptionDeclarationProlog-3.xq"),
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

'K-OptionDeclarationProlog-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare(::)option(::)local:opt'option value'; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-OptionDeclarationProlog-4.xq"),
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

'K-OptionDeclarationProlog-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare option prefixnotdeclared:opt 'option value'; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-OptionDeclarationProlog-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0081") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-OptionDeclarationProlog-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare option localpartmissing: 'option value'; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-OptionDeclarationProlog-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
