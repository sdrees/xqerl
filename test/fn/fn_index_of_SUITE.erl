-module('fn_index_of_SUITE').

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

-export(['fn-indexof-mix-args-001'/1]).
-export(['fn-indexof-mix-args-002'/1]).
-export(['fn-indexof-mix-args-003'/1]).
-export(['fn-indexof-mix-args-004'/1]).
-export(['fn-indexof-mix-args-005'/1]).
-export(['fn-indexof-mix-args-006'/1]).
-export(['fn-indexof-mix-args-007'/1]).
-export(['fn-indexof-mix-args-008'/1]).
-export(['fn-indexof-mix-args-009'/1]).
-export(['fn-indexof-mix-args-010'/1]).
-export(['fn-indexof-mix-args-011'/1]).
-export(['fn-indexof-mix-args-012'/1]).
-export(['fn-indexof-mix-args-013'/1]).
-export(['fn-indexof-mix-args-014'/1]).
-export(['fn-indexof-mix-args-015'/1]).
-export(['fn-indexof-mix-args-016'/1]).
-export(['fn-indexof-mix-args-017'/1]).
-export(['fn-indexof-mix-args-018'/1]).
-export(['fn-indexof-mix-args-019'/1]).
-export(['fn-indexof-mix-args-020'/1]).
-export(['fn-indexof-mix-args-021'/1]).
-export(['fn-indexof-mix-args-022'/1]).
-export(['K-SeqIndexOfFunc-1'/1]).
-export(['K-SeqIndexOfFunc-2'/1]).
-export(['K-SeqIndexOfFunc-3'/1]).
-export(['K-SeqIndexOfFunc-4'/1]).
-export(['K-SeqIndexOfFunc-5'/1]).
-export(['K-SeqIndexOfFunc-6'/1]).
-export(['K-SeqIndexOfFunc-7'/1]).
-export(['K-SeqIndexOfFunc-8'/1]).
-export(['K-SeqIndexOfFunc-9'/1]).
-export(['K-SeqIndexOfFunc-10'/1]).
-export(['K-SeqIndexOfFunc-11'/1]).
-export(['K-SeqIndexOfFunc-12'/1]).
-export(['K-SeqIndexOfFunc-13'/1]).
-export(['K-SeqIndexOfFunc-14'/1]).
-export(['K-SeqIndexOfFunc-15'/1]).
-export(['K-SeqIndexOfFunc-16'/1]).
-export(['K-SeqIndexOfFunc-17'/1]).
-export(['K-SeqIndexOfFunc-18'/1]).
-export(['K-SeqIndexOfFunc-19'/1]).
-export(['K-SeqIndexOfFunc-20'/1]).
-export(['K-SeqIndexOfFunc-21'/1]).
-export(['K-SeqIndexOfFunc-22'/1]).
-export(['K-SeqIndexOfFunc-23'/1]).
-export(['K-SeqIndexOfFunc-24'/1]).
-export(['K-SeqIndexOfFunc-25'/1]).
-export(['cbcl-fn-indexof-1'/1]).
-export(['cbcl-fn-indexof-2'/1]).
-export(['cbcl-fn-indexof-3'/1]).
-export(['cbcl-fn-indexof-4'/1]).
-export(['cbcl-fn-indexof-5'/1]).
-export(['cbcl-fn-indexof-006'/1]).

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
            'fn-indexof-mix-args-001',
            'fn-indexof-mix-args-002',
            'fn-indexof-mix-args-003',
            'fn-indexof-mix-args-004',
            'fn-indexof-mix-args-005',
            'fn-indexof-mix-args-006',
            'fn-indexof-mix-args-007',
            'fn-indexof-mix-args-008',
            'fn-indexof-mix-args-009',
            'fn-indexof-mix-args-010',
            'fn-indexof-mix-args-011',
            'fn-indexof-mix-args-012',
            'fn-indexof-mix-args-013',
            'fn-indexof-mix-args-014',
            'fn-indexof-mix-args-015',
            'fn-indexof-mix-args-016',
            'fn-indexof-mix-args-017',
            'fn-indexof-mix-args-018',
            'fn-indexof-mix-args-019',
            'fn-indexof-mix-args-020',
            'fn-indexof-mix-args-021',
            'fn-indexof-mix-args-022',
            'K-SeqIndexOfFunc-1'
        ]},
        {group_1, [parallel], [
            'K-SeqIndexOfFunc-2',
            'K-SeqIndexOfFunc-3',
            'K-SeqIndexOfFunc-4',
            'K-SeqIndexOfFunc-5',
            'K-SeqIndexOfFunc-6',
            'K-SeqIndexOfFunc-7',
            'K-SeqIndexOfFunc-8',
            'K-SeqIndexOfFunc-9',
            'K-SeqIndexOfFunc-10',
            'K-SeqIndexOfFunc-11',
            'K-SeqIndexOfFunc-12',
            'K-SeqIndexOfFunc-13',
            'K-SeqIndexOfFunc-14',
            'K-SeqIndexOfFunc-15',
            'K-SeqIndexOfFunc-16',
            'K-SeqIndexOfFunc-17',
            'K-SeqIndexOfFunc-18',
            'K-SeqIndexOfFunc-19',
            'K-SeqIndexOfFunc-20',
            'K-SeqIndexOfFunc-21',
            'K-SeqIndexOfFunc-22',
            'K-SeqIndexOfFunc-23',
            'K-SeqIndexOfFunc-24',
            'K-SeqIndexOfFunc-25'
        ]},
        {group_2, [parallel], [
            'cbcl-fn-indexof-1',
            'cbcl-fn-indexof-2',
            'cbcl-fn-indexof-3',
            'cbcl-fn-indexof-4',
            'cbcl-fn-indexof-5',
            'cbcl-fn-indexof-006'
        ]}
    ].

