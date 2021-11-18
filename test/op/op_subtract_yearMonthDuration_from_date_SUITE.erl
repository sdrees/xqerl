-module('op_subtract_yearMonthDuration_from_date_SUITE').

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

-export(['op-subtract-yearMonthDuration-from-date2args-1'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-2'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-3'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-4'/1]).
-export(['op-subtract-yearMonthDuration-from-date2args-5'/1]).
-export(['op-subtract-yearMonthDuration-from-date-1'/1]).
-export(['op-subtract-yearMonthDuration-from-date-2'/1]).
-export(['op-subtract-yearMonthDuration-from-date-3'/1]).
-export(['op-subtract-yearMonthDuration-from-date-4'/1]).
-export(['op-subtract-yearMonthDuration-from-date-5'/1]).
-export(['op-subtract-yearMonthDuration-from-date-6'/1]).
-export(['op-subtract-yearMonthDuration-from-date-7'/1]).
-export(['op-subtract-yearMonthDuration-from-date-8'/1]).
-export(['op-subtract-yearMonthDuration-from-date-9'/1]).
-export(['op-subtract-yearMonthDuration-from-date-10'/1]).
-export(['op-subtract-yearMonthDuration-from-date-12'/1]).
-export(['op-subtract-yearMonthDuration-from-date-13'/1]).
-export(['op-subtract-yearMonthDuration-from-date-14'/1]).
-export(['op-subtract-yearMonthDuration-from-date-15'/1]).
-export(['op-subtract-yearMonthDuration-from-date-16'/1]).
-export(['op-subtract-yearMonthDuration-from-date-17'/1]).
-export(['op-subtract-yearMonthDuration-from-date-18'/1]).
-export(['K-DateSubtractYMD-1'/1]).
-export(['cbcl-subtract-yearMonthDuration-from-date-001'/1]).
-export(['cbcl-subtract-yearMonthDuration-from-date-002'/1]).

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
            'op-subtract-yearMonthDuration-from-date2args-1',
            'op-subtract-yearMonthDuration-from-date2args-2',
            'op-subtract-yearMonthDuration-from-date2args-3',
            'op-subtract-yearMonthDuration-from-date2args-4',
            'op-subtract-yearMonthDuration-from-date2args-5',
            'op-subtract-yearMonthDuration-from-date-1',
            'op-subtract-yearMonthDuration-from-date-2',
            'op-subtract-yearMonthDuration-from-date-3',
            'op-subtract-yearMonthDuration-from-date-4',
            'op-subtract-yearMonthDuration-from-date-5',
            'op-subtract-yearMonthDuration-from-date-6',
            'op-subtract-yearMonthDuration-from-date-7',
            'op-subtract-yearMonthDuration-from-date-8',
            'op-subtract-yearMonthDuration-from-date-9',
            'op-subtract-yearMonthDuration-from-date-10',
            'op-subtract-yearMonthDuration-from-date-12',
            'op-subtract-yearMonthDuration-from-date-13',
            'op-subtract-yearMonthDuration-from-date-14',
            'op-subtract-yearMonthDuration-from-date-15',
            'op-subtract-yearMonthDuration-from-date-16',
            'op-subtract-yearMonthDuration-from-date-17',
            'op-subtract-yearMonthDuration-from-date-18',
            'K-DateSubtractYMD-1'
        ]},
        {group_1, [parallel], [
            'cbcl-subtract-yearMonthDuration-from-date-001',
            'cbcl-subtract-yearMonthDuration-from-date-002'
        ]}
    ].

'op-subtract-yearMonthDuration-from-date2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1970-01-01Z\") - xs:yearMonthDuration(\"P0Y0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date2args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1970-01-01Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1983-11-17Z\") - xs:yearMonthDuration(\"P0Y0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1983-11-17Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2030-12-31Z\") - xs:yearMonthDuration(\"P0Y0M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2030-12-31Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1970-01-01Z\") - xs:yearMonthDuration(\"P1000Y6M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date2args-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0969-07-01Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1970-01-01Z\") - xs:yearMonthDuration(\"P2030Y12M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date2args-5.xq"),
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
                    case xqerl_test:assert_string_value(Res, "-0062-01-01Z") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "-0061-01-01Z") of
                        true -> {comment, "String correct"};
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

