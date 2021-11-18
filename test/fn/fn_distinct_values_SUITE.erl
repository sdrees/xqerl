-module('fn_distinct_values_SUITE').

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

-export(['fn-distinct-valuesint1args-1'/1]).
-export(['fn-distinct-valuesint1args-2'/1]).
-export(['fn-distinct-valuesint1args-3'/1]).
-export(['fn-distinct-valuesintg1args-1'/1]).
-export(['fn-distinct-valuesintg1args-2'/1]).
-export(['fn-distinct-valuesintg1args-3'/1]).
-export(['fn-distinct-valuesdec1args-1'/1]).
-export(['fn-distinct-valuesdec1args-2'/1]).
-export(['fn-distinct-valuesdec1args-3'/1]).
-export(['fn-distinct-valuesdbl1args-1'/1]).
-export(['fn-distinct-valuesdbl1args-2'/1]).
-export(['fn-distinct-valuesdbl1args-3'/1]).
-export(['fn-distinct-valuesflt1args-1'/1]).
-export(['fn-distinct-valuesflt1args-2'/1]).
-export(['fn-distinct-valuesflt1args-3'/1]).
-export(['fn-distinct-valueslng1args-1'/1]).
-export(['fn-distinct-valueslng1args-2'/1]).
-export(['fn-distinct-valueslng1args-3'/1]).
-export(['fn-distinct-valuesusht1args-1'/1]).
-export(['fn-distinct-valuesusht1args-2'/1]).
-export(['fn-distinct-valuesusht1args-3'/1]).
-export(['fn-distinct-valuesnint1args-1'/1]).
-export(['fn-distinct-valuesnint1args-2'/1]).
-export(['fn-distinct-valuesnint1args-3'/1]).
-export(['fn-distinct-valuespint1args-1'/1]).
-export(['fn-distinct-valuespint1args-2'/1]).
-export(['fn-distinct-valuespint1args-3'/1]).
-export(['fn-distinct-valuesulng1args-1'/1]).
-export(['fn-distinct-valuesulng1args-2'/1]).
-export(['fn-distinct-valuesulng1args-3'/1]).
-export(['fn-distinct-valuesnpi1args-1'/1]).
-export(['fn-distinct-valuesnpi1args-2'/1]).
-export(['fn-distinct-valuesnpi1args-3'/1]).
-export(['fn-distinct-valuesnni1args-1'/1]).
-export(['fn-distinct-valuesnni1args-2'/1]).
-export(['fn-distinct-valuesnni1args-3'/1]).
-export(['fn-distinct-valuessht1args-1'/1]).
-export(['fn-distinct-valuessht1args-2'/1]).
-export(['fn-distinct-valuessht1args-3'/1]).
-export(['fn-distinct-values-mixed-args-001'/1]).
-export(['fn-distinct-values-mixed-args-002'/1]).
-export(['fn-distinct-values-mixed-args-003'/1]).
-export(['fn-distinct-values-mixed-args-004'/1]).
-export(['fn-distinct-values-mixed-args-005'/1]).
-export(['fn-distinct-values-mixed-args-006'/1]).
-export(['fn-distinct-values-mixed-args-007'/1]).
-export(['fn-distinct-values-mixed-args-008'/1]).
-export(['fn-distinct-values-mixed-args-009'/1]).
-export(['fn-distinct-values-mixed-args-010'/1]).
-export(['fn-distinct-values-mixed-args-011'/1]).
-export(['fn-distinct-values-mixed-args-012'/1]).
-export(['fn-distinct-values-mixed-args-013'/1]).
-export(['fn-distinct-values-mixed-args-014'/1]).
-export(['fn-distinct-values-mixed-args-015'/1]).
-export(['fn-distinct-values-mixed-args-016'/1]).
-export(['fn-distinct-values-mixed-args-017'/1]).
-export(['fn-distinct-values-mixed-args-018'/1]).
-export(['fn-distinct-values-mixed-args-019'/1]).
-export(['fn-distinct-values-mixed-args-020'/1]).
-export(['fn-distinct-values-mixed-args-021'/1]).
-export(['fn-distinct-values-mixed-args-022'/1]).
-export(['fn-distinct-values-mixed-args-023'/1]).
-export(['fn-distinct-values-mixed-args-024'/1]).
-export(['fn-distinct-values-mixed-args-025'/1]).
-export(['fn-distinct-values-mixed-args-026'/1]).
-export(['fn-distinct-values-mixed-args-027'/1]).
-export(['fn-distinct-values-mixed-args-028'/1]).
-export(['fn-distinct-values-mixed-args-029'/1]).
-export(['fn-distinct-values-mixed-args-030'/1]).
-export(['fn-distinct-values-mixed-args-031'/1]).
-export(['fn-distinct-values-mixed-args-032'/1]).
-export(['fn-distinct-values-mixed-args-033'/1]).
-export(['K-SeqDistinctValuesFunc-1'/1]).
-export(['K-SeqDistinctValuesFunc-2'/1]).
-export(['K-SeqDistinctValuesFunc-3'/1]).
-export(['K-SeqDistinctValuesFunc-4'/1]).
-export(['K-SeqDistinctValuesFunc-5'/1]).
-export(['K-SeqDistinctValuesFunc-6'/1]).
-export(['K-SeqDistinctValuesFunc-7'/1]).
-export(['K-SeqDistinctValuesFunc-8'/1]).
-export(['K-SeqDistinctValuesFunc-9'/1]).
-export(['K-SeqDistinctValuesFunc-10'/1]).
-export(['K-SeqDistinctValuesFunc-11'/1]).
-export(['K-SeqDistinctValuesFunc-12'/1]).
-export(['K-SeqDistinctValuesFunc-13'/1]).
-export(['K-SeqDistinctValuesFunc-14'/1]).
-export(['K-SeqDistinctValuesFunc-15'/1]).
-export(['K2-SeqDistinctValuesFunc-1'/1]).
-export(['fn-distinct-values-1'/1]).
-export(['fn-distinct-values-2'/1]).
-export(['cbcl-distinct-values-001'/1]).
-export(['cbcl-distinct-values-002'/1]).
-export(['cbcl-distinct-values-002b'/1]).
-export(['cbcl-distinct-values-003'/1]).
-export(['cbcl-distinct-values-004'/1]).
-export(['cbcl-distinct-values-005'/1]).
-export(['cbcl-distinct-values-006'/1]).
-export(['cbcl-distinct-values-007'/1]).
-export(['cbcl-distinct-values-008'/1]).
-export(['cbcl-distinct-values-009'/1]).
-export(['cbcl-distinct-values-010'/1]).
-export(['cbcl-distinct-values-011'/1]).
-export(['cbcl-distinct-values-012'/1]).
-export(['cbcl-distinct-values-013'/1]).
-export(['cbcl-distinct-values-014'/1]).
-export(['cbcl-distinct-values-016'/1]).

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
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-distinct-valuesint1args-1',
            'fn-distinct-valuesint1args-2',
            'fn-distinct-valuesint1args-3',
            'fn-distinct-valuesintg1args-1',
            'fn-distinct-valuesintg1args-2',
            'fn-distinct-valuesintg1args-3',
            'fn-distinct-valuesdec1args-1',
            'fn-distinct-valuesdec1args-2',
            'fn-distinct-valuesdec1args-3',
            'fn-distinct-valuesdbl1args-1',
            'fn-distinct-valuesdbl1args-2',
            'fn-distinct-valuesdbl1args-3',
            'fn-distinct-valuesflt1args-1',
            'fn-distinct-valuesflt1args-2',
            'fn-distinct-valuesflt1args-3',
            'fn-distinct-valueslng1args-1',
            'fn-distinct-valueslng1args-2',
            'fn-distinct-valueslng1args-3',
            'fn-distinct-valuesusht1args-1',
            'fn-distinct-valuesusht1args-2',
            'fn-distinct-valuesusht1args-3',
            'fn-distinct-valuesnint1args-1',
            'fn-distinct-valuesnint1args-2'
        ]},
        {group_1, [parallel], [
            'fn-distinct-valuesnint1args-3',
            'fn-distinct-valuespint1args-1',
            'fn-distinct-valuespint1args-2',
            'fn-distinct-valuespint1args-3',
            'fn-distinct-valuesulng1args-1',
            'fn-distinct-valuesulng1args-2',
            'fn-distinct-valuesulng1args-3',
            'fn-distinct-valuesnpi1args-1',
            'fn-distinct-valuesnpi1args-2',
            'fn-distinct-valuesnpi1args-3',
            'fn-distinct-valuesnni1args-1',
            'fn-distinct-valuesnni1args-2',
            'fn-distinct-valuesnni1args-3',
            'fn-distinct-valuessht1args-1',
            'fn-distinct-valuessht1args-2',
            'fn-distinct-valuessht1args-3',
            'fn-distinct-values-mixed-args-001',
            'fn-distinct-values-mixed-args-002',
            'fn-distinct-values-mixed-args-003',
            'fn-distinct-values-mixed-args-004',
            'fn-distinct-values-mixed-args-005',
            'fn-distinct-values-mixed-args-006',
            'fn-distinct-values-mixed-args-007',
            'fn-distinct-values-mixed-args-008'
        ]},
        {group_2, [parallel], [
            'fn-distinct-values-mixed-args-009',
            'fn-distinct-values-mixed-args-010',
            'fn-distinct-values-mixed-args-011',
            'fn-distinct-values-mixed-args-012',
            'fn-distinct-values-mixed-args-013',
            'fn-distinct-values-mixed-args-014',
            'fn-distinct-values-mixed-args-015',
            'fn-distinct-values-mixed-args-016',
            'fn-distinct-values-mixed-args-017',
            'fn-distinct-values-mixed-args-018',
            'fn-distinct-values-mixed-args-019',
            'fn-distinct-values-mixed-args-020',
            'fn-distinct-values-mixed-args-021',
            'fn-distinct-values-mixed-args-022',
            'fn-distinct-values-mixed-args-023',
            'fn-distinct-values-mixed-args-024',
            'fn-distinct-values-mixed-args-025',
            'fn-distinct-values-mixed-args-026',
            'fn-distinct-values-mixed-args-027',
            'fn-distinct-values-mixed-args-028',
            'fn-distinct-values-mixed-args-029',
            'fn-distinct-values-mixed-args-030',
            'fn-distinct-values-mixed-args-031',
            'fn-distinct-values-mixed-args-032'
        ]},
        {group_3, [parallel], [
            'fn-distinct-values-mixed-args-033',
            'K-SeqDistinctValuesFunc-1',
            'K-SeqDistinctValuesFunc-2',
            'K-SeqDistinctValuesFunc-3',
            'K-SeqDistinctValuesFunc-4',
            'K-SeqDistinctValuesFunc-5',
            'K-SeqDistinctValuesFunc-6',
            'K-SeqDistinctValuesFunc-7',
            'K-SeqDistinctValuesFunc-8',
            'K-SeqDistinctValuesFunc-9',
            'K-SeqDistinctValuesFunc-10',
            'K-SeqDistinctValuesFunc-11',
            'K-SeqDistinctValuesFunc-12',
            'K-SeqDistinctValuesFunc-13',
            'K-SeqDistinctValuesFunc-14',
            'K-SeqDistinctValuesFunc-15',
            'K2-SeqDistinctValuesFunc-1',
            'fn-distinct-values-1',
            'fn-distinct-values-2',
            'cbcl-distinct-values-001',
            'cbcl-distinct-values-002',
            'cbcl-distinct-values-002b',
            'cbcl-distinct-values-003',
            'cbcl-distinct-values-004'
        ]},
        {group_4, [parallel], [
            'cbcl-distinct-values-005',
            'cbcl-distinct-values-006',
            'cbcl-distinct-values-007',
            'cbcl-distinct-values-008',
            'cbcl-distinct-values-009',
            'cbcl-distinct-values-010',
            'cbcl-distinct-values-011',
            'cbcl-distinct-values-012',
            'cbcl-distinct-values-013',
            'cbcl-distinct-values-014',
            'cbcl-distinct-values-016'
        ]}
    ].

