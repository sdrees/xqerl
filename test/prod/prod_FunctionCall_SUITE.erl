-module('prod_FunctionCall_SUITE').

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

-export(['FunctionCall-001'/1]).
-export(['FunctionCall-002'/1]).
-export(['FunctionCall-003'/1]).
-export(['FunctionCall-004'/1]).
-export(['FunctionCall-005'/1]).
-export(['FunctionCall-006'/1]).
-export(['FunctionCall-007'/1]).
-export(['FunctionCall-008'/1]).
-export(['FunctionCall-009'/1]).
-export(['FunctionCall-010'/1]).
-export(['FunctionCall-011'/1]).
-export(['FunctionCall-012'/1]).
-export(['FunctionCall-013'/1]).
-export(['FunctionCall-014'/1]).
-export(['FunctionCall-015'/1]).
-export(['FunctionCall-016'/1]).
-export(['FunctionCall-017'/1]).
-export(['FunctionCall-018'/1]).
-export(['FunctionCall-019'/1]).
-export(['FunctionCall-020'/1]).
-export(['FunctionCall-021'/1]).
-export(['FunctionCall-022'/1]).
-export(['FunctionCall-023'/1]).
-export(['FunctionCall-025'/1]).
-export(['FunctionCall-026'/1]).
-export(['FunctionCall-027'/1]).
-export(['FunctionCall-028'/1]).
-export(['FunctionCall-029'/1]).
-export(['FunctionCall-030'/1]).
-export(['FunctionCall-031'/1]).
-export(['FunctionCall-032'/1]).
-export(['FunctionCall-033'/1]).
-export(['FunctionCall-034'/1]).
-export(['FunctionCall-035'/1]).
-export(['FunctionCall-036'/1]).
-export(['FunctionCall-037'/1]).
-export(['FunctionCall-038'/1]).
-export(['FunctionCall-039'/1]).
-export(['FunctionCall-040'/1]).
-export(['FunctionCall-041'/1]).
-export(['FunctionCall-042'/1]).
-export(['FunctionCall-043'/1]).
-export(['FunctionCall-044'/1]).
-export(['FunctionCall-045'/1]).
-export(['FunctionCall-046'/1]).
-export(['FunctionCall-047'/1]).
-export(['FunctionCall-048'/1]).
-export(['FunctionCall-049'/1]).
-export(['FunctionCall-050'/1]).
-export(['FunctionCall-051'/1]).
-export(['FunctionCall-052'/1]).
-export(['FunctionCall-053'/1]).
-export(['FunctionCall-054'/1]).
-export(['K-FunctionCallExpr-1'/1]).
-export(['K-FunctionCallExpr-2'/1]).
-export(['K-FunctionCallExpr-3'/1]).
-export(['K-FunctionCallExpr-4'/1]).
-export(['K-FunctionCallExpr-5'/1]).
-export(['K-FunctionCallExpr-6'/1]).
-export(['K-FunctionCallExpr-7'/1]).
-export(['K-FunctionCallExpr-8'/1]).
-export(['K-FunctionCallExpr-9'/1]).
-export(['K-FunctionCallExpr-10'/1]).
-export(['K-FunctionCallExpr-11'/1]).
-export(['K-FunctionCallExpr-12'/1]).
-export(['K-FunctionCallExpr-13'/1]).
-export(['K-FunctionCallExpr-14'/1]).
-export(['K-FunctionCallExpr-15'/1]).
-export(['K-FunctionCallExpr-15a'/1]).
-export(['K-FunctionCallExpr-16'/1]).
-export(['K-FunctionCallExpr-16a'/1]).
-export(['K-FunctionCallExpr-17'/1]).
-export(['K-FunctionCallExpr-17a'/1]).
-export(['K-FunctionCallExpr-18'/1]).
-export(['K-FunctionCallExpr-19'/1]).
-export(['K-FunctionCallExpr-20'/1]).
-export(['K-FunctionCallExpr-21'/1]).
-export(['K-FunctionCallExpr-22'/1]).
-export(['K-FunctionCallExpr-23'/1]).
-export(['K-FunctionCallExpr-24'/1]).
-export(['K-FunctionCallExpr-25'/1]).
-export(['K-FunctionCallExpr-25a'/1]).
-export(['K-FunctionCallExpr-26'/1]).
-export(['K-FunctionCallExpr-27'/1]).
-export(['K-FunctionCallExpr-28'/1]).
-export(['K2-FunctionCallExpr-1'/1]).
-export(['K2-FunctionCallExpr-2'/1]).
-export(['K2-FunctionCallExpr-3'/1]).
-export(['K2-FunctionCallExpr-4'/1]).
-export(['K2-FunctionCallExpr-5'/1]).
-export(['K2-FunctionCallExpr-6'/1]).
-export(['K2-FunctionCallExpr-7'/1]).
-export(['K2-FunctionCallExpr-8'/1]).
-export(['K2-FunctionCallExpr-9'/1]).
-export(['K2-FunctionCallExpr-10'/1]).
-export(['K2-FunctionCallExpr-11'/1]).
-export(['K2-FunctionCallExpr-12'/1]).
-export(['K2-FunctionCallExpr-13'/1]).
-export(['cbcl-promotion-001'/1]).
-export(['cbcl-promotion-002'/1]).
-export(['cbcl-promotion-003'/1]).
-export(['cbcl-promotion-004'/1]).
-export(['cbcl-promotion-005'/1]).
-export(['cbcl-promotion-006'/1]).
-export(['cbcl-promotion-007'/1]).
-export(['function-call-reserved-function-names-001'/1]).
-export(['function-call-reserved-function-names-002'/1]).
-export(['function-call-reserved-function-names-003'/1]).
-export(['function-call-reserved-function-names-004'/1]).
-export(['function-call-reserved-function-names-005'/1]).
-export(['function-call-reserved-function-names-006'/1]).
-export(['function-call-reserved-function-names-007'/1]).
-export(['function-call-reserved-function-names-008'/1]).
-export(['function-call-reserved-function-names-009'/1]).
-export(['function-call-reserved-function-names-010'/1]).
-export(['function-call-reserved-function-names-011'/1]).
-export(['function-call-reserved-function-names-012'/1]).
-export(['function-call-reserved-function-names-013'/1]).
-export(['function-call-reserved-function-names-014'/1]).
-export(['function-call-reserved-function-names-015'/1]).
-export(['function-call-reserved-function-names-016'/1]).
-export(['function-call-reserved-function-names-017'/1]).
-export(['function-call-reserved-function-names-018'/1]).
-export(['function-call-reserved-function-names-019'/1]).
-export(['function-call-reserved-function-names-020'/1]).
-export(['function-call-reserved-function-names-021'/1]).
-export(['function-call-reserved-function-names-022'/1]).
-export(['function-call-reserved-function-names-023'/1]).
-export(['function-call-reserved-function-names-024'/1]).
-export(['function-call-reserved-function-names-025'/1]).
-export(['function-call-reserved-function-names-026'/1]).
-export(['function-call-reserved-function-names-027'/1]).
-export(['function-call-reserved-function-names-028'/1]).
-export(['function-call-reserved-function-names-029'/1]).
-export(['function-call-reserved-function-names-030'/1]).
-export(['function-call-reserved-function-names-031'/1]).
-export(['function-call-reserved-function-names-032'/1]).
-export(['function-call-reserved-function-names-033'/1]).
-export(['function-call-reserved-function-names-034'/1]).
-export(['function-call-reserved-function-names-035'/1]).
-export(['function-call-reserved-function-names-036'/1]).
-export(['function-call-reserved-function-names-037'/1]).
-export(['function-call-reserved-function-names-038'/1]).
-export(['function-call-reserved-function-names-039'/1]).
-export(['function-call-reserved-function-names-040'/1]).
-export(['function-call-reserved-function-names-041'/1]).
-export(['function-call-reserved-function-names-042'/1]).
-export(['function-call-reserved-function-names-043'/1]).
-export(['function-call-reserved-function-names-044'/1]).
-export(['function-call-reserved-function-names-045'/1]).
-export(['function-call-reserved-function-names-046'/1]).

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
        {group, group_4},
        {group, group_5},
        {group, group_6}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'FunctionCall-001',
            'FunctionCall-002',
            'FunctionCall-003',
            'FunctionCall-004',
            'FunctionCall-005',
            'FunctionCall-006',
            'FunctionCall-007',
            'FunctionCall-008',
            'FunctionCall-009',
            'FunctionCall-010',
            'FunctionCall-011',
            'FunctionCall-012',
            'FunctionCall-013',
            'FunctionCall-014',
            'FunctionCall-015',
            'FunctionCall-016',
            'FunctionCall-017',
            'FunctionCall-018',
            'FunctionCall-019',
            'FunctionCall-020',
            'FunctionCall-021',
            'FunctionCall-022',
            'FunctionCall-023'
        ]},
        {group_1, [parallel], [
            'FunctionCall-025',
            'FunctionCall-026',
            'FunctionCall-027',
            'FunctionCall-028',
            'FunctionCall-029',
            'FunctionCall-030',
            'FunctionCall-031',
            'FunctionCall-032',
            'FunctionCall-033',
            'FunctionCall-034',
            'FunctionCall-035',
            'FunctionCall-036',
            'FunctionCall-037',
            'FunctionCall-038',
            'FunctionCall-039',
            'FunctionCall-040',
            'FunctionCall-041',
            'FunctionCall-042',
            'FunctionCall-043',
            'FunctionCall-044',
            'FunctionCall-045',
            'FunctionCall-046',
            'FunctionCall-047',
            'FunctionCall-048'
        ]},
        {group_2, [parallel], [
            'FunctionCall-049',
            'FunctionCall-050',
            'FunctionCall-051',
            'FunctionCall-052',
            'FunctionCall-053',
            'FunctionCall-054',
            'K-FunctionCallExpr-1',
            'K-FunctionCallExpr-2',
            'K-FunctionCallExpr-3',
            'K-FunctionCallExpr-4',
            'K-FunctionCallExpr-5',
            'K-FunctionCallExpr-6',
            'K-FunctionCallExpr-7',
            'K-FunctionCallExpr-8',
            'K-FunctionCallExpr-9',
            'K-FunctionCallExpr-10',
            'K-FunctionCallExpr-11',
            'K-FunctionCallExpr-12',
            'K-FunctionCallExpr-13',
            'K-FunctionCallExpr-14',
            'K-FunctionCallExpr-15',
            'K-FunctionCallExpr-15a',
            'K-FunctionCallExpr-16',
            'K-FunctionCallExpr-16a'
        ]},
        {group_3, [parallel], [
            'K-FunctionCallExpr-17',
            'K-FunctionCallExpr-17a',
            'K-FunctionCallExpr-18',
            'K-FunctionCallExpr-19',
            'K-FunctionCallExpr-20',
            'K-FunctionCallExpr-21',
            'K-FunctionCallExpr-22',
            'K-FunctionCallExpr-23',
            'K-FunctionCallExpr-24',
            'K-FunctionCallExpr-25',
            'K-FunctionCallExpr-25a',
            'K-FunctionCallExpr-26',
            'K-FunctionCallExpr-27',
            'K-FunctionCallExpr-28',
            'K2-FunctionCallExpr-1',
            'K2-FunctionCallExpr-2',
            'K2-FunctionCallExpr-3',
            'K2-FunctionCallExpr-4',
            'K2-FunctionCallExpr-5',
            'K2-FunctionCallExpr-6',
            'K2-FunctionCallExpr-7',
            'K2-FunctionCallExpr-8',
            'K2-FunctionCallExpr-9',
            'K2-FunctionCallExpr-10'
        ]},
        {group_4, [parallel], [
            'K2-FunctionCallExpr-11',
            'K2-FunctionCallExpr-12',
            'K2-FunctionCallExpr-13',
            'cbcl-promotion-001',
            'cbcl-promotion-002',
            'cbcl-promotion-003',
            'cbcl-promotion-004',
            'cbcl-promotion-005',
            'cbcl-promotion-006',
            'cbcl-promotion-007',
            'function-call-reserved-function-names-001',
            'function-call-reserved-function-names-002',
            'function-call-reserved-function-names-003',
            'function-call-reserved-function-names-004',
            'function-call-reserved-function-names-005',
            'function-call-reserved-function-names-006',
            'function-call-reserved-function-names-007',
            'function-call-reserved-function-names-008',
            'function-call-reserved-function-names-009',
            'function-call-reserved-function-names-010',
            'function-call-reserved-function-names-011',
            'function-call-reserved-function-names-012',
            'function-call-reserved-function-names-013',
            'function-call-reserved-function-names-014'
        ]},
        {group_5, [parallel], [
            'function-call-reserved-function-names-015',
            'function-call-reserved-function-names-016',
            'function-call-reserved-function-names-017',
            'function-call-reserved-function-names-018',
            'function-call-reserved-function-names-019',
            'function-call-reserved-function-names-020',
            'function-call-reserved-function-names-021',
            'function-call-reserved-function-names-022',
            'function-call-reserved-function-names-023',
            'function-call-reserved-function-names-024',
            'function-call-reserved-function-names-025',
            'function-call-reserved-function-names-026',
            'function-call-reserved-function-names-027',
            'function-call-reserved-function-names-028',
            'function-call-reserved-function-names-029',
            'function-call-reserved-function-names-030',
            'function-call-reserved-function-names-031',
            'function-call-reserved-function-names-032',
            'function-call-reserved-function-names-033',
            'function-call-reserved-function-names-034',
            'function-call-reserved-function-names-035',
            'function-call-reserved-function-names-036',
            'function-call-reserved-function-names-037',
            'function-call-reserved-function-names-038'
        ]},
        {group_6, [parallel], [
            'function-call-reserved-function-names-039',
            'function-call-reserved-function-names-040',
            'function-call-reserved-function-names-041',
            'function-call-reserved-function-names-042',
            'function-call-reserved-function-names-043',
            'function-call-reserved-function-names-044',
            'function-call-reserved-function-names-045',
            'function-call-reserved-function-names-046'
        ]}
    ].

