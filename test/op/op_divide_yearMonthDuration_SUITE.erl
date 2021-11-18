-module('op_divide_yearMonthDuration_SUITE').

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

-export(['op-divide-yearMonthDuration2args-1'/1]).
-export(['op-divide-yearMonthDuration2args-2'/1]).
-export(['op-divide-yearMonthDuration2args-3'/1]).
-export(['op-divide-yearMonthDuration2args-4'/1]).
-export(['op-divide-yearMonthDuration2args-5'/1]).
-export(['op-divide-yearMonthDuration-1'/1]).
-export(['op-divide-yearMonthDuration-2'/1]).
-export(['op-divide-yearMonthDuration-3'/1]).
-export(['op-divide-yearMonthDuration-4'/1]).
-export(['op-divide-yearMonthDuration-5'/1]).
-export(['op-divide-yearMonthDuration-6'/1]).
-export(['op-divide-yearMonthDuration-7'/1]).
-export(['op-divide-yearMonthDuration-8'/1]).
-export(['op-divide-yearMonthDuration-9'/1]).
-export(['op-divide-yearMonthDuration-10'/1]).
-export(['op-divide-yearMonthDuration-11'/1]).
-export(['op-divide-yearMonthDuration-12'/1]).
-export(['op-divide-yearMonthDuration-13'/1]).
-export(['op-divide-yearMonthDuration-14'/1]).
-export(['op-divide-yearMonthDuration-15'/1]).
-export(['op-divide-yearMonthDuration-16'/1]).
-export(['op-divide-yearMonthDuration-17'/1]).
-export(['K-YearMonthDurationDivide-1'/1]).
-export(['K-YearMonthDurationDivide-2'/1]).
-export(['K-YearMonthDurationDivide-3'/1]).
-export(['K-YearMonthDurationDivide-4'/1]).
-export(['K-YearMonthDurationDivide-5'/1]).
-export(['K-YearMonthDurationDivide-6'/1]).
-export(['cbcl-divide-yearMonthDuration-001'/1]).
-export(['cbcl-divide-yearMonthDuration-002'/1]).
-export(['cbcl-divide-yearMonthDuration-003'/1]).

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
            'op-divide-yearMonthDuration2args-1',
            'op-divide-yearMonthDuration2args-2',
            'op-divide-yearMonthDuration2args-3',
            'op-divide-yearMonthDuration2args-4',
            'op-divide-yearMonthDuration2args-5',
            'op-divide-yearMonthDuration-1',
            'op-divide-yearMonthDuration-2',
            'op-divide-yearMonthDuration-3',
            'op-divide-yearMonthDuration-4',
            'op-divide-yearMonthDuration-5',
            'op-divide-yearMonthDuration-6',
            'op-divide-yearMonthDuration-7',
            'op-divide-yearMonthDuration-8',
            'op-divide-yearMonthDuration-9',
            'op-divide-yearMonthDuration-10',
            'op-divide-yearMonthDuration-11',
            'op-divide-yearMonthDuration-12',
            'op-divide-yearMonthDuration-13',
            'op-divide-yearMonthDuration-14',
            'op-divide-yearMonthDuration-15',
            'op-divide-yearMonthDuration-16',
            'op-divide-yearMonthDuration-17',
            'K-YearMonthDurationDivide-1'
        ]},
        {group_1, [parallel], [
            'K-YearMonthDurationDivide-2',
            'K-YearMonthDurationDivide-3',
            'K-YearMonthDurationDivide-4',
            'K-YearMonthDurationDivide-5',
            'K-YearMonthDurationDivide-6',
            'cbcl-divide-yearMonthDuration-001',
            'cbcl-divide-yearMonthDuration-002',
            'cbcl-divide-yearMonthDuration-003'
        ]}
    ].

