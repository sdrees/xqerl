-module('fn_trace_SUITE').

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

-export(['fn-trace-1'/1]).
-export(['fn-trace-2'/1]).
-export(['fn-trace-3'/1]).
-export(['fn-trace-4'/1]).
-export(['fn-trace-5'/1]).
-export(['fn-trace-6'/1]).
-export(['fn-trace-7'/1]).
-export(['fn-trace-8'/1]).
-export(['fn-trace-9'/1]).
-export(['fn-trace-10'/1]).
-export(['fn-trace-11'/1]).
-export(['fn-trace-12'/1]).
-export(['fn-trace-13'/1]).
-export(['fn-trace-14'/1]).
-export(['fn-trace-15'/1]).
-export(['fn-trace-16'/1]).
-export(['fn-trace-17'/1]).
-export(['fn-trace-18'/1]).
-export(['fn-trace-19'/1]).
-export(['fn-trace-20'/1]).
-export(['fn-trace-21'/1]).
-export(['fn-trace-22'/1]).
-export(['fn-trace-23'/1]).
-export(['fn-trace-24'/1]).
-export(['K-TraceFunc-1'/1]).
-export(['K-TraceFunc-2'/1]).
-export(['K-TraceFunc-3'/1]).
-export(['K-TraceFunc-4'/1]).
-export(['K-TraceFunc-5'/1]).
-export(['K-TraceFunc-6'/1]).

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
            'fn-trace-1',
            'fn-trace-2',
            'fn-trace-3',
            'fn-trace-4',
            'fn-trace-5',
            'fn-trace-6',
            'fn-trace-7',
            'fn-trace-8',
            'fn-trace-9',
            'fn-trace-10',
            'fn-trace-11',
            'fn-trace-12',
            'fn-trace-13',
            'fn-trace-14',
            'fn-trace-15',
            'fn-trace-16',
            'fn-trace-17',
            'fn-trace-18',
            'fn-trace-19',
            'fn-trace-20',
            'fn-trace-21',
            'fn-trace-22',
            'fn-trace-23'
        ]},
        {group_1, [parallel], [
            'fn-trace-24',
            'K-TraceFunc-1',
            'K-TraceFunc-2',
            'K-TraceFunc-3',
            'K-TraceFunc-4',
            'K-TraceFunc-5',
            'K-TraceFunc-6'
        ]}
    ].

environment('works-mod', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'fn-trace-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:trace()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $var := xs:integer(\"123\") \n"
        "         return fn:trace($var,\"The Value of $var is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "123") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (1,2,3,4,5) return fn:trace($var + 1,\"The Value of $var + 1 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2 3 4 5 6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (2,3,4,5) return fn:trace($var - 1,\"The Value of $var - 1 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (2,3,4,5) return fn:trace($var * 2 ,\"The Value of $var * 2 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "4 6 8 10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (2,4,6,8) return fn:trace($var div 2 ,\"The Value of $var div 2 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (2,4,6,8) return fn:trace($var idiv 2 ,\"The Value of $var idiv 2 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (2,4,6,8) return fn:trace($var mod 2 ,\"The Value of $var mod 2 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0 0 0 0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $var1 in (2,4,6,8), $var2 in (3 + $var1) - (4 * $var1) \n"
        "        return fn:trace($var1 + $var2 ,\"The Value of $var 1 + $var2 is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1 -5 -9 -13") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $var in (\"aa\",\"bb\",\"cc\",\"dd\",\"ee\") return fn:trace(fn:concat($var,$var) ,\"The Value of concat($var,$var) is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "aaaa bbbb cccc dddd eeee") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $var in (/works//hours) return fn:trace(($var div 2) ,\"The Value of hours div/2 is: \")",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-11.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(Res, "20 35 10 40 10 20 10 15 6 20 40 10 10 10 20 40")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((for $var in (/works//hours) return $var + $var) ,\"The Value of the given expression is: \")",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-12.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "80 140 40 160 40 80 40 60 24 80 160 40 40 40 80 160"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:trace((fn:avg((1,3,3,4,5)) * 2) ,\"The Value of 'fn:avg((1,3,3,4,5)) * 2' is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "6.4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((for $var in (1.1,2.2,3.3,4.4,5.5) return xs:integer($var)) ,\"The Value of 'for $var in (1.1,2.2,3.3,4.4,5.5) return xs:float($var)' is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((fn:trace((2+2),\"The value of '2 + 2' is:\" )) ,\"The Value of 'fn:trace(2+2)' is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((fn:count((1,2,-3,-4,5)) * 2) ,\"The Value of 'fn:count(1,2,-3,-4,5)) * 2' is: \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((for $var in (fn:true(),fn:false(),fn:true()) return $var and fn:true()) ,\"The value of 'for $var in (fn:true(),fn:false(),fn:true() return $var and fn:true()' is:\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true false true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((for $var in (fn:true(),fn:false(),fn:true()) return $var or fn:true()) ,\"The value of 'for $var in (fn:true(),fn:false(),fn:true() return $var or fn:true()' is:\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true true true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:trace(() ,\"The value of the empty sequence is:\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-19.xq"), Qry1),
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
                    case xqerl_test:assert_string_value(Res, "0") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'fn-trace-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:trace(\"\" ,\"The value of the zero length string is:\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:trace((for $var in (fn:upper-case(\"a\"),fn:lower-case(\"B\")) return (fn:lower-case($var),fn:upper-case($var))) ,\"The value of the complex expression on the other argument is:\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a A b B") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:trace(1 to 10)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1 to 10") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:trace([1 to 10])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-23.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[1 to 10]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-trace-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:trace((map{'x':1,'y':2}, map{}))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-trace-24.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{'x':1,'y':2}, map{}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TraceFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "trace()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TraceFunc-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TraceFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XP30 XQ10 XQ30"}.

'K-TraceFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "trace(., \"message\", \"wrong parameter\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TraceFunc-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TraceFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "trace(\"a string\", \"trace message\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TraceFunc-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a string") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-TraceFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(trace((), \"trace message\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TraceFunc-5.xq"), Qry1),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0005") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0005 " ++ binary_to_list(F)};
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

'K-TraceFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(trace(error(), \"trace message\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-TraceFunc-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOER0000") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOER0000 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