environment('ListUnionTypes', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "ValidateExpr/listunion.xsd"),
                "http://www.w3.org/XQueryTest/ListUnionTypes"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('unionListDefined', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/unionListDefined.xsd"),
                "http://www.w3.org/XQueryTest/unionListDefined"}
        ]},
        {resources, []},
        {modules, []}
    ].

'FunctionCall-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(<a>X</a>, <a>Y</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "XY") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'FunctionCall-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(<a>0</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-002.xq"), Qry1),
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

'FunctionCall-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:f($in as xs:boolean) as xs:boolean { $in };\n"
        "         local:f(<a>0</a>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-004.xq"), Qry1),
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

'FunctionCall-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function ($in as xs:boolean) as xs:boolean { $in }\n"
        "         return $f(<a>0</a>)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-006.xq"), Qry1),
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

'FunctionCall-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($in as xs:decimal*) as xs:decimal {sum($in, 0.0)};\n"
        "        local:f(xs:NMTOKENS('1 1.2 1.3 1.4')!xs:untypedAtomic(.))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-009.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "xs:decimal") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "4.9") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
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

'FunctionCall-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'FunctionCall-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'FunctionCall-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'FunctionCall-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($a as xs:integer, $b as xs:integer) as xs:integer {\n"
        "          data(<a>{$a}{$b}</a>)\n"
        "        };\n"
        "        local:f(12, 34)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-013.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1234") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
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

