-module('prod_Lookup_SUITE').

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

-export(['Lookup-001'/1]).
-export(['Lookup-002'/1]).
-export(['Lookup-003'/1]).
-export(['Lookup-004'/1]).
-export(['Lookup-005'/1]).
-export(['Lookup-006'/1]).
-export(['Lookup-007'/1]).
-export(['Lookup-008'/1]).
-export(['Lookup-009'/1]).
-export(['Lookup-010'/1]).
-export(['Lookup-011'/1]).
-export(['Lookup-012'/1]).
-export(['Lookup-013'/1]).
-export(['Lookup-014'/1]).
-export(['Lookup-015'/1]).
-export(['Lookup-016'/1]).
-export(['Lookup-017'/1]).
-export(['Lookup-018'/1]).
-export(['Lookup-019'/1]).
-export(['Lookup-020'/1]).
-export(['Lookup-021'/1]).
-export(['Lookup-022'/1]).
-export(['Lookup-023'/1]).
-export(['Lookup-024'/1]).
-export(['Lookup-025'/1]).
-export(['Lookup-040'/1]).
-export(['Lookup-041'/1]).
-export(['Lookup-042'/1]).
-export(['Lookup-043'/1]).
-export(['Lookup-044'/1]).
-export(['Lookup-045'/1]).
-export(['Lookup-046'/1]).
-export(['Lookup-101'/1]).
-export(['Lookup-102'/1]).
-export(['Lookup-103'/1]).
-export(['Lookup-104'/1]).
-export(['Lookup-105'/1]).
-export(['Lookup-106'/1]).
-export(['Lookup-107'/1]).
-export(['Lookup-108'/1]).
-export(['Lookup-109'/1]).
-export(['Lookup-110'/1]).
-export(['Lookup-111'/1]).
-export(['Lookup-112'/1]).
-export(['Lookup-113'/1]).
-export(['Lookup-114'/1]).
-export(['Lookup-115'/1]).
-export(['Lookup-116'/1]).
-export(['Lookup-117'/1]).
-export(['Lookup-118'/1]).
-export(['Lookup-119'/1]).
-export(['Lookup-120'/1]).
-export(['Lookup-121'/1]).
-export(['Lookup-122'/1]).
-export(['Lookup-123'/1]).
-export(['Lookup-140'/1]).
-export(['Lookup-141'/1]).
-export(['Lookup-142'/1]).
-export(['Lookup-143'/1]).
-export(['Lookup-144'/1]).
-export(['Lookup-145'/1]).
-export(['Lookup-146'/1]).
-export(['Lookup-147'/1]).
-export(['Lookup-148'/1]).
-export(['Lookup-149'/1]).
-export(['Lookup-150'/1]).
-export(['Lookup-151'/1]).
-export(['Lookup-152'/1]).
-export(['Lookup-153'/1]).
-export(['Lookup-154'/1]).
-export(['Lookup-155'/1]).
-export(['Lookup-156'/1]).
-export(['Lookup-157'/1]).
-export(['Lookup-158'/1]).
-export(['Lookup-159'/1]).
-export(['Lookup-160'/1]).
-export(['Lookup-161'/1]).
-export(['Lookup-162'/1]).
-export(['Lookup-163'/1]).
-export(['Lookup-164'/1]).
-export(['Lookup-165'/1]).
-export(['Lookup-166'/1]).
-export(['Lookup-167'/1]).
-export(['Lookup-168'/1]).
-export(['Lookup-211'/1]).
-export(['Lookup-212'/1]).
-export(['Lookup-213'/1]).
-export(['Lookup-214'/1]).
-export(['Lookup-215'/1]).
-export(['Lookup-216'/1]).
-export(['Lookup-217'/1]).
-export(['Lookup-218'/1]).
-export(['Lookup-219'/1]).
-export(['Lookup-220'/1]).
-export(['Lookup-221'/1]).
-export(['Lookup-222'/1]).
-export(['Lookup-223'/1]).
-export(['Lookup-224'/1]).
-export(['Lookup-225'/1]).
-export(['Lookup-226'/1]).
-export(['Lookup-227'/1]).

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
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'Lookup-001',
            'Lookup-002',
            'Lookup-003',
            'Lookup-004',
            'Lookup-005',
            'Lookup-006',
            'Lookup-007',
            'Lookup-008',
            'Lookup-009',
            'Lookup-010',
            'Lookup-011',
            'Lookup-012',
            'Lookup-013',
            'Lookup-014',
            'Lookup-015',
            'Lookup-016',
            'Lookup-017',
            'Lookup-018',
            'Lookup-019',
            'Lookup-020',
            'Lookup-021',
            'Lookup-022',
            'Lookup-023'
        ]},
        {group_1, [parallel], [
            'Lookup-024',
            'Lookup-025',
            'Lookup-040',
            'Lookup-041',
            'Lookup-042',
            'Lookup-043',
            'Lookup-044',
            'Lookup-045',
            'Lookup-046',
            'Lookup-101',
            'Lookup-102',
            'Lookup-103',
            'Lookup-104',
            'Lookup-105',
            'Lookup-106',
            'Lookup-107',
            'Lookup-108',
            'Lookup-109',
            'Lookup-110',
            'Lookup-111',
            'Lookup-112',
            'Lookup-113',
            'Lookup-114',
            'Lookup-115'
        ]},
        {group_2, [parallel], [
            'Lookup-116',
            'Lookup-117',
            'Lookup-118',
            'Lookup-119',
            'Lookup-120',
            'Lookup-121',
            'Lookup-122',
            'Lookup-123',
            'Lookup-140',
            'Lookup-141',
            'Lookup-142',
            'Lookup-143',
            'Lookup-144',
            'Lookup-145',
            'Lookup-146',
            'Lookup-147',
            'Lookup-148',
            'Lookup-149',
            'Lookup-150',
            'Lookup-151',
            'Lookup-152',
            'Lookup-153',
            'Lookup-154',
            'Lookup-155'
        ]},
        {group_3, [parallel], [
            'Lookup-156',
            'Lookup-157',
            'Lookup-158',
            'Lookup-159',
            'Lookup-160',
            'Lookup-161',
            'Lookup-162',
            'Lookup-163',
            'Lookup-164',
            'Lookup-165',
            'Lookup-166',
            'Lookup-167',
            'Lookup-168',
            'Lookup-211',
            'Lookup-212',
            'Lookup-213',
            'Lookup-214',
            'Lookup-215',
            'Lookup-216',
            'Lookup-217',
            'Lookup-218',
            'Lookup-219',
            'Lookup-220',
            'Lookup-221'
        ]},
        {group_4, [parallel], [
            'Lookup-222',
            'Lookup-223',
            'Lookup-224',
            'Lookup-225',
            'Lookup-226',
            'Lookup-227'
        ]}
    ].

