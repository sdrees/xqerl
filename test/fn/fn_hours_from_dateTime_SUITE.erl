-module('fn_hours_from_dateTime_SUITE').

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

-export(['fn-hours-from-dateTime1args-1'/1]).
-export(['fn-hours-from-dateTime1args-2'/1]).
-export(['fn-hours-from-dateTime1args-3'/1]).
-export(['fn-hours-from-dateTime-1'/1]).
-export(['fn-hours-from-dateTime-2'/1]).
-export(['fn-hours-from-dateTime-3'/1]).
-export(['fn-hours-from-dateTime-4'/1]).
-export(['fn-hours-from-dateTime-5'/1]).
-export(['fn-hours-from-dateTime-6'/1]).
-export(['fn-hours-from-dateTime-7'/1]).
-export(['fn-hours-from-dateTime-8'/1]).
-export(['fn-hours-from-dateTime-9'/1]).
-export(['fn-hours-from-dateTime-10'/1]).
-export(['fn-hours-from-dateTime-11'/1]).
-export(['fn-hours-from-dateTime-12'/1]).
-export(['fn-hours-from-dateTime-13'/1]).
-export(['fn-hours-from-dateTime-14'/1]).
-export(['fn-hours-from-dateTime-15'/1]).
-export(['fn-hours-from-dateTime-16'/1]).
-export(['fn-hours-from-dateTime-17'/1]).
-export(['fn-hours-from-dateTime-18'/1]).
-export(['fn-hours-from-dateTime-19'/1]).
-export(['K-HoursFromDateTimeFunc-1'/1]).
-export(['K-HoursFromDateTimeFunc-2'/1]).
-export(['K-HoursFromDateTimeFunc-3'/1]).
-export(['K-HoursFromDateTimeFunc-4'/1]).
-export(['K-HoursFromDateTimeFunc-5'/1]).

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
            'fn-hours-from-dateTime1args-1',
            'fn-hours-from-dateTime1args-2',
            'fn-hours-from-dateTime1args-3',
            'fn-hours-from-dateTime-1',
            'fn-hours-from-dateTime-2',
            'fn-hours-from-dateTime-3',
            'fn-hours-from-dateTime-4',
            'fn-hours-from-dateTime-5',
            'fn-hours-from-dateTime-6',
            'fn-hours-from-dateTime-7',
            'fn-hours-from-dateTime-8',
            'fn-hours-from-dateTime-9',
            'fn-hours-from-dateTime-10',
            'fn-hours-from-dateTime-11',
            'fn-hours-from-dateTime-12',
            'fn-hours-from-dateTime-13',
            'fn-hours-from-dateTime-14',
            'fn-hours-from-dateTime-15',
            'fn-hours-from-dateTime-16',
            'fn-hours-from-dateTime-17',
            'fn-hours-from-dateTime-18',
            'fn-hours-from-dateTime-19',
            'K-HoursFromDateTimeFunc-1'
        ]},
        {group_1, [parallel], [
            'K-HoursFromDateTimeFunc-2',
            'K-HoursFromDateTimeFunc-3',
            'K-HoursFromDateTimeFunc-4',
            'K-HoursFromDateTimeFunc-5'
        ]}
    ].

'fn-hours-from-dateTime1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime1args-1.xq"),
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

'fn-hours-from-dateTime1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1996-04-07T01:40:52\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime1args-2.xq"),
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

'fn-hours-from-dateTime1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"2030-12-31T23:59:59\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "23") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T08:20:00-05:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "8") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T21:20:00-05:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "21") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(fn:adjust-dateTime-to-timezone(xs:dateTime(\"1999-12-31T21:20:00-05:00\"), xs:dayTimeDuration(\"PT0H\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-12-31T12:00:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "12") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:hours-from-dateTime(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-5.xq"),
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

'fn-hours-from-dateTime-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T00:20:00-05:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-6.xq"),
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

'fn-hours-from-dateTime-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:hours-from-dateTime(xs:dateTime(\"1999-05-31T23:20:00-05:00\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "23") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) + fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-8.xq"),
                Qry1
            ),
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

'fn-hours-from-dateTime-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T00:00:00Z\")) - fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")) * fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "20") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\")) div fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0.2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) idiv fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T02:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) mod fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T03:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-13.xq"),
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

'fn-hours-from-dateTime-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "+fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-14.xq"),
                Qry1
            ),
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

'fn-hours-from-dateTime-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-10") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-hours-from-dateTime-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) eq fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-16.xq"),
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

'fn-hours-from-dateTime-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ne fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-17.xq"),
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

'fn-hours-from-dateTime-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) le fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-18.xq"),
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

'fn-hours-from-dateTime-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\")) ge fn:hours-from-dateTime(xs:dateTime(\"1970-01-01T10:00:00Z\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-hours-from-dateTime-19.xq"),
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

'K-HoursFromDateTimeFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "hours-from-dateTime()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-HoursFromDateTimeFunc-1.xq"),
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

'K-HoursFromDateTimeFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "hours-from-dateTime((), \"Wrong param\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-HoursFromDateTimeFunc-2.xq"),
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

'K-HoursFromDateTimeFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(hours-from-dateTime(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-HoursFromDateTimeFunc-3.xq"),
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

'K-HoursFromDateTimeFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "hours-from-dateTime(()) instance of xs:integer?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-HoursFromDateTimeFunc-4.xq"),
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

'K-HoursFromDateTimeFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "hours-from-dateTime(xs:dateTime(\"2001-02-03T08:23:12.43\")) eq 8",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-HoursFromDateTimeFunc-5.xq"),
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