'FunctionCall-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $f := function($a as xs:integer, $b as xs:integer) as xs:integer {\n"
        "          data(<a>{$a}{$b}</a>)\n"
        "        }\n"
        "        return $f(12, 34)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-014.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1234") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
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

'FunctionCall-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'FunctionCall-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:unique($in as xs:integer*) as xs:boolean { count($in) = count(distinct-values($in)) };\n"
        "         (local:unique([1,2,3,4,5]), local:unique([1,2,3,4,4]))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-022.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "true(), false()") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'FunctionCall-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "string-join((<a>X</a>, <a>Y</a>, <a>Z</a>), '')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-023.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "XYZ") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'FunctionCall-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'FunctionCall-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'FunctionCall-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30+"}.

'FunctionCall-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP30 XQ30"}.

'FunctionCall-045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function($x) {}\n"
        "         return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-045.xq"), Qry1),
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

'FunctionCall-046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function($x) { (: there's nothing here :)}\n"
        "         return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-046.xq"), Qry1),
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

'FunctionCall-047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function($x as xs:integer) as xs:integer? { (: there's nothing here :)}\n"
        "         return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-047.xq"), Qry1),
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

'FunctionCall-048'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $f := function($x as xs:integer) as xs:integer { (: there's nothing here :) }\n"
        "         return $f(2)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "FunctionCall-048.xq"), Qry1),
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

'FunctionCall-049'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-050'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-051'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-052'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-053'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'FunctionCall-054'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'K-FunctionCallExpr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "func-does-not-exist(1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-1.xq"),
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

'K-FunctionCallExpr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:func-does-not-exist(1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-2.xq"),
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

'K-FunctionCallExpr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:func-does-not-exist(1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-3.xq"),
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

'K-FunctionCallExpr-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "local:func-does-not-exist(1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-4.xq"),
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

'K-FunctionCallExpr-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "prefix-does-not-exist:func-does-not-exist(1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0081") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-FunctionCallExpr-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "f:f:()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-6.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0081") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
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

'K-FunctionCallExpr-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = ":f()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-7.xq"),
                Qry1
            ),
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

'K-FunctionCallExpr-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = ":f()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-8.xq"),
                Qry1
            ),
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