'op-subtract-yearMonthDuration-from-date-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-10-30\") - xs:yearMonthDuration(\"P1Y2M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-08-30") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-02-29Z\") - xs:yearMonthDuration(\"P1Y\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-02-28Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"2000-10-31-05:00\") - xs:yearMonthDuration(\"P1Y1M\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1999-09-30-05:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:string(xs:date(\"1998-09-12Z\") - xs:yearMonthDuration(\"P20Y03M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-4.xq"),
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

'op-subtract-yearMonthDuration-from-date-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:string(xs:date(\"1962-03-12Z\") - xs:yearMonthDuration(\"P10Y01M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-5.xq"),
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

'op-subtract-yearMonthDuration-from-date-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(xs:date(\"1988-01-28Z\") - xs:yearMonthDuration(\"P09Y02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-6.xq"),
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

'op-subtract-yearMonthDuration-from-date-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:date(\"1989-07-05Z\") - xs:yearMonthDuration(\"P08Y04M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1981-03-05Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:date(\"0001-01-01Z\") - xs:yearMonthDuration(\"-P20Y07M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0021-08-01Z") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-subtract-yearMonthDuration-from-date-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1993-12-09Z\") - xs:yearMonthDuration(\"P03Y03M\"))) and fn:string((xs:date(\"1993-12-09Z\") - xs:yearMonthDuration(\"P03Y03M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-9.xq"),
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

'op-subtract-yearMonthDuration-from-date-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1985-07-05Z\") - xs:yearMonthDuration(\"P02Y02M\"))) or fn:string((xs:date(\"1985-07-05Z\") - xs:yearMonthDuration(\"P02Y02M\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-10.xq"),
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

'op-subtract-yearMonthDuration-from-date-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string((xs:date(\"1980-03-02Z\") - xs:yearMonthDuration(\"P05Y05M\"))) and (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-12.xq"),
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

'op-subtract-yearMonthDuration-from-date-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1980-05-05Z\") - xs:yearMonthDuration(\"P23Y11M\")) eq xs:date(\"1980-05-05Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-13.xq"),
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

'op-subtract-yearMonthDuration-from-date-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1979-12-12Z\") - xs:yearMonthDuration(\"P08Y08M\")) ne xs:date(\"1979-12-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-14.xq"),
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

'op-subtract-yearMonthDuration-from-date-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1978-12-12Z\") - xs:yearMonthDuration(\"P17Y12M\")) le xs:date(\"1978-12-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-15.xq"),
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

'op-subtract-yearMonthDuration-from-date-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:date(\"1977-12-12Z\") - xs:yearMonthDuration(\"P18Y02M\")) ge xs:date(\"1977-12-12Z\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-16.xq"),
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

'op-subtract-yearMonthDuration-from-date-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:date(\"2000-12-12Z\") - xs:yearMonthDuration(\"P18Y11M\")) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-17.xq"),
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

'op-subtract-yearMonthDuration-from-date-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string((xs:date(\"1999-10-23Z\") - xs:yearMonthDuration(\"P19Y12M\"))) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-subtract-yearMonthDuration-from-date-18.xq"),
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

'K-DateSubtractYMD-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-08-12\") - xs:yearMonthDuration(\"P3Y7M\") eq xs:date(\"1996-01-12\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DateSubtractYMD-1.xq"),
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

'cbcl-subtract-yearMonthDuration-from-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:two-digit($number as xs:integer) { \n"
        "      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string \n"
        "      	}; \n"
        "      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { \n"
        "      		let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) \n"
        "      	}; \n"
        "      	local:date(2008, 05, 12) - xs:dayTimeDuration(\"P0D\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-yearMonthDuration-from-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2008-05-12") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-subtract-yearMonthDuration-from-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:two-digit($number as xs:integer) { \n"
        "      		let $string := string($number) return if (string-length($string) lt 2) then concat('0', $string) else $string \n"
        "      	}; \n"
        "      	declare function local:date($year as xs:integer, $month as xs:integer, $day as xs:integer) { \n"
        "      		let $m := local:two-digit($month), $d := local:two-digit($day) return xs:date(concat($year, '-', $m, '-', $d)) \n"
        "      	}; \n"
        "      	local:date(-25252734927766554, 05, 12) - xs:yearMonthDuration(\"-P3214267297Y\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-subtract-yearMonthDuration-from-date-002.xq"),
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
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "-25252731713499257-05-12") of
                        true -> {comment, "String correct"};
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