'fn-distinct-valuesint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:int(\"-2147483648\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-2147483648") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:int(\"-1873914410\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1873914410") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:int(\"2147483647\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2147483647") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesintg1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:integer(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesintg1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesintg1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:integer(\"830993497117024304\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesintg1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "830993497117024304") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesintg1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:integer(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesintg1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesdec1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesdec1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesdec1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal(\"617375191608514839\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesdec1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "617375191608514839") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesdec1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesdec1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesdbl1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:double(\"-1.7976931348623157E308\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesdbl1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-1.7976931348623157E308") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesdbl1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:double(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesdbl1args-2.xq"),
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

'fn-distinct-valuesdbl1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:double(\"1.7976931348623157E308\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesdbl1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "1.7976931348623157E308") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesflt1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float(\"-3.4028235E38\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesflt1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:float(\"-3.4028235E38\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesflt1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesflt1args-2.xq"),
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

'fn-distinct-valuesflt1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float(\"3.4028235E38\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesflt1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "xs:float(\"3.4028235E38\")") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valueslng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:long(\"-92233720368547758\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valueslng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-92233720368547758") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valueslng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:long(\"-47175562203048468\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valueslng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-47175562203048468") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valueslng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:long(\"92233720368547758\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valueslng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "92233720368547758") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesusht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:unsignedShort(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesusht1args-1.xq"),
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