environment('map', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/map", "map"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'Lookup-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])[.?1 eq 'c']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['c', 'd']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i := 1 return (['a', 'b'], ['c', 'd'])[.?($i) eq 'c']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['c', 'd']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])[ .? 001 eq 'c']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['c', 'd']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])[ .? -1 eq 'c']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-004.xq"), Qry1),
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

'Lookup-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])[ .?0 eq 'c']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'], ['e'])[ .?2 eq 'b']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ .?(1 to 2) = 'b']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['a', 'b', 'c'], ['b', 'c', 'd']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $i := (1, 3) return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ .?($i) = 'b']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['b', 'c', 'd'], ['e', 'f', 'b']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ .?first = 'b']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-009.xq"), Qry1),
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

'Lookup-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $d := current-date() return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ .?($d) = 'b']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-010.xq"), Qry1),
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

'Lookup-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $d := function($x) {$x + .?2} return $d(12)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-011.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPDY0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1 to 10)[.?1 = 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-012.xq"), Qry1),
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

'Lookup-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor#1, ceiling#1, round#1, abs#1)[.?1 = 1]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-013.xq"), Qry1),
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

'Lookup-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[ .?* = 'c']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['a', 'b', 'c'], ['b', 'c', 'd']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "([1, [2], [3]], [[2], 2, [4]])[ .?1 = .?2 ]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[[2], 2, [4]]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[contains(.?1, ?, 'http://www.w3.org/2005/xpath-functions/collation/codepoint')('a')]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['a', 'b', 'c']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[contains(.?1, ?)('a')]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['a', 'b', 'c']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[.?1.0 = 'a']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-018.xq"), Qry1),
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

'Lookup-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[.?(1.0) = 'a']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-019.xq"), Qry1),
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

