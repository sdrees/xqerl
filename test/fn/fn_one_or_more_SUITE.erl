-module('fn_one_or_more_SUITE').

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

-export(['fn-one-or-moreint1args-1'/1]).
-export(['fn-one-or-moreint1args-2'/1]).
-export(['fn-one-or-moreint1args-3'/1]).
-export(['fn-one-or-moreintg1args-1'/1]).
-export(['fn-one-or-moreintg1args-2'/1]).
-export(['fn-one-or-moreintg1args-3'/1]).
-export(['fn-one-or-moredec1args-1'/1]).
-export(['fn-one-or-moredec1args-2'/1]).
-export(['fn-one-or-moredec1args-3'/1]).
-export(['fn-one-or-moredbl1args-1'/1]).
-export(['fn-one-or-moredbl1args-2'/1]).
-export(['fn-one-or-moredbl1args-3'/1]).
-export(['fn-one-or-moreflt1args-1'/1]).
-export(['fn-one-or-moreflt1args-2'/1]).
-export(['fn-one-or-moreflt1args-3'/1]).
-export(['fn-one-or-morelng1args-1'/1]).
-export(['fn-one-or-morelng1args-2'/1]).
-export(['fn-one-or-morelng1args-3'/1]).
-export(['fn-one-or-moreusht1args-1'/1]).
-export(['fn-one-or-moreusht1args-2'/1]).
-export(['fn-one-or-moreusht1args-3'/1]).
-export(['fn-one-or-morenint1args-1'/1]).
-export(['fn-one-or-morenint1args-2'/1]).
-export(['fn-one-or-morenint1args-3'/1]).
-export(['fn-one-or-morepint1args-1'/1]).
-export(['fn-one-or-morepint1args-2'/1]).
-export(['fn-one-or-morepint1args-3'/1]).
-export(['fn-one-or-moreulng1args-1'/1]).
-export(['fn-one-or-moreulng1args-2'/1]).
-export(['fn-one-or-moreulng1args-3'/1]).
-export(['fn-one-or-morenpi1args-1'/1]).
-export(['fn-one-or-morenpi1args-2'/1]).
-export(['fn-one-or-morenpi1args-3'/1]).
-export(['fn-one-or-morenni1args-1'/1]).
-export(['fn-one-or-morenni1args-2'/1]).
-export(['fn-one-or-morenni1args-3'/1]).
-export(['fn-one-or-moresht1args-1'/1]).
-export(['fn-one-or-moresht1args-2'/1]).
-export(['fn-one-or-moresht1args-3'/1]).
-export(['fn-one-or-more-1'/1]).
-export(['K-SeqOneOrMoreFunc-1'/1]).
-export(['K-SeqOneOrMoreFunc-2'/1]).
-export(['K-SeqOneOrMoreFunc-3'/1]).
-export(['K-SeqOneOrMoreFunc-4'/1]).
-export(['K-SeqOneOrMoreFunc-5'/1]).
-export(['K-SeqOneOrMoreFunc-6'/1]).
-export(['K-SeqOneOrMoreFunc-7'/1]).
-export(['K-SeqOneOrMoreFunc-8'/1]).
-export(['K2-SeqOneOrMoreFunc-1'/1]).
-export(['cbcl-one-or-more-001'/1]).
-export(['cbcl-one-or-more-002'/1]).
-export(['cbcl-one-or-more-003'/1]).
-export(['cbcl-one-or-more-004'/1]).
-export(['cbcl-one-or-more-005'/1]).
-export(['cbcl-one-or-more-006'/1]).
-export(['cbcl-one-or-more-007'/1]).

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
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-one-or-moreint1args-1',
            'fn-one-or-moreint1args-2',
            'fn-one-or-moreint1args-3',
            'fn-one-or-moreintg1args-1',
            'fn-one-or-moreintg1args-2',
            'fn-one-or-moreintg1args-3',
            'fn-one-or-moredec1args-1',
            'fn-one-or-moredec1args-2',
            'fn-one-or-moredec1args-3',
            'fn-one-or-moredbl1args-1',
            'fn-one-or-moredbl1args-2',
            'fn-one-or-moredbl1args-3',
            'fn-one-or-moreflt1args-1',
            'fn-one-or-moreflt1args-2',
            'fn-one-or-moreflt1args-3',
            'fn-one-or-morelng1args-1',
            'fn-one-or-morelng1args-2',
            'fn-one-or-morelng1args-3',
            'fn-one-or-moreusht1args-1',
            'fn-one-or-moreusht1args-2',
            'fn-one-or-moreusht1args-3',
            'fn-one-or-morenint1args-1',
            'fn-one-or-morenint1args-2'
        ]},
        {group_1, [parallel], [
            'fn-one-or-morenint1args-3',
            'fn-one-or-morepint1args-1',
            'fn-one-or-morepint1args-2',
            'fn-one-or-morepint1args-3',
            'fn-one-or-moreulng1args-1',
            'fn-one-or-moreulng1args-2',
            'fn-one-or-moreulng1args-3',
            'fn-one-or-morenpi1args-1',
            'fn-one-or-morenpi1args-2',
            'fn-one-or-morenpi1args-3',
            'fn-one-or-morenni1args-1',
            'fn-one-or-morenni1args-2',
            'fn-one-or-morenni1args-3',
            'fn-one-or-moresht1args-1',
            'fn-one-or-moresht1args-2',
            'fn-one-or-moresht1args-3',
            'fn-one-or-more-1',
            'K-SeqOneOrMoreFunc-1',
            'K-SeqOneOrMoreFunc-2',
            'K-SeqOneOrMoreFunc-3',
            'K-SeqOneOrMoreFunc-4',
            'K-SeqOneOrMoreFunc-5',
            'K-SeqOneOrMoreFunc-6',
            'K-SeqOneOrMoreFunc-7'
        ]},
        {group_2, [parallel], [
            'K-SeqOneOrMoreFunc-8',
            'K2-SeqOneOrMoreFunc-1',
            'cbcl-one-or-more-001',
            'cbcl-one-or-more-002',
            'cbcl-one-or-more-003',
            'cbcl-one-or-more-004',
            'cbcl-one-or-more-005',
            'cbcl-one-or-more-006',
            'cbcl-one-or-more-007'
        ]}
    ].