'op-divide-yearMonthDuration2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:double(\"-1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P0M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1000Y6M\") div xs:double(\"-1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P0M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P2030Y12M\") div xs:double(\"-1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P0M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:double(\"0.1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P0M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P0Y0M\") div xs:double(\"1.7976931348623157E308\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration2args-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P0M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P2Y11M\") div 1.5)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1Y11M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") div 2.0)) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-2.xq"),
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

'op-divide-yearMonthDuration-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string((xs:yearMonthDuration(\"P20Y10M\") div 2.0)) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-3.xq"),
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

'op-divide-yearMonthDuration-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:string(xs:yearMonthDuration(\"P11Y04M\") div 2.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-4.xq"),
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

'op-divide-yearMonthDuration-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:string(xs:yearMonthDuration(\"P05Y08M\") div 2.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-5.xq"),
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

'op-divide-yearMonthDuration-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(xs:yearMonthDuration(\"P02Y09M\") div 2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:yearMonthDuration(\"P03Y08M\") div 2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1Y10M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P10Y01M\") div -2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P5Y") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-yearMonthDuration-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:yearMonthDuration(\"P01Y01M\") div 2.0)) and fn:string((xs:yearMonthDuration(\"P02Y03M\") div 2.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-9.xq"),
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

'op-divide-yearMonthDuration-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:yearMonthDuration(\"P05Y02M\") div 2.0)) or fn:string((xs:yearMonthDuration(\"P05Y03M\") div 2.0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-10.xq"),
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

'op-divide-yearMonthDuration-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:yearMonthDuration(\"P20Y11M\") div 2.0) div (xs:yearMonthDuration(\"P20Y11M\") div 2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-11.xq"),
                Qry1
            ),
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

'op-divide-yearMonthDuration-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string((xs:yearMonthDuration(\"P10Y11M\") div 2.0)) and (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-12.xq"),
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

'op-divide-yearMonthDuration-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P23Y11M\") div 2.0) eq xs:yearMonthDuration(\"P23Y11M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-13.xq"),
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

'op-divide-yearMonthDuration-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P21Y12M\") div 2.0) ne xs:yearMonthDuration(\"P08Y05M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-14.xq"),
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

'op-divide-yearMonthDuration-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P10Y01M\") div 2.0) le xs:yearMonthDuration(\"P17Y02M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-15.xq"),
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

'op-divide-yearMonthDuration-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:yearMonthDuration(\"P13Y09M\") div 2.0) ge xs:yearMonthDuration(\"P18Y02M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-16.xq"),
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

'op-divide-yearMonthDuration-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $i in (-2, -4, -10, -50, +50, +10, +4, +2) return (xs:yearMonthDuration(\"P5M\") div $i)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-yearMonthDuration-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P2M -P1M P0M P0M P0M P1M P1M P3M") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-YearMonthDurationDivide-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P3Y36M\") div 3 eq xs:yearMonthDuration(\"P2Y\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationDivide-1.xq"),
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

'K-YearMonthDurationDivide-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"-INF\") eq xs:yearMonthDuration(\"P0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationDivide-2.xq"),
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

'K-YearMonthDurationDivide-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"INF\") eq xs:yearMonthDuration(\"P0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationDivide-3.xq"),
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

'K-YearMonthDurationDivide-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P3Y36M\") div 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationDivide-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-YearMonthDurationDivide-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"NaN\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationDivide-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0005") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0005 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-YearMonthDurationDivide-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P3Y36M\") div xs:double(\"-0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-YearMonthDurationDivide-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-divide-yearMonthDuration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };\n"
        "        local:yearMonthDuration(2) div 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-divide-yearMonthDuration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-divide-yearMonthDuration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };\n"
        "        local:yearMonthDuration(2) div 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-divide-yearMonthDuration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P2Y") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-divide-yearMonthDuration-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:yearMonthDuration($years as xs:integer) as xs:yearMonthDuration { xs:yearMonthDuration(concat(\"P\", $years, \"Y\")) };\n"
        "        local:yearMonthDuration(768614336404564650) div 0.5",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-divide-yearMonthDuration-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