'Lookup-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Lookup-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $x := (<x>1</x>, <y>2</y>) return\n"
        "        (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[.?($x) = 'b']\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-021.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(['a', 'b', 'c'], ['b', 'c', 'd'])") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]?*[.?1 = 'a']",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-022.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "['a', 'b', 'c']") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]!.?*!.?1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-023.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'b', 'e'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $x := (<x>1</x>, <y>2</y>) return $x / .?1\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-024.xq"), Qry1),
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

'Lookup-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])[exists(.?())]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-025.xq"), Qry1),
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

'Lookup-040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{'a':1, 'b':2, 'c':3},  map{'a':2, 'b':3, 'c':4})[.?b eq 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-040.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{'a':2, 'b':3, 'c':4}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[.?2 eq 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-041.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{1:2, 2:3, 3:4}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[.?(1 to 2) = 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-042.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{1:2, 2:3, 3:4}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})[.?b-1 eq 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-043.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{'a-1':2, 'b-1':3, 'c-1':4}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})[.? (:confusing.?:) b-1 eq 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-044.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{'a-1':2, 'b-1':3, 'c-1':4}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[.?* = 3]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-045.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4}") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})[exists(.?())]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-046.xq"), Qry1),
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

'Lookup-101'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])?1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-101.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'c'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-102'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i := 1 return (['a', 'b'], ['c', 'd'])?($i)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-102.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'c'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-103'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])? 001",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-103.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'c'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-104'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])? -1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-104.xq"), Qry1),
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

'Lookup-105'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'])?0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-105.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-106'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b'], ['c', 'd'], ['e'])?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-106.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-107'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?(1 to 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-107.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'b', 'b', 'c', 'e', 'f'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-108'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i := (1, 3) return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?($i)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-108.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'c', 'b', 'd', 'e', 'b'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-109'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']) ?first",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-109.xq"), Qry1),
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

'Lookup-110'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $d := current-date() return (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?($d)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-110.xq"), Qry1),
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

'Lookup-111'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $d := function($x) {$x?2} return $d([12, 13])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-111.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "13") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-112'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1 to 10)?1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-112.xq"), Qry1),
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

'Lookup-113'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(floor#1, ceiling#1, round#1, abs#1)?1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-113.xq"), Qry1),
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

'Lookup-114'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-114.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'b', 'c', 'b', 'c', 'd', 'e', 'f', 'b'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-115'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "([1, [2], [3]], [[2], 2, [4]])?3 = 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-115.xq"), Qry1),
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

'Lookup-116'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "['a', 'b', 'c'] treat as array(*)??1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-116.xq"), Qry1),
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

'Lookup-117'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "['a', 'b', 'c'] treat as array(*) ? 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-117.xq"), Qry1),
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

'Lookup-118'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?1.0 ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-118.xq"), Qry1),
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

'Lookup-119'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?(1.0) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-119.xq"), Qry1),
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

'Lookup-120'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Lookup-121'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $x := (<x>1</x>, <y>2</y>) return\n"
        "        (['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?($x)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-121.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'b', 'b', 'c', 'e', 'f'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-122'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b']]?*?*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-122.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "'a', 'b', 'c', 'b', 'c', 'd', 'e', 'f', 'b'") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-123'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['a', 'b', 'c'], ['b', 'c', 'd'], ['e', 'f', 'b'])?()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-123.xq"), Qry1),
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

'Lookup-140'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{'a':1, 'b':2, 'c':3},  map{'a':2, 'b':3, 'c':4})?b",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-140.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-141'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-141.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-142'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{2:3, 3:4, 4:5})?(1 to 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-142.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "1, 2, 3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-143'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})?c-1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-143.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "3, 4") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-144'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{'a-1':1, 'b-1':2, 'c-1':3},  map{'a-1':2, 'b-1':3, 'c-1':4})? (:confusing.?:) b-1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-144.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-145'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})?*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-145.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "1, 2, 3, 2, 3, 4") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-146'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1:1, 2:2, 3:3},  map{1:2, 2:3, 3:4})?()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-146.xq"), Qry1),
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

'Lookup-147'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "()?banana",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-147.xq"), Qry1),
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

'Lookup-148'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "()?12",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-148.xq"), Qry1),
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

'Lookup-149'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(())?(())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-149.xq"), Qry1),
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