'fn-distinct-valuesusht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:unsignedShort(\"44633\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesusht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "44633") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesusht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:unsignedShort(\"65535\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesusht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "65535") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:negativeInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:negativeInteger(\"-297014075999096793\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-297014075999096793") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:negativeInteger(\"-1\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnint1args-3.xq"),
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

'fn-distinct-valuespint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:positiveInteger(\"1\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuespint1args-1.xq"),
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

'fn-distinct-valuespint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:positiveInteger(\"52704602390610033\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuespint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "52704602390610033") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuespint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:positiveInteger(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuespint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesulng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:unsignedLong(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesulng1args-1.xq"),
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

'fn-distinct-valuesulng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:unsignedLong(\"130747108607674654\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesulng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "130747108607674654") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesulng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:unsignedLong(\"184467440737095516\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesulng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "184467440737095516") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnpi1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:nonPositiveInteger(\"-999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnpi1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnpi1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:nonPositiveInteger(\"-475688437271870490\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnpi1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-475688437271870490") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnpi1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:nonPositiveInteger(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnpi1args-3.xq"),
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

'fn-distinct-valuesnni1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:nonNegativeInteger(\"0\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnni1args-1.xq"),
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

'fn-distinct-valuesnni1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:nonNegativeInteger(\"303884545991464527\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnni1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "303884545991464527") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuesnni1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:nonNegativeInteger(\"999999999999999999\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuesnni1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "999999999999999999") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuessht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:short(\"-32768\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuessht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-32768") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuessht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:short(\"-5324\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuessht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "-5324") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-valuessht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:short(\"32767\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-valuessht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "32767") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((1, 2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-001.xq"),
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
                    case xqerl_test:assert_string_value(Res, "2 1") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "1 2") of
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

