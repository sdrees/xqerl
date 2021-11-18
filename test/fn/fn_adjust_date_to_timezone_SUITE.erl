-module('fn_adjust_date_to_timezone_SUITE').

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

-export(['fn-adjust-date-to-timezone1args-1'/1]).
-export(['fn-adjust-date-to-timezone1args-2'/1]).
-export(['fn-adjust-date-to-timezone1args-3'/1]).
-export(['fn-adjust-date-to-timezone-1'/1]).
-export(['fn-adjust-date-to-timezone-2'/1]).
-export(['fn-adjust-date-to-timezone-3'/1]).
-export(['fn-adjust-date-to-timezone-4'/1]).
-export(['fn-adjust-date-to-timezone-5'/1]).
-export(['fn-adjust-date-to-timezone-6'/1]).
-export(['fn-adjust-date-to-timezone-7'/1]).
-export(['fn-adjust-date-to-timezone-9'/1]).
-export(['fn-adjust-date-to-timezone-10'/1]).
-export(['fn-adjust-date-to-timezone-11'/1]).
-export(['fn-adjust-date-to-timezone-12'/1]).
-export(['fn-adjust-date-to-timezone-13'/1]).
-export(['fn-adjust-date-to-timezone-14'/1]).
-export(['fn-adjust-date-to-timezone-15'/1]).
-export(['fn-adjust-date-to-timezone-16'/1]).
-export(['fn-adjust-date-to-timezone-17'/1]).
-export(['fn-adjust-date-to-timezone-18'/1]).
-export(['fn-adjust-date-to-timezone-19'/1]).
-export(['fn-adjust-date-to-timezone-20'/1]).
-export(['fn-adjust-date-to-timezone-21'/1]).
-export(['K-AdjDateToTimezoneFunc-1'/1]).
-export(['K-AdjDateToTimezoneFunc-2'/1]).
-export(['K-AdjDateToTimezoneFunc-3'/1]).
-export(['K-AdjDateToTimezoneFunc-4'/1]).
-export(['K-AdjDateToTimezoneFunc-5'/1]).
-export(['K-AdjDateToTimezoneFunc-6'/1]).
-export(['K-AdjDateToTimezoneFunc-7'/1]).
-export(['K-AdjDateToTimezoneFunc-8'/1]).
-export(['K-AdjDateToTimezoneFunc-9'/1]).
-export(['K-AdjDateToTimezoneFunc-10'/1]).
-export(['K-AdjDateToTimezoneFunc-11'/1]).
-export(['K-AdjDateToTimezoneFunc-12'/1]).
-export(['K-AdjDateToTimezoneFunc-13'/1]).
-export(['K-AdjDateToTimezoneFunc-14'/1]).
-export(['cbcl-adjust-date-to-timezone-001'/1]).
-export(['cbcl-adjust-date-to-timezone-002'/1]).
-export(['cbcl-adjust-date-to-timezone-003'/1]).
-export(['cbcl-adjust-date-to-timezone-004'/1]).

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
            'fn-adjust-date-to-timezone1args-1',
            'fn-adjust-date-to-timezone1args-2',
            'fn-adjust-date-to-timezone1args-3',
            'fn-adjust-date-to-timezone-1',
            'fn-adjust-date-to-timezone-2',
            'fn-adjust-date-to-timezone-3',
            'fn-adjust-date-to-timezone-4',
            'fn-adjust-date-to-timezone-5',
            'fn-adjust-date-to-timezone-6',
            'fn-adjust-date-to-timezone-7',
            'fn-adjust-date-to-timezone-9',
            'fn-adjust-date-to-timezone-10',
            'fn-adjust-date-to-timezone-11',
            'fn-adjust-date-to-timezone-12',
            'fn-adjust-date-to-timezone-13',
            'fn-adjust-date-to-timezone-14',
            'fn-adjust-date-to-timezone-15',
            'fn-adjust-date-to-timezone-16',
            'fn-adjust-date-to-timezone-17',
            'fn-adjust-date-to-timezone-18',
            'fn-adjust-date-to-timezone-19',
            'fn-adjust-date-to-timezone-20',
            'fn-adjust-date-to-timezone-21'
        ]},
        {group_1, [parallel], [
            'K-AdjDateToTimezoneFunc-1',
            'K-AdjDateToTimezoneFunc-2',
            'K-AdjDateToTimezoneFunc-3',
            'K-AdjDateToTimezoneFunc-4',
            'K-AdjDateToTimezoneFunc-5',
            'K-AdjDateToTimezoneFunc-6',
            'K-AdjDateToTimezoneFunc-7',
            'K-AdjDateToTimezoneFunc-8',
            'K-AdjDateToTimezoneFunc-9',
            'K-AdjDateToTimezoneFunc-10',
            'K-AdjDateToTimezoneFunc-11',
            'K-AdjDateToTimezoneFunc-12',
            'K-AdjDateToTimezoneFunc-13',
            'K-AdjDateToTimezoneFunc-14',
            'cbcl-adjust-date-to-timezone-001',
            'cbcl-adjust-date-to-timezone-002',
            'cbcl-adjust-date-to-timezone-003',
            'cbcl-adjust-date-to-timezone-004'
        ]}
    ].

