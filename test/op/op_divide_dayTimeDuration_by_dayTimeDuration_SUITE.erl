-module('op_divide_dayTimeDuration_by_dayTimeDuration_SUITE').

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

-export(['op-divide-dayTimeDuration-by-dayTimeDuration2args-1'/1]).
-export(['op-divide-dayTimeDuration-by-dayTimeDuration2args-2'/1]).
-export(['op-divide-dayTimeDuration-by-dayTimeDuration2args-3'/1]).
-export(['op-divide-dayTimeDuration-by-dayTimeDuration2args-4'/1]).
-export(['op-divide-dayTimeDuration-by-dayTimeDuration2args-5'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-1'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-2'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-3'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-4'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-5'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-6'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-7'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-8'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-9'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-10'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-11'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-12'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-13'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-14'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-15'/1]).
-export(['op-divide-dayTimeDuration-by-dTD-16'/1]).
-export(['K-DayTimeDurationDivideDTD-1'/1]).
-export(['cbcl-divide-dayTimeDuration-by-dayTimeDuration-001'/1]).
-export(['cbcl-divide-dayTimeDuration-by-dayTimeDuration-002'/1]).
-export(['cbcl-divide-dayTimeDuration-by-dayTimeDuration-003'/1]).

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
            'op-divide-dayTimeDuration-by-dayTimeDuration2args-1',
            'op-divide-dayTimeDuration-by-dayTimeDuration2args-2',
            'op-divide-dayTimeDuration-by-dayTimeDuration2args-3',
            'op-divide-dayTimeDuration-by-dayTimeDuration2args-4',
            'op-divide-dayTimeDuration-by-dayTimeDuration2args-5',
            'op-divide-dayTimeDuration-by-dTD-1',
            'op-divide-dayTimeDuration-by-dTD-2',
            'op-divide-dayTimeDuration-by-dTD-3',
            'op-divide-dayTimeDuration-by-dTD-4',
            'op-divide-dayTimeDuration-by-dTD-5',
            'op-divide-dayTimeDuration-by-dTD-6',
            'op-divide-dayTimeDuration-by-dTD-7',
            'op-divide-dayTimeDuration-by-dTD-8',
            'op-divide-dayTimeDuration-by-dTD-9',
            'op-divide-dayTimeDuration-by-dTD-10',
            'op-divide-dayTimeDuration-by-dTD-11',
            'op-divide-dayTimeDuration-by-dTD-12',
            'op-divide-dayTimeDuration-by-dTD-13',
            'op-divide-dayTimeDuration-by-dTD-14',
            'op-divide-dayTimeDuration-by-dTD-15',
            'op-divide-dayTimeDuration-by-dTD-16',
            'K-DayTimeDurationDivideDTD-1',
            'cbcl-divide-dayTimeDuration-by-dayTimeDuration-001'
        ]},
        {group_1, [parallel], [
            'cbcl-divide-dayTimeDuration-by-dayTimeDuration-002',
            'cbcl-divide-dayTimeDuration-by-dayTimeDuration-003'
        ]}
    ].

'op-divide-dayTimeDuration-by-dayTimeDuration2args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") div xs:dayTimeDuration(\"P0DT0H0M01S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dayTimeDuration2args-1.xq"),
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

'op-divide-dayTimeDuration-by-dayTimeDuration2args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") div xs:dayTimeDuration(\"P0DT0H0M01S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dayTimeDuration2args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1339199") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-dayTimeDuration-by-dayTimeDuration2args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") div xs:dayTimeDuration(\"P0DT0H0M01S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dayTimeDuration2args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2764799") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-dayTimeDuration-by-dayTimeDuration2args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") div xs:dayTimeDuration(\"P15DT11H59M59S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dayTimeDuration2args-4.xq"),
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

'op-divide-dayTimeDuration-by-dayTimeDuration2args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") div xs:dayTimeDuration(\"P31DT23H59M59S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dayTimeDuration2args-5.xq"),
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

'op-divide-dayTimeDuration-by-dTD-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:round-half-to-even((xs:dayTimeDuration(\"P2DT53M11S\") div xs:dayTimeDuration(\"P1DT10H\")),15)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-1.xq"),
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
                    case xqerl_test:assert_eq(Res, "1.437834967320261") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1.4378349673") of
                        true -> {comment, "Equal"};
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

'op-divide-dayTimeDuration-by-dTD-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:dayTimeDuration(\"P10DT10H11M\") div xs:dayTimeDuration(\"P12DT10H07M\") and fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-2.xq"),
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