'K-FunctionCallExpr-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1fd()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-9.xq"),
                Qry1
            ),
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

'K-FunctionCallExpr-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "p:f:lname()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-10.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0081") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
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

'K-FunctionCallExpr-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "document(\"example.com/file.ext\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-11.xq"),
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

'K-FunctionCallExpr-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'K-FunctionCallExpr-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'K-FunctionCallExpr-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "key('func', \"a value\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-14.xq"),
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

'K-FunctionCallExpr-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10 XP20"}.

'K-FunctionCallExpr-15a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "format-number(3, \"0000\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-15a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"0003\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-FunctionCallExpr-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10 XP20"}.

'K-FunctionCallExpr-16a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(format-time(current-time(), \"[H01]:[m01]\"), \"[0-2][0-9]:[0-5][0-9]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-16a.xq"),
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

'K-FunctionCallExpr-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10 XP20"}.

'K-FunctionCallExpr-17a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "matches(format-time(current-time(), \"[H01]:[m01]\", (), (), ()), \"..:..\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-17a.xq"),
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

'K-FunctionCallExpr-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "matches(format-dateTime(current-dateTime(), \"[Y0001]-[M01]-[D01]\"), \"[0-9]{4}-[0-9]{2}-[0-9]{2}\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-18.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
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

'K-FunctionCallExpr-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "matches(format-dateTime(current-dateTime(), \"[Y0001]-[M01]-[D01]\", (), (), ()), \"....-..-..\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-19.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
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