'fn-distinct-values-mixed-args-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( 1, (1), ((1)) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-002.xq"),
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

'fn-distinct-values-mixed-args-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( 1, 1.0e0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-003.xq"),
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
                    case xqerl_test:assert_count(Res, "1") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case
                        lists:any(
                            fun
                                ({comment, _}) -> true;
                                (_) -> false
                            end,
                            [
                                case xqerl_test:assert_type(Res, "xs:integer") of
                                    true -> {comment, "Correct type"};
                                    {false, F} -> F
                                end,
                                case xqerl_test:assert_type(Res, "xs:double") of
                                    true -> {comment, "Correct type"};
                                    {false, F} -> F
                                end
                            ]
                        )
                    of
                        true -> {comment, "any-of"};
                        _ -> false
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

'fn-distinct-values-mixed-args-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( xs:integer(1), 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-004.xq"),
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

'fn-distinct-values-mixed-args-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( 0e0, -0, 0, 1 ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "1, 0") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( \"cat\", 'CAT' ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"cat\", \"CAT\"") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( xs:string(\"hello\"), \"hello\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "hello") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( xs:string(\"\"), \"\", ''))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-008.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((1, true(), true(), ()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-009.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "1, true()") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal('1.2'), xs:decimal('1.2000000000000001')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-010.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "1.2000000000000001, 1.2") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal('1.2'), '1.2'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-011.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"1.2\", 1.2") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal('1.2'), xs:float('1.2')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-012.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:decimal('1.2'), xs:double('1.2')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-013.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('NaN'), 'NaN'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-014.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "NaN NaN") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('INF'), 'INF'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-015.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "INF INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('-INF'), '-INF'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-016.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-INF -INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('INF'), xs:float('INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-017.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('-INF'), xs:float('INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-018.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "xs:float('-INF'), xs:float('INF')") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('NaN'), xs:float('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-019.xq"),
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

'fn-distinct-values-mixed-args-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('NaN'), xs:float('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-020.xq"),
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

'fn-distinct-values-mixed-args-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('NaN'), xs:double('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-021.xq"),
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

'fn-distinct-values-mixed-args-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('INF'), xs:double('INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-022.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:float('-INF'), xs:double('-INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-023.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-INF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:double('-INF'), xs:double('INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-024.xq"),
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
                    case xqerl_test:assert_string_value(Res, "INF -INF") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "-INF INF") of
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

'fn-distinct-values-mixed-args-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:double('NaN'), xs:double('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-025.xq"),
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

'fn-distinct-values-mixed-args-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:double('NaN'), xs:double('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-026.xq"),
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

'fn-distinct-values-mixed-args-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((\"NaN\", \"-NaN\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-027.xq"),
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
                    case xqerl_test:assert_string_value(Res, "NaN -NaN") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "-NaN NaN") of
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