'Lookup-150'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[floor#1, ceiling#1, round#1, abs#1]?2(1.3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-150.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2.0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-151'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'f':floor#1, 'c':ceiling#1, 'r':round#1, 'a':abs#1}?c(1.3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-151.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2.0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-152'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'f':floor#1, 'c':ceiling#1, 'r':round#1, 'a':abs#1}?(\"c\")(1.3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-152.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2.0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-153'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'f':floor#1, 'c':ceiling#1, 'r':round#1, 'a':abs#1}[1]?(\"c\")(1.3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-153.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "2.0") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-154'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'f':floor#1, 'c':ceiling#1, 'r':round#1, 'a':abs#1}?*!.(1.3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-154.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "1.0, 2.0, 1.0, 1.3") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-155'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'or':true(), 'and':true(), 'but':false()} ? or or 2 = 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-155.xq"), Qry1),
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

'Lookup-156'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'xs:decimal':true(), 'xs:integer':true(), 'xs:polygon':false()} ? xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-156.xq"), Qry1),
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

'Lookup-157'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'decimal':true(), 'integer':true(), 'polygon':false()} ? Q{}integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-157.xq"), Qry1),
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

'Lookup-158'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[map{'decimal':true(), 'integer':true(), 'polygon':false()}, map{}] ?1?decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-158.xq"), Qry1),
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

'Lookup-159'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "map{'decimal':true(), 'integer':true(), 'polygon':[11,22,33]}?polygon?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-159.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "22") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-160'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "some $x in map{'decimal':true(), 'integer':true(), 'polygon':false()}?* satisfies $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-160.xq"), Qry1),
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

'Lookup-161'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(map{'decimal':true(), 'integer':true(), 'polygon':false()}?*[.])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-161.xq"), Qry1),
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

'Lookup-162'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "max(map{'decimal':12, 'integer':18, 'polygon':-4}?*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-162.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "18") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-163'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1.1:1, 2.2:2, 3.3:3},  map{1.1:2, 2.2:3, 3.3:4})?2.2 ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-163.xq"), Qry1),
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

'Lookup-164'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(map{1.1:1, 2.2:2, 3.3:3},  map{1.1:2, 2.2:3, 3.3:4})?(2.2) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-164.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "2, 3") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-165'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := map{\"div\":18} return $x?div",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-165.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "18") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-166'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := map{\"else\":18} return exists($x[?else = 18])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-166.xq"), Qry1),
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

'Lookup-167'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := map{\"div\":81, \"div-2\":18} return $x?div-2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-167.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "18") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-168'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := map{\"else\":81, \"else-2\":18} return exists($x[?else-2 = 18])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-168.xq"), Qry1),
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

'Lookup-211'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[1, 2, 3](1.1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-211.xq"), Qry1),
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

'Lookup-212'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[1, 2, 3]?0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-212.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-213'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[1, 2, 3]?4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-213.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-214'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[1, 2, 3](-1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-214.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-215'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $k := 2 to 3 return ['A', 'B', 'C']?($k)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-215.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "('B', 'C')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-216'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "['A', 'B', 'C']?(2 to 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-216.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "('B', 'C')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-217'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "['A', 'B', 'C']?*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-217.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "('A', 'B', 'C')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-218'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:data([['A', 'B', 'C'], ['D', 'E'], []]?2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-218.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "('D', 'E')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-219'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:data([['A', 'B', 'C'], ['D', 'E'], []]?3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-219.xq"), Qry1),
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

'Lookup-220'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[['A', 'B', 'C'], ['D', 'E'], []]?1?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-220.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'B'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-221'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:data([['A', 'B', 'C'], ['D', 'E'], []]?*?*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-221.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "('A', 'B', 'C', 'D', 'E')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-222'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[]?*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-222.xq"), Qry1),
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

'Lookup-223'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[]?*?*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-223.xq"), Qry1),
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

'Lookup-224'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[]?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-224.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-225'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['A', 'B', 'C'], ['D', 'E'])?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-225.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "('B', 'E')") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-226'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(['A', 'B', 'C'], ['D', 'E'], [])?2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-226.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAY0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Lookup-227'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "[[1, 2, 3], map:entry(3, 5)]?*?3",
    {Env, Opts} = xqerl_test:handle_environment(environment('map', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Lookup-227.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "(3, 5)") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