'K-FunctionCallExpr-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "matches(format-dateTime(current-dateTime(), \"[M01]/[D01]/[Y0001] at [H01]:[m01]:[s01]\"), \"[0-1][0-9]/[0-3][0-9]/[0-9]{4} at [0-9]{2}:[0-9]{2}:[0-9]{2}\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-20.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
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

'K-FunctionCallExpr-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "matches(format-dateTime(current-dateTime(), \"[M01]/[D01]/[Y0001] at [H01]:[m01]:[s01]\", (), (), ()), \"../../.... at ..:..:..\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-21.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0017") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
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

'K-FunctionCallExpr-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "current()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-22.xq"),
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

'K-FunctionCallExpr-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "unparsed-entity-uri(\"example.com/file.ext\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-23.xq"),
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

'K-FunctionCallExpr-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "unparsed-entity-public-id(\"entity\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-24.xq"),
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

'K-FunctionCallExpr-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-FunctionCallExpr-25a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id(<a/>) castable as xs:NCName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-25a.xq"),
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

'K-FunctionCallExpr-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "system-property(\"xsl:vendor\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-26.xq"),
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

'K-FunctionCallExpr-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:escape-uri(\"http:/example.com/\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-27.xq"),
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

'K-FunctionCallExpr-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:sub-sequence(\"http:/example.com/\", 1, 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-FunctionCallExpr-28.xq"),
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