'fn-distinct-values-mixed-args-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((\"-INF\", \"INF\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-028.xq"),
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
                    case xqerl_test:assert_string_value(Res, "INF -INF") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "-INF INF") of
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

'fn-distinct-values-mixed-args-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:boolean('true'), true()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-029.xq"),
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

'fn-distinct-values-mixed-args-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:boolean('true'), xs:boolean('1')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-030.xq"),
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

'fn-distinct-values-mixed-args-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values((xs:boolean('false'), xs:boolean('0')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-031.xq"),
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

'fn-distinct-values-mixed-args-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:distinct-values(( true(), false(), () ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-032.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "true(), false()") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-mixed-args-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         count(distinct-values((\n"
        "          xs:integer(1),\n"
        "          xs:gDay(\"---15\"),\n"
        "          xs:gDay(\"---10\"), \n"
        "          xs:decimal(1)\n"
        "         )))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-mixed-args-033.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqDistinctValuesFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "distinct-values()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-1.xq"),
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

'K-SeqDistinctValuesFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "deep-equal(distinct-values((1, 2, 3), \"http://www.example.com/COLLATION/NOT/SUPPORTED\"), (1, 2, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-2.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOCH0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOCH0002 " ++ binary_to_list(F)};
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

'K-SeqDistinctValuesFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "distinct-values(\"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-3.xq"),
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

'K-SeqDistinctValuesFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "distinct-values(\"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\") eq \"a string\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-4.xq"),
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

'K-SeqDistinctValuesFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(distinct-values(()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-5.xq"),
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

'K-SeqDistinctValuesFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:canon($arg) {\n"
        "            for $i in \n"
        "                for $s in $arg \n"
        "                return string($s) \n"
        "            order by $i \n"
        "            return $i \n"
        "        }; \n"
        "        deep-equal(\n"
        "            local:canon(\n"
        "                distinct-values((\"1\", 1, 2, 1, 1, 3, 1, 1, 3, xs:anyURI(\"example.com/\"), xs:anyURI(\"example.com/\")))), \n"
        "            local:canon((\"1\", 1, 2, 3, xs:anyURI(\"example.com/\"))))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-6.xq"),
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

'K-SeqDistinctValuesFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "distinct-values((1, 1))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-7.xq"),
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
                    case xqerl_test:assert_eq(Res, "1") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
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

'K-SeqDistinctValuesFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "distinct-values((-3, -3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-8.xq"),
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
                    case xqerl_test:assert_eq(Res, "-3") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
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

'K-SeqDistinctValuesFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(distinct-values((1, 2.0, 3, 2))) eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-9.xq"),
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

'K-SeqDistinctValuesFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(distinct-values((1, 2.0, 3, 2)), (1, 2.0, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-10.xq"),
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

'K-SeqDistinctValuesFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exists(distinct-values((1, 2, 3, 1)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-11.xq"),
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

'K-SeqDistinctValuesFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(empty(distinct-values((1, 1))))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-12.xq"),
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

'K-SeqDistinctValuesFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(distinct-values((1, 2, 2, current-time()))) eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-13.xq"),
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

'K-SeqDistinctValuesFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(distinct-values(())) eq 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-14.xq"),
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