'fn-adjust-date-to-timezone1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:adjust-date-to-timezone(xs:date(\"1970-01-01Z\"),xs:dayTimeDuration(\"-PT10H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1969-12-31-10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:adjust-date-to-timezone(xs:date(\"1983-11-17Z\"),xs:dayTimeDuration(\"-PT10H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1983-11-16-10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:adjust-date-to-timezone(xs:date(\"2030-12-31Z\"),xs:dayTimeDuration(\"-PT10H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2030-12-30-10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-05:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-07-05:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"),xs:dayTimeDuration(\"-PT5H0M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-07-05:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $tz := xs:dayTimeDuration(\"-PT10H\") \n"
        "         return fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"), $tz)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-07-10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $tz := xs:dayTimeDuration(\"-PT10H\") \n"
        "         return fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), $tz)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-06-10:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07\"), ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-07") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-07") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:adjust-date-to-timezone(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\")) - fn:adjust-date-to-timezone(xs:date(\"2006-03-07-07:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P1461D") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\")) - fn:adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2002-03-07") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-12.xq"),
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

'fn-adjust-date-to-timezone-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-13.xq"),
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

'fn-adjust-date-to-timezone-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) or fn:true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-14.xq"),
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

'fn-adjust-date-to-timezone-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-15.xq"),
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

'fn-adjust-date-to-timezone-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) and fn:true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-16.xq"),
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

'fn-adjust-date-to-timezone-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\"),())) and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-17.xq"),
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

'fn-adjust-date-to-timezone-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $tz := xs:dayTimeDuration(\"PT10H\") \n"
        "         return fn:adjust-date-to-timezone(xs:date(\"2002-03-07Z\"),$tz) - xs:date(\"2006-03-07Z\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-P1461DT10H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $tz := xs:dayTimeDuration(\"PT10H\") \n"
        "         return fn:adjust-date-to-timezone(xs:date(\"2004-03-07Z\"),$tz) - xs:date(\"2001-03-07Z\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1095DT14H") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-adjust-date-to-timezone-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:adjust-date-to-timezone(xs:date(\"2002-03-07-04:00\")) ge fn:adjust-date-to-timezone(xs:date(\"2005-03-07-04:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-20.xq"),
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

'fn-adjust-date-to-timezone-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:adjust-date-to-timezone(current-date()[. lt xs:date('2000-01-01')])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-adjust-date-to-timezone-21.xq"),
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

'K-AdjDateToTimezoneFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-1.xq"),
                Qry1
            ),
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

'K-AdjDateToTimezoneFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone((), (), \"WRONG PARAM\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-2.xq"),
                Qry1
            ),
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

'K-AdjDateToTimezoneFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(adjust-date-to-timezone(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-3.xq"),
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

'K-AdjDateToTimezoneFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(adjust-date-to-timezone((), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-4.xq"),
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

'K-AdjDateToTimezoneFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(()) instance of xs:date?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-5.xq"),
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

'K-AdjDateToTimezoneFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(xs:date(\"2001-02-03\"), xs:dayTimeDuration(\"PT14H1M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-AdjDateToTimezoneFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(xs:date(\"2001-02-03\"), xs:dayTimeDuration(\"-PT14H1M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-AdjDateToTimezoneFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(xs:date(\"2001-02-03\"), xs:dayTimeDuration(\"PT14H0M0.001S\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-AdjDateToTimezoneFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(xs:date(\"2002-03-07\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:date(\"2002-03-07-05:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-9.xq"),
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

'K-AdjDateToTimezoneFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), xs:dayTimeDuration(\"-PT5H0M\")) eq xs:date(\"2002-03-07-05:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-10.xq"),
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

'K-AdjDateToTimezoneFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(xs:date(\"2002-03-07\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:date(\"2002-03-07-10:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-11.xq"),
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

'K-AdjDateToTimezoneFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), xs:dayTimeDuration(\"-PT10H\")) eq xs:date(\"2002-03-06-10:00\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-12.xq"),
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

'K-AdjDateToTimezoneFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07\"), ()) eq xs:date(\"2002-03-07\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-13.xq"),
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

'K-AdjDateToTimezoneFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(xs:date(\"2002-03-07-07:00\"), ()) eq xs:date(\"2002-03-07\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-AdjDateToTimezoneFunc-14.xq"),
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

'cbcl-adjust-date-to-timezone-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "adjust-date-to-timezone(current-date(), implicit-timezone()) eq current-date()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-adjust-date-to-timezone-001.xq"),
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

'cbcl-adjust-date-to-timezone-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(xs:date(\"-25252734927766555-06-07+02:00\"), xs:dayTimeDuration(\"PT0S\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-adjust-date-to-timezone-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-adjust-date-to-timezone-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(xs:date(\"25252734927766555-07-28-12:00\"), xs:dayTimeDuration(\"PT12H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-adjust-date-to-timezone-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODT0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-adjust-date-to-timezone-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "adjust-date-to-timezone(current-date(), xs:dayTimeDuration(\"PT12H\")) eq adjust-date-to-timezone(current-date(), xs:dayTimeDuration(\"-PT12H\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-adjust-date-to-timezone-004.xq"),
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