'K2-FunctionCallExpr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:bar($c, $d, $e, $f, $g, $h, $i, $j, $a, $b) { 1 }; \n"
        "        declare function local:moo($k) { $k }; \n"
        "        local:moo(1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-1.xq"),
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

'K2-FunctionCallExpr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "current-grouping-key()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-2.xq"),
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

'K2-FunctionCallExpr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "current()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-3.xq"),
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

'K2-FunctionCallExpr-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "unparsed-entity-uri(\"str\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-4.xq"),
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

'K2-FunctionCallExpr-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "unparsed-entity-public-id(\"str\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-5.xq"),
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

'K2-FunctionCallExpr-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'K2-FunctionCallExpr-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'K2-FunctionCallExpr-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "system-property(\"property\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-8.xq"),
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

'K2-FunctionCallExpr-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "key(\"id\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-9.xq"),
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

'K2-FunctionCallExpr-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $a := <a/>; \n"
        "        declare function local:testSingleNodeIdentity($node as node()) { $node is $node }; \n"
        "        declare function local:testDoubleNodeIdentity($a as node(), $b as node()) { $a is $b }; \n"
        "        local:testSingleNodeIdentity(<a/>), local:testDoubleNodeIdentity(<a/>, <b/>), local:testDoubleNodeIdentity($a, $a)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-10.xq"),
                Qry1
            ),
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

'K2-FunctionCallExpr-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:compare($arg1 as xs:string, $arg2 as xs:string) { \n"
        "            let $cps1 := string-to-codepoints($arg1), \n"
        "            $cps2 := string-to-codepoints($arg2) \n"
        "            return abs(count($cps1) - count($cps2)) + sum(for $x in 1 to min((count($cps1), count($cps2))) \n"
        "                                                          return if ($cps1[$x] ne $cps2[$x]) then 1 else ()) }; \n"
        "        local:compare(\"\", \"\"), \n"
        "        local:compare(\"a\", \"\"), \n"
        "        local:compare(\"\", \"a\"), \n"
        "        local:compare(\"a\", \"a\"), \n"
        "        local:compare(\"\", \"aa\"), \n"
        "        local:compare(\"aa\", \"ab\"), \n"
        "        local:compare(\"ba\", \"ba\"), \n"
        "        local:compare(\"bab\", \"bbb\"), \n"
        "        local:compare(\"aba\", \"bab\")\n"
        "     ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0 1 1 0 2 1 0 1 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-FunctionCallExpr-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:func1() { if(local:func2('b')) then 3 else local:func1() }; \n"
        "        declare function local:func2($a) { if(matches(\"\",$a)) then () else 4 }; \n"
        "        local:func1()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-12.xq"),
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

'K2-FunctionCallExpr-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:foo($arg) { local:foo(local:foo(1)) }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-FunctionCallExpr-13.xq"),
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

'cbcl-promotion-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        string-join( (xs:anyURI('http://www.microsoft.com'), xs:anyURI('http://www.google.com/')), ' ')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-001.xq"),
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
            xqerl_test:assert_string_value(Res, "http://www.microsoft.com http://www.google.com/")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-promotion-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:index-of($seq as xs:double*, $item as xs:double) { for $x at $p in $seq return if ($x eq $item) then $p else () };\n"
        "        declare function local:sequence($x as xs:integer) { (\"string\", 1, 2.0, xs:float(3))[$x] };\n"
        "        local:index-of(for $x in (2,3,4) return local:sequence($x), 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-002.xq"),
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