'K-SeqDistinctValuesFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(distinct-values(current-time())) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqDistinctValuesFunc-15.xq"),
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

'K2-SeqDistinctValuesFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:distinct-values((\"1\", \"2\", \"3\"), \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqDistinctValuesFunc-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCH0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCH0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-distinct-values-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $input := (xs:float('1.0'), xs:decimal('1.0000000000100000000001'), \n"
        "                       xs:double( '1.00000000001'), xs:float('2.0'), \n"
        "                       xs:decimal('2.0000000000100000000001'), xs:double( '2.00000000001')), \n"
        "            $distinct := distinct-values($input) \n"
        "        return ( (every $n in $input satisfies $n = $distinct) and \n"
        "        (every $bool in (for $d1 at $p in $distinct, $d2 in $distinct [position() > $p] return $d1 eq $d2) satisfies not($bool)) )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-1.xq"),
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

'fn-distinct-values-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "distinct-values((1 to 300, 100 to 400, 29, 145, 20 to 50, for $x in (30 to 40) return xs:string($x), \"foo\", \"bar\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-distinct-values-2.xq"),
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
            xqerl_test:assert_permutation(
                Res,
                "1 to 400, \"30\", \"31\", \"32\", \"33\", \"34\", \"35\", \"36\", \"37\", \"38\", \"39\", \"40\", \"foo\", \"bar\""
            )
        of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "count(distinct-values((xs:integer(\"3\"), xs:float(\"3\"), xs:float(\"NaN\"), xs:double(\"3\"), xs:double(\"NaN\"), xs:decimal(\"3\"), xs:float(\"3\"))))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-001.xq"),
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