environment('bib', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/bib.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'fn-indexof-mix-args-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of ((10, 20, 30, 30, 20, 10), 20)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of ((10, 20, 30, 40), 35)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-002.xq"),
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

'fn-indexof-mix-args-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of ((\"a\", \"sport\", \"and\", \"a\", \"pastime\"), \"a\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((\"sport\", \"\", \"and\", \"\", \"\", \"pastime\"), \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2 4 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((),\"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-005.xq"),
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

'fn-indexof-mix-args-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((\"sport\"), \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-006.xq"),
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

'fn-indexof-mix-args-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((),fn:exactly-one(xs:untypedAtomic('')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-007.xq"),
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

'fn-indexof-mix-args-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((xs:float('NaN')), fn:exactly-one(xs:float('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-008.xq"),
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

'fn-indexof-mix-args-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((xs:double('NaN')), fn:exactly-one(xs:double('NaN')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-009.xq"),
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

'fn-indexof-mix-args-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((xs:double('INF')), fn:exactly-one(xs:double('INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-010.xq"),
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

'fn-indexof-mix-args-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((xs:double('-INF')), fn:exactly-one(xs:double('-INF')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-011.xq"),
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

'fn-indexof-mix-args-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:index-of((xs:decimal('9.99999999999999999999999999')), fn:exactly-one(xs:decimal('9.99999999999999999999999999')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-012.xq"),
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

'fn-indexof-mix-args-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:index-of((xs:decimal('9.99999999999999999999999999')), fn:exactly-one(xs:decimal('9.9999999999999999999999999')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-013.xq"),
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

'fn-indexof-mix-args-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:index-of((xs:positiveInteger('1'),xs:positiveInteger('2')), fn:exactly-one(xs:positiveInteger('2')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-014.xq"),
                Qry1
            ),
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

'fn-indexof-mix-args-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:index-of((xs:negativeInteger('-2'), xs:negativeInteger('-1')), fn:exactly-one(xs:negativeInteger('-1')))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-015.xq"),
                Qry1
            ),
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

'fn-indexof-mix-args-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((1, (1,2,3)),1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-016.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of(((1),(1), (2,1), (0,1)),1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-017.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 4 6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((/bib/book/publisher), \"Addison-Wesley\")",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-018.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((/bib/book/publisher), /bib/book[1]/publisher[1]/text() cast as xs:string)",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-019.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((\"sport\", \"\", \"and\", \"\", \"\", \"pastime\"), \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-020.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2 4 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of( (\"\", 1, \"\"), \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-021.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-indexof-mix-args-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:index-of((1,2,3,4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-indexof-mix-args-022.xq"),
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