'fn-one-or-moreint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:int(\"-2147483648\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-2147483648") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:int(\"-1873914410\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1873914410") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:int(\"2147483647\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2147483647") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreintg1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:integer(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreintg1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreintg1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:integer(\"830993497117024304\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreintg1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "830993497117024304") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreintg1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:integer(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreintg1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moredec1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:decimal(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moredec1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moredec1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:decimal(\"617375191608514839\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moredec1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "617375191608514839") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moredec1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:decimal(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moredec1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moredbl1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:double(\"-1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moredbl1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moredbl1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:double(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moredbl1args-2.xq"),
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

'fn-one-or-moredbl1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:double(\"1.7976931348623157E308\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moredbl1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1.7976931348623157E308") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreflt1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:float(\"-3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreflt1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreflt1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:float(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreflt1args-2.xq"),
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

'fn-one-or-moreflt1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:float(\"3.4028235E38\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreflt1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3.4028235E38") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morelng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:long(\"-92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morelng1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morelng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:long(\"-47175562203048468\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morelng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-47175562203048468") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morelng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:long(\"92233720368547758\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morelng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "92233720368547758") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreusht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:unsignedShort(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreusht1args-1.xq"),
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

'fn-one-or-moreusht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:unsignedShort(\"44633\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreusht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "44633") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreusht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:unsignedShort(\"65535\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreusht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "65535") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:negativeInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenint1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:negativeInteger(\"-297014075999096793\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-297014075999096793") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:negativeInteger(\"-1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morepint1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:positiveInteger(\"1\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morepint1args-1.xq"),
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

'fn-one-or-morepint1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:positiveInteger(\"52704602390610033\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morepint1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "52704602390610033") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morepint1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:positiveInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morepint1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreulng1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:unsignedLong(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreulng1args-1.xq"),
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

'fn-one-or-moreulng1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:unsignedLong(\"130747108607674654\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreulng1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "130747108607674654") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moreulng1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:unsignedLong(\"184467440737095516\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moreulng1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "184467440737095516") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenpi1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:nonPositiveInteger(\"-999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenpi1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenpi1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:nonPositiveInteger(\"-475688437271870490\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenpi1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-475688437271870490") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenpi1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:nonPositiveInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenpi1args-3.xq"),
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

'fn-one-or-morenni1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:nonNegativeInteger(\"0\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenni1args-1.xq"),
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

'fn-one-or-morenni1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:nonNegativeInteger(\"303884545991464527\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenni1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "303884545991464527") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-morenni1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:nonNegativeInteger(\"999999999999999999\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-morenni1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "999999999999999999") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moresht1args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:short(\"-32768\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moresht1args-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-32768") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moresht1args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:short(\"-5324\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moresht1args-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "-5324") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-moresht1args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(xs:short(\"32767\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-one-or-moresht1args-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "32767") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-one-or-more-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:one-or-more(())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-one-or-more-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqOneOrMoreFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "one-or-more(1, 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-1.xq"),
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

'K-SeqOneOrMoreFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "one-or-more()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-2.xq"),
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

'K-SeqOneOrMoreFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "one-or-more(\"one\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "one") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqOneOrMoreFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "exists(one-or-more((\"one\", 2)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-4.xq"),
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

'K-SeqOneOrMoreFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(one-or-more( \"one\" )) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-5.xq"),
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

'K-SeqOneOrMoreFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(one-or-more( (1, 2, 3, \"four\") )) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-6.xq"),
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

'K-SeqOneOrMoreFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "one-or-more(error())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-7.xq"),
                Qry1
            ),
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

'K-SeqOneOrMoreFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "one-or-more( () )",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqOneOrMoreFunc-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqOneOrMoreFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "codepoints-to-string(one-or-more(string-to-codepoints(\"foo\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqOneOrMoreFunc-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "foo") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-one-or-more-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else $arg };\n"
        "        fn:one-or-more(fn:reverse( local:generate( 0 ) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 2 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-one-or-more-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:generate($arg as xs:integer?) { if ($arg = 0) then (1, 2, 3) else $arg };\n"
        "        fn:one-or-more(fn:zero-or-one( local:generate( () ) ))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-one-or-more-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      boolean(one-or-more(for $x in 1 to month-from-date(current-date()) return <a/>))\n"
        "   ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-003.xq"),
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

'cbcl-one-or-more-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean(one-or-more(month-from-date(current-date()) to 0))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-one-or-more-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean(one-or-more((1 to 10)[. mod 2 = 0]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0006") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0006 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-one-or-more-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "one-or-more((1 to 10)[. div 2 = 0])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORG0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORG0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-one-or-more-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      boolean(one-or-more(for $x in (1 to 10)[. div 2 = 1] return true()))\n"
        "   ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-one-or-more-007.xq"),
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