'cbcl-distinct-values-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'cbcl-distinct-values-002b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare function local:create($arg) as xs:anyAtomicType* { \n"
        "      		( if ($arg castable as xs:untypedAtomic) then $arg cast as xs:untypedAtomic else () ), \n"
        "      		( if ($arg castable as xs:dateTime) then $arg cast as xs:dateTime else () ), \n"
        "      		( if ($arg castable as xs:date) then $arg cast as xs:date else () ), \n"
        "      		( if ($arg castable as xs:time) then $arg cast as xs:time else () ), \n"
        "      		( if ($arg castable as xs:time) then $arg cast as xs:time else () ), \n"
        "      		( if ($arg castable as xs:duration) then $arg cast as xs:duration else () ), \n"
        "      		( if ($arg castable as xs:yearMonthDuration) then $arg cast as xs:yearMonthDuration else () ), \n"
        "      		( if ($arg castable as xs:dayTimeDuration) then $arg cast as xs:dayTimeDuration else () ), \n"
        "      		( if ($arg castable as xs:float) then $arg cast as xs:float else () ), \n"
        "      		( if ($arg castable as xs:double) then $arg cast as xs:double else () ), \n"
        "      		( if ($arg castable as xs:decimal) then $arg cast as xs:decimal else () ), \n"
        "      		( if ($arg castable as xs:integer) then $arg cast as xs:integer else () ), \n"
        "      		( if ($arg castable as xs:nonPositiveInteger) then $arg cast as xs:nonPositiveInteger else () ), \n"
        "      		( if ($arg castable as xs:negativeInteger) then $arg cast as xs:negativeInteger else () ), \n"
        "      		( if ($arg castable as xs:long) then $arg cast as xs:long else () ), \n"
        "      		( if ($arg castable as xs:int) then $arg cast as xs:int else () ), \n"
        "      		( if ($arg castable as xs:short) then $arg cast as xs:short else () ), \n"
        "      		( if ($arg castable as xs:byte) then $arg cast as xs:byte else () ), \n"
        "      		( if ($arg castable as xs:byte) then $arg cast as xs:byte else () ), \n"
        "      		( if ($arg castable as xs:nonNegativeInteger) then $arg cast as xs:nonNegativeInteger else () ), \n"
        "      		( if ($arg castable as xs:unsignedLong) then $arg cast as xs:unsignedLong else () ), \n"
        "      		( if ($arg castable as xs:unsignedInt) then $arg cast as xs:unsignedInt else () ), \n"
        "      		( if ($arg castable as xs:unsignedShort) then $arg cast as xs:unsignedShort else () ), \n"
        "      		( if ($arg castable as xs:unsignedByte) then $arg cast as xs:unsignedByte else () ), \n"
        "      		( if ($arg castable as xs:positiveInteger) then $arg cast as xs:positiveInteger else () ), \n"
        "      		( if ($arg castable as xs:gYearMonth) then $arg cast as xs:gYearMonth else () ), \n"
        "      		( if ($arg castable as xs:gYear) then $arg cast as xs:gYear else () ), \n"
        "      		( if ($arg castable as xs:gMonthDay) then $arg cast as xs:gMonthDay else () ), \n"
        "      		( if ($arg castable as xs:gDay) then $arg cast as xs:gDay else () ), \n"
        "      		( if ($arg castable as xs:gMonth) then $arg cast as xs:gMonth else () ), \n"
        "      		( if ($arg castable as xs:string) then $arg cast as xs:string else () ), \n"
        "      		( if ($arg castable as xs:normalizedString) then $arg cast as xs:normalizedString else () ), \n"
        "      		( if ($arg castable as xs:token) then $arg cast as xs:token else () ), \n"
        "      		( if ($arg castable as xs:language) then $arg cast as xs:language else () ), \n"
        "      		( if ($arg castable as xs:NMTOKEN) then $arg cast as xs:NMTOKEN else () ), \n"
        "      		( if ($arg castable as xs:Name) then $arg cast as xs:Name else () ), \n"
        "      		( if ($arg castable as xs:NCName) then $arg cast as xs:NCName else () ), \n"
        "      		( if ($arg castable as xs:ID) then $arg cast as xs:ID else () ), \n"
        "      		( if ($arg castable as xs:IDREF) then $arg cast as xs:IDREF else () ), \n"
        "      		( if ($arg castable as xs:ENTITY) then $arg cast as xs:ENTITY else () ), \n"
        "      		( if ($arg castable as xs:boolean) then $arg cast as xs:boolean else () ), \n"
        "      		( if ($arg castable as xs:base64Binary) then $arg cast as xs:base64Binary else () ), \n"
        "      		( if ($arg castable as xs:hexBinary) then $arg cast as xs:hexBinary else () ), \n"
        "      		( if ($arg castable as xs:QName) then $arg cast as xs:QName else () ) \n"
        "      	}; \n"
        "      	for $value in fn:distinct-values( ( \n"
        "      		local:create(0), local:create(-1), local:create(1), local:create(3.141), \n"
        "      		local:create(3.141e0), local:create(3.333), local:create(3.141e0), \n"
        "      		local:create(3.333e2), local:create('NaN'), local:create('zero'), \n"
        "      		local:create('false'), local:create('true'), local:create('http://www.example.com/'), \n"
        "      		local:create('2008-06-01'), local:create('1972-06-01Z'), local:create('2008-06-01T12:00:00'), \n"
        "      		local:create('1972-06-01T12:00:00+01:00'), local:create('00:00:00'), local:create('12:00:00'), \n"
        "      		local:create('2008'), local:create('1972Z'), local:create('--06'), local:create('--12Z'), \n"
        "      		local:create('2008-06'), local:create('1972-12Z'), local:create('--06-01'), \n"
        "      		local:create('--12-15Z'), local:create('---01'), local:create('---15Z'), \n"
        "      		local:create('P20Y15M'), local:create('P10Y15M'), local:create('-P2DT15H0M0S'), \n"
        "      		local:create('-P1DT15H0M0S'), local:create(fn:QName(\"http://www.example.com/example\", \"person\")), \n"
        "      		local:create(fn:QName(\"http://www.example.com/example\", \"ht:person\")), \n"
        "      		local:create('-P2DT15H0M0S'), local:create('FFFEFDFC'), local:create('aGVsbG8=') )) \n"
        "      	order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-002b.xq"),
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
            xqerl_test:assert_string_value(
                Res,
                "---01 ---01 ---15Z ---15Z --06 --06 --06-01 --06-01 --12-15Z --12-15Z --12Z --12Z -1 -1 -P1DT15H -P1DT15H0M0S -P2DT15H -P2DT15H0M0S 0 0 00:00:00 00:00:00 1 1 12:00:00 12:00:00 1972-06-01T12:00:00+01:00 1972-06-01T12:00:00+01:00 1972-06-01Z 1972-06-01Z 1972-12Z 1972-12Z 1972Z 1972Z 2008 2008 2008 2008 2008 2008-06 2008-06 2008-06-01 2008-06-01 2008-06-01T12:00:00 2008-06-01T12:00:00 3 3.141 3.141 3.141 3.333 3.333 3.333 333 333.3 333.3 333.3 FFFEFDFC FFFEFDFC FFFEFDFC FFFEFDFC NaN NaN NaN P10Y15M P10Y15M P11Y3M P20Y15M P20Y15M P21Y3M aGVsbG8= aGVsbG8= false false false ht:person http://www.example.com/ person person true true true true zero zero zero"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "distinct-values(\n"
        "              (xs:dateTime(\"2008-01-01T13:00:00\"),\n"
        "               adjust-dateTime-to-timezone(xs:dateTime(\"2008-01-01T13:00:00\"))))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_count(Res, "1") of
            true -> {comment, "Count correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:date('2008-06-01'), xs:date('2008-06-01'), xs:date('2012-06-01'), xs:date('1918-11-11Z'), xs:date('1972-06-01Z'), xs:date('1972-06-01Z') )) order by $value return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1918-11-11Z 1972-06-01Z 2008-06-01 2012-06-01") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:dateTime('2008-06-01T12:00:00'), xs:dateTime('2008-06-01T12:00:00'), xs:dateTime('2008-06-01T00:00:00'), xs:dateTime('2008-06-02T00:00:00'), xs:dateTime('1918-11-11T11:00:00Z'), xs:dateTime('1972-06-01T13:00:00Z'), xs:dateTime('1972-06-01T13:00:00Z') )) order by $value return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-005.xq"),
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
            xqerl_test:assert_string_value(
                Res,
                "1918-11-11T11:00:00Z 1972-06-01T13:00:00Z 2008-06-01T00:00:00 2008-06-01T12:00:00 2008-06-02T00:00:00"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:time('12:00:00'), xs:time('11:00:00'), xs:time('12:00:00'))) order by $value return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "11:00:00 12:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value at $p in ( for $time in fn:distinct-values(( xs:time('12:00:00'), xs:time('12:00:00'), xs:time('20:00:00'), xs:time('01:00:00+12:00'), xs:time('02:00:00+13:00'))) order by $time return $time ) return adjust-time-to-timezone($value, (xs:dayTimeDuration(\"PT0S\")[$p]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "13:00:00Z 12:00:00 20:00:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:hexBinary('FFFF'), xs:hexBinary('FFFF'), xs:hexBinary('FFFE'), xs:hexBinary('FF'))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-008.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "FF FFFE FFFF") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:base64Binary('aGVsbG8NCg=='), xs:base64Binary('aGVsbG8NCg=='), xs:base64Binary('aGFsbG8NCg=='), xs:base64Binary('aGkNCg=='))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-009.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "aGFsbG8NCg== aGVsbG8NCg== aGkNCg==") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:untypedAtomic('a'), xs:untypedAtomic('a'), xs:untypedAtomic('b'), xs:untypedAtomic(''))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-010.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:string('a'), xs:string('a'), xs:string('b'), xs:string(''))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-011.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " a b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:gYear('2008'), xs:gYear('2008'), xs:gYear('1972'))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-012.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1972 2008") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:dayTimeDuration('P0D'), xs:yearMonthDuration('P0Y'), xs:duration('P0Y'), xs:duration('P0Y'), xs:yearMonthDuration('P0Y'), xs:dayTimeDuration('P0D'), xs:dayTimeDuration('P1D'), xs:yearMonthDuration('P1Y'), xs:duration('P1Y'))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-013.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "P1D P1Y PT0S") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $value in fn:distinct-values(( xs:gMonthDay('--06-16'), xs:gMonthDay('--06-16'), xs:gMonthDay('--12-15'))) order by string($value) return $value",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-014.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "--06-16 --12-15") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-distinct-values-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $x in 65 to 75 return distinct-values(1 to 10,codepoints-to-string($x to $x+10))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-distinct-values-016.xq"),
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
                    case
                        xqerl_test:assert_string_value(
                            Res,
                            "1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9 10"
                        )
                    of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOCH0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOCH0002 " ++ binary_to_list(F)};
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