'K-SeqIndexOfFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-1.xq"),
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

'K-SeqIndexOfFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-2.xq"),
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

'K-SeqIndexOfFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of((1, 2, 3), 1, ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-3.xq"),
                Qry1
            ),
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

'K-SeqIndexOfFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "index-of(\"a string\", \"a string\", \"http://www.example.com/COLLATION/NOT/SUPPORTED\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-4.xq"),
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

'K-SeqIndexOfFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "index-of(\"a string\", \"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\", \"wrong param\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-5.xq"),
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

'K-SeqIndexOfFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "index-of(\"a string\", \"a string\", \"http://www.w3.org/2005/xpath-functions/collation/codepoint\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-6.xq"),
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

'K-SeqIndexOfFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of(xs:double(\"NaN\"), xs:float(\"NaN\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-7.xq"),
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

'K-SeqIndexOfFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of(xs:float(\"NaN\"), xs:double(\"NaN\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-8.xq"),
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

'K-SeqIndexOfFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of(xs:float(\"NaN\"), xs:float(\"NaN\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-9.xq"),
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

'K-SeqIndexOfFunc-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of(xs:double(\"NaN\"), xs:double(\"NaN\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-10.xq"),
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

'K-SeqIndexOfFunc-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of(4, \"4\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-11.xq"),
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

'K-SeqIndexOfFunc-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(4, 4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-12.xq"),
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

'K-SeqIndexOfFunc-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of((), 4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-13.xq"),
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

'K-SeqIndexOfFunc-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(4, 4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-14.xq"),
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

'K-SeqIndexOfFunc-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((1, 2, 3, 4, 5, 6), index-of((4, 4, 4, 4, 4, 4), 4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-15.xq"),
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

'K-SeqIndexOfFunc-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of(xs:anyURI(\"example.com/\"), xs:hexBinary(\"FF\")))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-16.xq"),
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

'K-SeqIndexOfFunc-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(xs:untypedAtomic(\"example.com/\"), xs:anyURI(\"example.com/\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-17.xq"),
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

'K-SeqIndexOfFunc-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of((1, 2, \"three\", 5, 5, 6), 5), (4, 5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-18.xq"),
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

'K-SeqIndexOfFunc-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(index-of((10, 20, 30, 40), 35))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-19.xq"),
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

'K-SeqIndexOfFunc-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of((10, 20, 30, 30, 20, 10), 20), (2, 5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-20.xq"),
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

'K-SeqIndexOfFunc-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(index-of((\"a\", \"sport\", \"and\", \"a\", \"pastime\"), \"a\"), (1, 4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-21.xq"),
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

'K-SeqIndexOfFunc-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(index-of((1, 2, 3, 2, 1), 2)) eq 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-22.xq"),
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

'K-SeqIndexOfFunc-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(index-of((1, 2, 3, 2, 1), 1)) eq 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-23.xq"),
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

'K-SeqIndexOfFunc-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(index-of((1, 2, 3, 2, 1), 3)) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-24.xq"),
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

'K-SeqIndexOfFunc-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(index-of((1, 2, 3, 2, 1), 4)) eq 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqIndexOfFunc-25.xq"),
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

'cbcl-fn-indexof-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(1 to 5,4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-indexof-1.xq"), Qry1),
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

'cbcl-fn-indexof-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(exactly-one((1 to 10)[. div 5 = 1]),5)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-indexof-2.xq"), Qry1),
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

'cbcl-fn-indexof-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean(index-of((1 to 10)[. mod 2 = 0],4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-indexof-3.xq"), Qry1),
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

'cbcl-fn-indexof-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "boolean(index-of((1 to 10)[. mod 2 = 0],5))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-indexof-4.xq"), Qry1),
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

'cbcl-fn-indexof-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of((1 to 10,(1 to 10)[. mod 2 = 0]),4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-fn-indexof-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "4 12") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-indexof-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "index-of(1 to 10,(1 to 10)[. div 2 = 0][1])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-indexof-006.xq"),
                Qry1
            ),
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