'op-divide-dayTimeDuration-by-dTD-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:dayTimeDuration(\"P20DT20H10M\") div xs:dayTimeDuration(\"P19DT13H10M\") or fn:false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-3.xq"),
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

'op-divide-dayTimeDuration-by-dTD-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:not(xs:dayTimeDuration(\"P11DT12H04M\") div xs:dayTimeDuration(\"P02DT07H01M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-4.xq"),
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

'op-divide-dayTimeDuration-by-dTD-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:boolean(xs:dayTimeDuration(\"P05DT09H08M\") div xs:dayTimeDuration(\"P03DT08H06M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-5.xq"),
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

'op-divide-dayTimeDuration-by-dTD-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:number(xs:dayTimeDuration(\"P02DT06H09M\") div xs:dayTimeDuration(\"P02DT06H09M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-6.xq"),
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

'op-divide-dayTimeDuration-by-dTD-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string(xs:dayTimeDuration(\"P08DT06H08M\") div xs:dayTimeDuration(\"P08DT06H08M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"1\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-dayTimeDuration-by-dTD-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:dayTimeDuration(\"P10DT01H01M\") div xs:dayTimeDuration(\"-P10DT01H01M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-dayTimeDuration-by-dTD-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P01DT02H01M\") div xs:dayTimeDuration(\"P02DT09H02M\")) and (xs:dayTimeDuration(\"P01DT02H01M\") div xs:dayTimeDuration(\"P02DT09H02M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-9.xq"),
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

'op-divide-dayTimeDuration-by-dTD-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P05DT09H02M\") div xs:dayTimeDuration(\"P03DT01H04M\")) or (xs:dayTimeDuration(\"P05DT05H03M\") div xs:dayTimeDuration(\"P01DT01H03M\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-10.xq"),
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

'op-divide-dayTimeDuration-by-dTD-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:round-half-to-even( (xs:dayTimeDuration(\"P42DT10H10M\") div xs:dayTimeDuration(\"P10DT10H10M\")) div (xs:dayTimeDuration(\"P20DT10H10M\") div xs:dayTimeDuration(\"P18DT10H10M\")) ,15)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3.671399617754547") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'op-divide-dayTimeDuration-by-dTD-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P10DT08H11M\") div xs:dayTimeDuration(\"P05DT08H11M\")) and (fn:true())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-12.xq"),
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

'op-divide-dayTimeDuration-by-dTD-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P23DT11H11M\") div xs:dayTimeDuration(\"P23DT11H11M\")) eq xs:decimal(2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-13.xq"),
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

'op-divide-dayTimeDuration-by-dTD-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P21DT08H12M\") div xs:dayTimeDuration(\"P08DT08H05M\")) ne xs:decimal(2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-14.xq"),
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

'op-divide-dayTimeDuration-by-dTD-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P10DT10H01M\") div xs:dayTimeDuration(\"P17DT10H02M\")) le xs:decimal(2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-15.xq"),
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

'op-divide-dayTimeDuration-by-dTD-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(xs:dayTimeDuration(\"P13DT09H09M\") div xs:dayTimeDuration(\"P18DT02H02M\")) ge xs:decimal(2.0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "op-divide-dayTimeDuration-by-dTD-16.xq"),
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

'K-DayTimeDurationDivideDTD-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:dayTimeDuration(\"PT8M\") div xs:dayTimeDuration(\"PT2M\")) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DayTimeDurationDivideDTD-1.xq"),
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

'cbcl-divide-dayTimeDuration-by-dayTimeDuration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P9223372036854775807D\") div xs:dayTimeDuration(\"P0D\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-divide-dayTimeDuration-by-dayTimeDuration-001.xq"),
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
                    case xqerl_test:assert_error(Res, "FOAR0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
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

'cbcl-divide-dayTimeDuration-by-dayTimeDuration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:dayTimeDuration(\"P9223372036854775807D\") div xs:dayTimeDuration(\"P0DT0H0M0.000000001S\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-divide-dayTimeDuration-by-dayTimeDuration-002.xq"),
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
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
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

'cbcl-divide-dayTimeDuration-by-dayTimeDuration-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "xs:dayTimeDuration(\"P9223372036854775806D\") div xs:dayTimeDuration(\"P4611686018427387903D\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-divide-dayTimeDuration-by-dayTimeDuration-003.xq"),
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
                    case xqerl_test:assert_eq(Res, "2") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0002 " ++ binary_to_list(F)};
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