'cbcl-promotion-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:index-of($seq as xs:integer*, $item as xs:integer?) as xs:float* { \n"
        "          if (empty($item)) \n"
        "            then -1\n"
        "            else for $x at $p in $seq return if ($x eq $item) then $p else () \n"
        "        };\n"
        "        local:index-of(1 to 10, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-promotion-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f() as xs:double* { \n"
        "          if (day-from-date(current-date()) < 32) then xs:integer(3) else -1\n"
        "        };\n"
        "        local:f() + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-004.xq"),
                Qry1
            ),
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

'cbcl-promotion-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:index-of($seq, $item) as xs:double? { for $x at $p in $seq return if ($x eq $item) then $p else () };\n"
        "        local:index-of((1, 2.0, xs:float(3), 2), 2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-005.xq"),
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

'cbcl-promotion-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($arg as xs:anyAtomicType?) { $arg };\n"
        "        local:f(index-of((1,2,3,2),2))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-006.xq"),
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

'cbcl-promotion-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($v as xs:double*) as xs:double+ { if (empty($v)) then 0 else $v };\n"
        "        declare function local:g($v as xs:double*) as xs:double+ { local:f($v) };\n"
        "        local:g((1,2,3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-promotion-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'function-call-reserved-function-names-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:attribute($arg) { fn:true() };\n"
        "	attribute(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-001.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:comment($arg) { fn:true() };\n"
        "	comment(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-002.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:document-node($arg) { fn:true() };\n"
        "	document-node(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-003.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:element($arg) { fn:true() };\n"
        "	element(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-004.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:empty-sequence() { fn:true() };\n"
        "	empty-sequence()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-005.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:if() { fn:true() };\n"
        "	if()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-006.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:item($arg) { fn:true() };\n"
        "	item(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-007.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:node($arg) { fn:true() };\n"
        "	node(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-008.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:processing-instruction($arg) { fn:true() };\n"
        "	processing-instruction(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-009.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:schema-attribute() { fn:true() };\n"
        "	schema-attribute()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-010.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:schema-element() { fn:true() };\n"
        "	schema-element()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-011.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:text($arg) { fn:true() };\n"
        "	text(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-012.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:typeswitch() { fn:true() };\n"
        "	typeswitch()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-013.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'function-call-reserved-function-names-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'function-call-reserved-function-names-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'function-call-reserved-function-names-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:function() { fn:true() };\n"
        "	function()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-017.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:namespace-node($arg) { fn:true() };\n"
        "	namespace-node(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-018.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQST0134") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0134 " ++ binary_to_list(F)};
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

'function-call-reserved-function-names-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:switch() { fn:true() };\n"
        "	switch()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-019.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	attribute(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-020.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	comment(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-021.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	document-node(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-022.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	element(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-023.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	empty-sequence()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-024.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	if()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-025.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	item()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-026.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	node(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-027.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	processing-instruction(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-028.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	schema-attribute()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-029.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	schema-element()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-030.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	text(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-031.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	typeswitch()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-032.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'function-call-reserved-function-names-034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20"}.

'function-call-reserved-function-names-035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'function-call-reserved-function-names-036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	function()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-036.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	namespace-node(1)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-037.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQST0134") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0134 " ++ binary_to_list(F)};
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

'function-call-reserved-function-names-038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	switch()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-038.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10 XQ30"}.

'function-call-reserved-function-names-040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:array() { fn:true() };\n"
        "	array()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-040.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XP30 XQ10 XQ30"}.

'function-call-reserved-function-names-042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	array()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-042.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10 XQ30"}.

'function-call-reserved-function-names-044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	declare default function namespace \"http://www.w3.org/2005/xquery-local-functions\";\n"
        "	declare function local:map() { fn:true() };\n"
        "	map()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-044.xq"),
                Qry1
            ),
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

'function-call-reserved-function-names-045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XP30 XQ10 XQ30"}.

'function-call-reserved-function-names-046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "	map()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "function-call-reserved-function-names-046.xq"),
                Qry1
            ),
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
