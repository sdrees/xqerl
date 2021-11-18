-module('prod_TryCatchExpr_SUITE').

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

-export(['try-001'/1]).
-export(['try-002'/1]).
-export(['try-003'/1]).
-export(['try-004'/1]).
-export(['try-005'/1]).
-export(['try-006'/1]).
-export(['try-007'/1]).
-export(['try-008'/1]).
-export(['try-009'/1]).
-export(['try-010'/1]).
-export(['try-011'/1]).
-export(['try-012'/1]).
-export(['try-013'/1]).
-export(['try-014'/1]).
-export(['try-015'/1]).
-export(['try-016'/1]).
-export(['try-017'/1]).
-export(['try-018'/1]).
-export(['try-019'/1]).
-export(['try-020'/1]).
-export(['try-021'/1]).
-export(['no-try-catch-1'/1]).
-export(['no-try-catch-2'/1]).
-export(['no-try-catch-3'/1]).
-export(['try-catch-dynamic-error-1'/1]).
-export(['try-catch-dynamic-error-2'/1]).
-export(['try-catch-dynamic-error-3'/1]).
-export(['try-catch-dynamic-error-4'/1]).
-export(['try-catch-static-error-1'/1]).
-export(['try-catch-static-error-2'/1]).
-export(['try-catch-static-error-3'/1]).
-export(['try-catch-static-error-4'/1]).
-export(['try-catch-type-error-1'/1]).
-export(['try-catch-type-error-2'/1]).
-export(['try-catch-type-error-3'/1]).
-export(['try-catch-type-error-4'/1]).
-export(['try-catch-dynamic-error-outside-before-1'/1]).
-export(['try-catch-dynamic-error-outside-before-2'/1]).
-export(['try-catch-dynamic-error-outside-before-3'/1]).
-export(['try-catch-dynamic-error-outside-before-4'/1]).
-export(['try-catch-dynamic-error-outside-after-1'/1]).
-export(['try-catch-dynamic-error-outside-after-2'/1]).
-export(['try-catch-dynamic-error-outside-after-3'/1]).
-export(['try-catch-dynamic-error-outside-after-4'/1]).
-export(['try-catch-dynamic-error-outside-1'/1]).
-export(['try-catch-dynamic-error-outside-2'/1]).
-export(['try-catch-dynamic-error-outside-3'/1]).
-export(['try-catch-dynamic-error-outside-4'/1]).
-export(['try-catch-dynamic-error-outside-5'/1]).
-export(['try-catch-dynamic-error-outside-6'/1]).
-export(['try-catch-dynamic-error-outside-7'/1]).
-export(['try-catch-dynamic-error-outside-8'/1]).
-export(['try-catch-no-error-1'/1]).
-export(['try-catch-no-error-2'/1]).
-export(['try-catch-no-error-3'/1]).
-export(['try-catch-no-error-4'/1]).
-export(['try-catch-no-error-5'/1]).
-export(['try-catch-name-tests-namespace-1'/1]).
-export(['try-catch-name-tests-namespace-2'/1]).
-export(['try-catch-name-no-matching-catch-clause-1'/1]).
-export(['try-catch-name-no-matching-catch-clause-2'/1]).
-export(['try-catch-name-no-matching-catch-clause-3'/1]).
-export(['try-catch-name-no-matching-catch-clause-4'/1]).
-export(['try-catch-name-no-matching-catch-clause-5'/1]).
-export(['try-catch-name-no-matching-catch-clause-6'/1]).
-export(['try-catch-several-name-tests-1'/1]).
-export(['try-catch-several-name-tests-2'/1]).
-export(['try-catch-several-name-tests-3'/1]).
-export(['try-catch-first-matching-catch-clause-1'/1]).
-export(['try-catch-first-matching-catch-clause-2'/1]).
-export(['try-catch-first-matching-catch-clause-3'/1]).
-export(['try-catch-first-matching-catch-clause-4'/1]).
-export(['try-catch-first-matching-catch-clause-5'/1]).
-export(['try-catch-first-matching-catch-clause-6'/1]).
-export(['try-catch-first-matching-catch-clause-7'/1]).
-export(['try-catch-first-matching-catch-clause-8'/1]).
-export(['try-catch-first-matching-catch-clause-9'/1]).
-export(['try-catch-first-matching-catch-clause-10'/1]).
-export(['try-catch-first-matching-catch-clause-11'/1]).
-export(['try-catch-first-matching-catch-clause-12'/1]).
-export(['try-catch-err-code-variable-1'/1]).
-export(['try-catch-err-code-variable-2'/1]).
-export(['try-catch-err-code-variable-3'/1]).
-export(['try-catch-err-code-variable-4'/1]).
-export(['try-catch-err-code-variable-5'/1]).
-export(['try-catch-err-code-variable-6'/1]).
-export(['try-catch-err-code-variable-7'/1]).
-export(['try-catch-err-code-variable-8'/1]).
-export(['try-catch-err-code-variable-9'/1]).
-export(['try-catch-err-code-variable-10'/1]).
-export(['try-catch-err-code-variable-11'/1]).
-export(['try-catch-err-code-variable-12'/1]).
-export(['try-catch-err-code-variable-13'/1]).
-export(['try-catch-err-code-variable-14'/1]).
-export(['try-catch-err-description-variable-1'/1]).
-export(['try-catch-err-description-variable-2'/1]).
-export(['try-catch-err-description-variable-3'/1]).
-export(['try-catch-err-value-variable-1'/1]).
-export(['try-catch-err-value-variable-2'/1]).
-export(['try-catch-err-value-variable-3'/1]).
-export(['try-catch-err-module-variable-1'/1]).
-export(['try-catch-err-module-variable-2'/1]).
-export(['try-catch-err-module-variable-3'/1]).
-export(['try-catch-err-line-number-variable-1'/1]).
-export(['try-catch-err-line-number-variable-2'/1]).
-export(['try-catch-err-line-number-variable-3'/1]).
-export(['try-catch-err-column-number-variable-1'/1]).
-export(['try-catch-err-column-number-variable-2'/1]).
-export(['try-catch-err-column-number-variable-3'/1]).
-export(['try-catch-err-other-variable-1'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-1'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-2'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-3'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-4'/1]).
-export(['try-catch-err-dynamic-error-in-catch-clause-5'/1]).
-export(['try-catch-function-call-1'/1]).
-export(['try-catch-function-call-2'/1]).
-export(['try-catch-function-call-3'/1]).
-export(['try-catch-function-call-4'/1]).
-export(['try-catch-error-function-with-static-error-code'/1]).
-export(['try-catch-variable-binding-outside-1'/1]).
-export(['try-catch-variable-binding-outside-2'/1]).
-export(['try-catch-variable-binding-outside-3'/1]).
-export(['try-catch-variable-binding-outside-4'/1]).
-export(['try-catch-variable-binding-outside-5'/1]).
-export(['try-catch-variable-binding-outside-6'/1]).
-export(['try-catch-optimizations-1'/1]).
-export(['try-catch-optimizations-2'/1]).
-export(['try-catch-optimizations-3'/1]).
-export(['try-catch-spec-example-1'/1]).
-export(['try-catch-spec-example-2'/1]).
-export(['try-catch-spec-example-3'/1]).
-export(['try-catch-spec-example-4'/1]).
-export(['try-catch-spec-example-5'/1]).
-export(['try-catch-function-result-type-1'/1]).
-export(['try-catch-all-dynamic-errors-caught-1'/1]).
-export(['try-catch-all-dynamic-errors-caught-2'/1]).
-export(['try-catch-all-dynamic-errors-caught-3'/1]).
-export(['try-catch-all-dynamic-errors-caught-4'/1]).
-export(['try-catch-all-dynamic-errors-caught-5'/1]).
-export(['try-catch-all-dynamic-errors-caught-6'/1]).
-export(['try-catch-all-dynamic-errors-caught-7'/1]).
-export(['try-catch-all-dynamic-errors-caught-8'/1]).
-export(['try-catch-all-dynamic-errors-caught-9'/1]).
-export(['try-catch-all-dynamic-errors-caught-10'/1]).
-export(['try-catch-all-dynamic-errors-caught-11'/1]).
-export(['try-catch-all-dynamic-errors-caught-12'/1]).
-export(['try-catch-all-dynamic-errors-caught-13'/1]).
-export(['try-catch-all-dynamic-errors-caught-13b'/1]).
-export(['try-catch-all-dynamic-errors-caught-14'/1]).
-export(['try-catch-all-dynamic-errors-caught-15'/1]).
-export(['try-catch-nest-1'/1]).
-export(['try-catch-nest-2'/1]).
-export(['try-catch-fn-error-1'/1]).
-export(['try-catch-fn-error-2'/1]).
-export(['try-catch-fn-error-3'/1]).
-export(['try-catch-fn-error-4'/1]).
-export(['try-catch-fn-error-5'/1]).
-export(['try-catch-fn-error-6'/1]).
-export(['try-catch-fn-error-7'/1]).
-export(['try-catch-fn-error-8'/1]).
-export(['try-catch-fn-error-9'/1]).
-export(['try-catch-fn-error-10'/1]).
-export(['try-catch-fn-error-11'/1]).
-export(['try-catch-fn-error-12'/1]).
-export(['try-catch-fn-error-13'/1]).
-export(['try-catch-fn-error-14'/1]).
-export(['try-catch-fn-error-15'/1]).
-export(['try-catch-fn-error-16'/1]).
-export(['try-catch-fn-error-17'/1]).
-export(['try-catch-fn-error-18'/1]).
-export(['try-catch-fn-error-19'/1]).
-export(['try-catch-fn-error-20'/1]).

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
        {group, group_6},
        {group, group_7}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'try-001',
            'try-002',
            'try-003',
            'try-004',
            'try-005',
            'try-006',
            'try-007',
            'try-008',
            'try-009',
            'try-010',
            'try-011',
            'try-012',
            'try-013',
            'try-014',
            'try-015',
            'try-016',
            'try-017',
            'try-018',
            'try-019',
            'try-020',
            'try-021',
            'no-try-catch-1',
            'no-try-catch-2'
        ]},
        {group_1, [parallel], [
            'no-try-catch-3',
            'try-catch-dynamic-error-1',
            'try-catch-dynamic-error-2',
            'try-catch-dynamic-error-3',
            'try-catch-dynamic-error-4',
            'try-catch-static-error-1',
            'try-catch-static-error-2',
            'try-catch-static-error-3',
            'try-catch-static-error-4',
            'try-catch-type-error-1',
            'try-catch-type-error-2',
            'try-catch-type-error-3',
            'try-catch-type-error-4',
            'try-catch-dynamic-error-outside-before-1',
            'try-catch-dynamic-error-outside-before-2',
            'try-catch-dynamic-error-outside-before-3',
            'try-catch-dynamic-error-outside-before-4',
            'try-catch-dynamic-error-outside-after-1',
            'try-catch-dynamic-error-outside-after-2',
            'try-catch-dynamic-error-outside-after-3',
            'try-catch-dynamic-error-outside-after-4',
            'try-catch-dynamic-error-outside-1',
            'try-catch-dynamic-error-outside-2',
            'try-catch-dynamic-error-outside-3'
        ]},
        {group_2, [parallel], [
            'try-catch-dynamic-error-outside-4',
            'try-catch-dynamic-error-outside-5',
            'try-catch-dynamic-error-outside-6',
            'try-catch-dynamic-error-outside-7',
            'try-catch-dynamic-error-outside-8',
            'try-catch-no-error-1',
            'try-catch-no-error-2',
            'try-catch-no-error-3',
            'try-catch-no-error-4',
            'try-catch-no-error-5',
            'try-catch-name-tests-namespace-1',
            'try-catch-name-tests-namespace-2',
            'try-catch-name-no-matching-catch-clause-1',
            'try-catch-name-no-matching-catch-clause-2',
            'try-catch-name-no-matching-catch-clause-3',
            'try-catch-name-no-matching-catch-clause-4',
            'try-catch-name-no-matching-catch-clause-5',
            'try-catch-name-no-matching-catch-clause-6',
            'try-catch-several-name-tests-1',
            'try-catch-several-name-tests-2',
            'try-catch-several-name-tests-3',
            'try-catch-first-matching-catch-clause-1',
            'try-catch-first-matching-catch-clause-2',
            'try-catch-first-matching-catch-clause-3'
        ]},
        {group_3, [parallel], [
            'try-catch-first-matching-catch-clause-4',
            'try-catch-first-matching-catch-clause-5',
            'try-catch-first-matching-catch-clause-6',
            'try-catch-first-matching-catch-clause-7',
            'try-catch-first-matching-catch-clause-8',
            'try-catch-first-matching-catch-clause-9',
            'try-catch-first-matching-catch-clause-10',
            'try-catch-first-matching-catch-clause-11',
            'try-catch-first-matching-catch-clause-12',
            'try-catch-err-code-variable-1',
            'try-catch-err-code-variable-2',
            'try-catch-err-code-variable-3',
            'try-catch-err-code-variable-4',
            'try-catch-err-code-variable-5',
            'try-catch-err-code-variable-6',
            'try-catch-err-code-variable-7',
            'try-catch-err-code-variable-8',
            'try-catch-err-code-variable-9',
            'try-catch-err-code-variable-10',
            'try-catch-err-code-variable-11',
            'try-catch-err-code-variable-12',
            'try-catch-err-code-variable-13',
            'try-catch-err-code-variable-14',
            'try-catch-err-description-variable-1'
        ]},
        {group_4, [parallel], [
            'try-catch-err-description-variable-2',
            'try-catch-err-description-variable-3',
            'try-catch-err-value-variable-1',
            'try-catch-err-value-variable-2',
            'try-catch-err-value-variable-3',
            'try-catch-err-module-variable-1',
            'try-catch-err-module-variable-2',
            'try-catch-err-module-variable-3',
            'try-catch-err-line-number-variable-1',
            'try-catch-err-line-number-variable-2',
            'try-catch-err-line-number-variable-3',
            'try-catch-err-column-number-variable-1',
            'try-catch-err-column-number-variable-2',
            'try-catch-err-column-number-variable-3',
            'try-catch-err-other-variable-1',
            'try-catch-err-dynamic-error-in-catch-clause-1',
            'try-catch-err-dynamic-error-in-catch-clause-2',
            'try-catch-err-dynamic-error-in-catch-clause-3',
            'try-catch-err-dynamic-error-in-catch-clause-4',
            'try-catch-err-dynamic-error-in-catch-clause-5',
            'try-catch-function-call-1',
            'try-catch-function-call-2',
            'try-catch-function-call-3',
            'try-catch-function-call-4'
        ]},
        {group_5, [parallel], [
            'try-catch-error-function-with-static-error-code',
            'try-catch-variable-binding-outside-1',
            'try-catch-variable-binding-outside-2',
            'try-catch-variable-binding-outside-3',
            'try-catch-variable-binding-outside-4',
            'try-catch-variable-binding-outside-5',
            'try-catch-variable-binding-outside-6',
            'try-catch-optimizations-1',
            'try-catch-optimizations-2',
            'try-catch-optimizations-3',
            'try-catch-spec-example-1',
            'try-catch-spec-example-2',
            'try-catch-spec-example-3',
            'try-catch-spec-example-4',
            'try-catch-spec-example-5',
            'try-catch-function-result-type-1',
            'try-catch-all-dynamic-errors-caught-1',
            'try-catch-all-dynamic-errors-caught-2',
            'try-catch-all-dynamic-errors-caught-3',
            'try-catch-all-dynamic-errors-caught-4',
            'try-catch-all-dynamic-errors-caught-5',
            'try-catch-all-dynamic-errors-caught-6',
            'try-catch-all-dynamic-errors-caught-7',
            'try-catch-all-dynamic-errors-caught-8'
        ]},
        {group_6, [parallel], [
            'try-catch-all-dynamic-errors-caught-9',
            'try-catch-all-dynamic-errors-caught-10',
            'try-catch-all-dynamic-errors-caught-11',
            'try-catch-all-dynamic-errors-caught-12',
            'try-catch-all-dynamic-errors-caught-13',
            'try-catch-all-dynamic-errors-caught-13b',
            'try-catch-all-dynamic-errors-caught-14',
            'try-catch-all-dynamic-errors-caught-15',
            'try-catch-nest-1',
            'try-catch-nest-2',
            'try-catch-fn-error-1',
            'try-catch-fn-error-2',
            'try-catch-fn-error-3',
            'try-catch-fn-error-4',
            'try-catch-fn-error-5',
            'try-catch-fn-error-6',
            'try-catch-fn-error-7',
            'try-catch-fn-error-8',
            'try-catch-fn-error-9',
            'try-catch-fn-error-10',
            'try-catch-fn-error-11',
            'try-catch-fn-error-12',
            'try-catch-fn-error-13',
            'try-catch-fn-error-14'
        ]},
        {group_7, [parallel], [
            'try-catch-fn-error-15',
            'try-catch-fn-error-16',
            'try-catch-fn-error-17',
            'try-catch-fn-error-18',
            'try-catch-fn-error-19',
            'try-catch-fn-error-20'
        ]}
    ].

environment('err', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xqt-errors", "err"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'try-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { doc('rubbish.xml') } catch * {\"ok\"}",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ok") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace err = \"http://www.w3.org/2005/xqt-errors\";\n"
        "        try { doc('rubbish.xml') } catch err:FODC0001 | err:FODC0002 | err:FODC0005 {\"ok\"}\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ok") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { doc('rubbish.xml') } catch *:FODC0001 | *:FODC0002 | *:FODC0005 {\"ok\"}",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ok") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        try { doc('rubbish.xml') } \n"
        "        catch err:FODC0001 {<caught-error code=\"FODC0001\"/>} \n"
        "        catch err:FODC0002 {<caught-error code=\"FODC0002\"/>} \n"
        "        catch err:FODC0005 {<caught-error code=\"FODC0005\"/>} \n"
        "        catch err:* {<caught-error code=\"other\"/>}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<caught-error code=\"FODC0002\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<out>{ try { doc('rubbish.xml') } catch * {<caught-error/>}, try { doc('rubbish.xml') } catch * {<caught-another/>} }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out><caught-error/><caught-another/></out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $doc := doc('rubbish.xml'); \n"
        "        try { $doc } catch * {<caught-error/>}\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODC0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODC0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $doc := doc('rubbish.xml') \n"
        "        return try { $doc } catch * {<caught-error/>}",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FODC0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FODC0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f() { doc('rubbish.xml') }; \n"
        "        try { local:f() } catch * {\"ok\"}\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ok") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($d as xs:integer) { 10 div $d }; \n"
        "        try { local:f(0) } catch err:FOAR0001 {\"ok\"}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-009.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ok") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($d as xs:integer) { 10 div $d };\n"
        "        try { local:f(0) } catch * {local-name-from-QName($err:code)}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-010.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "FOAR0001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($d as xs:integer) { 10 div $d };\n"
        "        declare variable $t as xs:string := \"text\";\n"
        "        try { local:f(0) } catch * { try { local:f($t cast as xs:integer) } catch * {local-name-from-QName($err:code)} }\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-011.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "FORG0001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($d as xs:integer) { 10 div $d };\n"
        "        try { local:f(0) } catch * {$err:description}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-012.xq"), Qry1),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_empty(Res) of
                        true -> {comment, "Empty"};
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

'try-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($d as xs:integer) { 10 div $d };\n"
        "        try { local:f(0) } catch * {$err:column-number, $err:line-number, $err:line-number}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-013.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer*") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 9999999999999999999999999999999999999999999999999999999999999999999999\n"
        "                idiv\n"
        "                9999999999999999999999999999999999999999999999999999999999999999999999 }\n"
        "        catch err:FOAR0002 {1}\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-014.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'try-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { xs:date('2013-02-29') }\n"
        "          catch err:FORG0001 {true()}\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-015.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'try-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:f() { .+3 };\n"
        "      try {local:f()} catch err:XPDY0002 {true()}\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-016.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'try-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare function local:f() { a };\n"
        "      try {local:f()} catch err:XPDY0002 {true()}\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-017.xq"), Qry1),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_error(Res, "XPTY0020") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0020 " ++ binary_to_list(F)};
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

'try-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      try {1 div 0}\n"
        "      catch local:foo | local:bar {'first'}\n"
        "      catch * {'second'}  \n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-018.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"second\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      try {}\n"
        "      catch * {'error'}  \n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-019.xq"), Qry1),
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

'try-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      try {1 div 0}\n"
        "      catch * {}  \n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-020.xq"), Qry1),
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

'try-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:f($d as xs:integer) { 10 div $d };\n"
        "        try { local:f(0) } catch * {\"caught \" || count($err:additional)}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-021.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "starts-with($result, 'caught')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'no-try-catch-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 div 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "no-try-catch-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'no-try-catch-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "no-try-catch-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'no-try-catch-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $i as xs:string := 1 return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "no-try-catch-3.xq"), Qry1),
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

'try-catch-dynamic-error-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"Division by zero\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"Division by zero\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:* { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"Division by zero\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch *:FOAR0001 { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"Division by zero\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-static-error-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { $x } catch * { \"Undefined variable\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-static-error-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-static-error-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { $x } catch err:XPST0008 { \"Undefined variable\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-static-error-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-static-error-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { $x } catch err:* { \"Undefined variable\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-static-error-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-static-error-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { $x } catch *:XPST0008 { \"Undefined variable\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-static-error-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-type-error-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { let $i as xs:string := 1 return $i } catch * { \"Type error\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-type-error-1.xq"),
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
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"Type error\"") of
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

'try-catch-type-error-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { let $i as xs:string := 1 return $i } catch err:XPTY0004 { \"Type error\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-type-error-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"Type error\"") of
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

'try-catch-type-error-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { let $i as xs:string := 1 return $i } catch err:* { \"Type error\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-type-error-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"Type error\"") of
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

'try-catch-type-error-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { let $i as xs:string := 1 return $i } catch *:XPTY0004 { \"Type error\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-type-error-4.xq"),
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
                    case xqerl_test:assert_error(Res, "XPTY0004") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"Type error\"") of
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

'try-catch-dynamic-error-outside-before-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 div 0, try { () } catch * { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-before-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-before-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 div 0, try { () } catch err:FOAR0001 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-before-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-before-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 div 0, try { () } catch err:* { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-before-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-before-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 div 0, try { () } catch *:FOAR0001 { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-before-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-after-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { () } catch * { \"Division by zero\" }, 1 div 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-after-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-after-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { () } catch err:FOAR0001 { \"Division by zero\" }, 1 div 0",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-after-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-after-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { () } catch err:* { \"Division by zero\" }, 1 div 0",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-after-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-after-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { () } catch *:FOAR0001 { \"Division by zero\" }, 1 div 0",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-after-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-dynamic-error-outside-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + (try { \"\" } catch * { \"Invalid argument\" })",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-1.xq"),
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

'try-catch-dynamic-error-outside-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + (try { \"\" } catch err:XPTY0004 { \"Invalid argument\" })",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-dynamic-error-outside-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + (try { \"\" } catch err:* { \"Invalid argument\" })",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-dynamic-error-outside-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + (try { \"\" } catch *:XPTY0004 { \"Invalid argument\" })",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-4.xq"),
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

'try-catch-dynamic-error-outside-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(try { \"\" } catch * { \"Invalid argument\" }) + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-5.xq"),
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

'try-catch-dynamic-error-outside-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(try { \"\" } catch err:FOAR0001 { \"Invalid argument\" }) + 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-dynamic-error-outside-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(try { \"\" } catch err:* { \"Invalid argument\" }) + 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-dynamic-error-outside-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(try { \"\" } catch *:FOAR0001 { \"Invalid argument\" }) + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-dynamic-error-outside-8.xq"),
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

'try-catch-no-error-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 0 } catch * { \"No error\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-no-error-1.xq"),
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

'try-catch-no-error-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 0 } catch err:FOAR0001 { \"No error\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-no-error-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-no-error-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 0 } catch err:* { \"No error\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-no-error-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-no-error-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 0 } catch *:FOAR0001 { \"No error\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-no-error-4.xq"),
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

'try-catch-no-error-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 0 } catch err:FOAR0001 { \"No error\" } catch *:FOAR0001 { \"No error \"} catch err:* { \"No error \"}  catch * { \"No error \"}",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-no-error-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-name-tests-namespace-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}FOAR0001 { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-tests-namespace-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-tests-namespace-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}* { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-tests-namespace-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-no-matching-catch-clause-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:XPST0008 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-no-matching-catch-clause-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-no-matching-catch-clause-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch xs:* { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-no-matching-catch-clause-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-no-matching-catch-clause-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch *:XPST0008 { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-no-matching-catch-clause-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-no-matching-catch-clause-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch Q{http://www.w3.org/2005/not-xqt-errors}* { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-no-matching-catch-clause-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-no-matching-catch-clause-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}XPST0008 { \"Division by zero\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-no-matching-catch-clause-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-name-no-matching-catch-clause-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch err:XPST0008 { \"Division by zero\" } catch xs:* { \"Division by zero\" } catch *:XPST0008 { \"Division by zero\" } catch Q{http://www.w3.org/2005/not-xqt-errors}* { \"Division by zero\" } catch Q{http://www.w3.org/2005/xqt-errors}XPST0008 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-name-no-matching-catch-clause-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-several-name-tests-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:XPST0008 | err:FOAR0001 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-several-name-tests-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-several-name-tests-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:FOAR0001 | err:XPST0008 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-several-name-tests-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-several-name-tests-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch err:XPTY0004 | err:FOAR0001 | err:XPST0008 { \"Division by zero\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-several-name-tests-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:XQST008 { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:XQST008 { \"Clause 2\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:XQST008 { \"Clause 2\" } catch err:XPTY0004 { \"Clause 3\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch err:FOAR0001 { \"Clause 1\" } catch err:XPTY0004 { \"Clause 2\" } catch err:XQST008 { \"Clause 3\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch err:XPTY0004 { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" } catch err:XQST008 { \"Clause 3\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch err:XPTY0004 { \"Clause 1\" } catch err:XPST0008 { \"Clause 2\" } catch err:FOAR0001 { \"Clause 3\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:* { \"Clause 1\" } catch xs:* { \"Clause 2\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch xs:* { \"Clause 1\" } catch err:* { \"Clause 2\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch Q{http://www.w3.org/2005/xqt-errors}* { \"Clause 1\" } catch Q{http://www.w3.org/2001/XMLSchema}* { \"Clause 2\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch Q{http://www.w3.org/2001/XMLSchema}* { \"Clause 1\" } catch Q{http://www.w3.org/2005/xqt-errors}* { \"Clause 2\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-first-matching-catch-clause-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { \"Clause 1\" } catch err:FOAR0001 { \"Clause 2\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-first-matching-catch-clause-12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Clause 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { $err:code }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err:FOAR0001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { fn:prefix-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { fn:local-name-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "FOAR0001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { fn:namespace-uri-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xqt-errors") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { $err:code }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err:FOER0001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { fn:prefix-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { fn:local-name-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "FOER0001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) } catch * { fn:namespace-uri-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xqt-errors") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { $err:code }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err:FOER0000") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { fn:prefix-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { fn:local-name-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "FOER0000") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { fn:namespace-uri-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://www.w3.org/2005/xqt-errors") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        try { 1 div 0 } catch * { <e code=\"{$e:code}\" xmlns:e=\"http://www.w3.org/2005/xqt-errors\"/> }\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "ends-with($result[self::e]/@code, 'FOAR0001')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-code-variable-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      for $p in (\"p1\", \"p2\") return\n"
        "         try {parse-xml($p)} catch * {$err:code}\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-code-variable-14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "err:FODC0006 err:FODC0006") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-description-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { count($err:description) le 1 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-description-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-description-variable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 1 div 0 } catch * { if (($err:description)) then $err:description instance of xs:string else fn:true() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-description-variable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-description-variable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\") } catch * { $err:description }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-description-variable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Description") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-value-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\", \"Value\") } catch * { $err:value }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-value-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Value") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-value-variable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\", (\"Value\", 3, <a/>, true())) } catch * { count($err:value) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-value-variable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "4") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-value-variable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'), \"Description\", (\"Value\", 3)) } catch * { $err:value[2] }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-value-variable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-module-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { let $n := $err:module return true() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-module-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-module-variable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { count($err:module) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-module-variable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1") of
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

'try-catch-err-module-variable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { if (count($err:module) eq 1) then $err:module else \"\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-module-variable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:string") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-line-number-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { let $n := $err:line-number return true() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-line-number-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-line-number-variable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { count($err:line-number) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-line-number-variable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1") of
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

'try-catch-err-line-number-variable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error() } catch * { if (count($err:line-number) eq 1) then $err:line-number else 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-line-number-variable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-column-number-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { let $n := $err:column-number return true() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-column-number-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-column-number-variable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { count($err:column-number) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-column-number-variable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "1") of
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

'try-catch-err-column-number-variable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error() } catch * { if (count($err:column-number) eq 1) then $err:column-number else 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-column-number-variable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_type(Res, "xs:integer") of
            true -> {comment, "Correct type"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-other-variable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { $err:other }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-other-variable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0008") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-dynamic-error-in-catch-clause-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error() } catch * { fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0001')) }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-dynamic-error-in-catch-clause-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOER0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOER0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-dynamic-error-in-catch-clause-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch err:FOER0000 { fn:error() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-dynamic-error-in-catch-clause-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-err-dynamic-error-in-catch-clause-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 0 } catch err:FOER0000 { fn:error() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-dynamic-error-in-catch-clause-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-dynamic-error-in-catch-clause-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch err:FOER0001 { fn:error() } catch err:FOER0000 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-dynamic-error-in-catch-clause-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-err-dynamic-error-in-catch-clause-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch err:FOER0000 { 0 } catch err:FOER0001 { fn:error() }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-err-dynamic-error-in-catch-clause-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-function-call-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch err:FOER0000 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-function-call-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-function-call-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:one-or-more(()) } catch err:FORG0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-function-call-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-function-call-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { function() { fn:error() } () } catch err:FOER0000 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-function-call-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-function-call-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { function() { 1 div 0 } () } catch err:FOAR0001 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-function-call-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-error-function-with-static-error-code'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error(xs:QName(\"err:XPST0008\")) } catch err:XPST0008 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-error-function-with-static-error-code.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-variable-binding-outside-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x as xs:integer := \"\" return try { $x } catch err:XPTY0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-variable-binding-outside-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-variable-binding-outside-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { let $x as xs:integer := \"\" return $x } catch err:XPTY0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-variable-binding-outside-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
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

'try-catch-variable-binding-outside-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $x as xs:integer in (0, 1, \"\") return try { $x } catch err:XPTY0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-variable-binding-outside-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
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

'try-catch-variable-binding-outside-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "       declare variable $str external := \"\";\n"
        "       try {\n"
        "          for $x as xs:integer in (0, 1, $str)\n"
        "          return $x\n"
        "       } catch err:XPTY0004 {\n"
        "          0\n"
        "       }\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-variable-binding-outside-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-variable-binding-outside-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for tumbling window $x as xs:string in (2, 4, 6, 8, 10)\n"
        "      start $s at $spos previous $sprev next $snext when true() end $e at\n"
        "      $epos previous $eprev next $enext when true() return try { $x } catch err:XPTY0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-variable-binding-outside-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-variable-binding-outside-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { for tumbling window $x as xs:string in (2, 4, 6, 8, 10)\n"
        "      start $s at $spos previous $sprev next $snext when true() end $e at\n"
        "      $epos previous $eprev next $enext when true() return $x } catch err:XPTY0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-variable-binding-outside-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
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

'try-catch-optimizations-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { 1 div 0 } catch * { 0 }, try { 1 div 0 } catch err:FOAR0001 { 1}",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-optimizations-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0, 1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-optimizations-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { 0 }, try { fn:error() } catch err:FOER0000 { 1}",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-optimizations-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "0, 1") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-optimizations-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $x := 1 div 0 return try { $x } catch * { 0 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-optimizations-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-spec-example-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $x := \"\" return try {\n"
        "      $x cast as xs:integer\n"
        "      }\n"
        "      catch * {\n"
        "      0\n"
        "      }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-spec-example-1.xq"),
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

'try-catch-spec-example-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $x := \"\" return try {\n"
        "      $x cast as xs:integer\n"
        "      }\n"
        "      catch err:FORG0001 {\n"
        "      0\n"
        "      }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-spec-example-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-spec-example-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $x := \"\" return try {\n"
        "      $x cast as xs:integer\n"
        "      }\n"
        "      catch err:FORG0001 | err:XPTY0004 {\n"
        "      0\n"
        "      }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-spec-example-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-spec-example-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      let $output := (try {\n"
        "          fn:error(fn:QName('http://www.w3.org/2005/xqt-errors', 'err:FOER0000'))\n"
        "        }\n"
        "        catch * {\n"
        "          $err:code, $err:value, \" module: \",\n"
        "          $err:module, \"(\", $err:line-number, \",\", $err:column-number, \")\"\n"
        "        })\n"
        "      return true()\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-spec-example-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-spec-example-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:thrice($x as xs:integer) as xs:integer\n"
        "      {\n"
        "      3*$x\n"
        "      };\n"
        "      \n"
        "      local:thrice(try { \"oops\" } catch * { 3 } )\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-spec-example-5.xq"),
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

'try-catch-function-result-type-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:thrice($x as xs:integer) as xs:integer\n"
        "      { try { if (current-date() gt xs:date('2000-01-01')) then \"three\" else 3 } catch * { 3 } };\n"
        "      local:thrice(3)\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-function-result-type-1.xq"),
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

'try-catch-all-dynamic-errors-caught-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { . } catch err:XPDY0002 { \"Context item not set.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Context item not set.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { \"\" treat as element() } catch err:XPDY0050 { \"Sequence type mismatch.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Sequence type mismatch.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { element  element { attribute a {\"\"}, attribute a {\"\"} } } catch err:XQDY0025 { \"Attribute name duplicate.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-3.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Attribute name duplicate.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { processing-instruction name { \"?>\" } } catch err:XQDY0026 { \"Invalid PI.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid PI.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { processing-instruction  { \"prefix:name\" } {} } catch err:XQDY0041 { \"Invalid PI.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid PI.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { attribute xmlns {} } catch err:XQDY0044 { \"Invalid attribute.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid attribute.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      try { validate { document { <a/>, <b/> }} } catch err:XQDY0061 { \"Invalid document.\" }\n"
        "    ",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_string_value(Res, "Invalid document.") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQDY0084") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQDY0084 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQST0075") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0075 " ++ binary_to_list(F)};
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

'try-catch-all-dynamic-errors-caught-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { processing-instruction XML {} } catch err:XQDY0064 { \"Invalid PI.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid PI.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { comment { \"--\" } } catch err:XQDY0072 { \"Invalid comment.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid comment.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { element { \"prefix:name\" } {} } catch err:XQDY0074 { \"Invalid element.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid element.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(try { (attribute xml:id {\"\"})/0 } catch err:XQDY0091 { \"Invalid attribute ID.\" })",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_eq(Res, "0") of
                        true -> {comment, "Equal"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "Invalid attribute ID.") of
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

'try-catch-all-dynamic-errors-caught-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { let $x := (1,2)[position() < 3] group by $x return $x } catch err:XPTY0004 { \"More than a grouping item.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert_string_value(Res, "More than a grouping item.") of
                        true -> {comment, "String correct"};
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

'try-catch-all-dynamic-errors-caught-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { element { \"xmlns:name\" } {} } catch err:XQDY0096 | err:XQDY0074 { \"Invalid element.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid element.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-13b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { element { QName(\"http://www.w3.org/2000/xmlns/\", \"xmlns:name\") } {} } catch err:XQDY0096 { \"Invalid element.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-13b.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid element.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { namespace xmlns { \"http://www.example.com\" } } catch err:XQDY0101 { \"Invalid namespace node.\" }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Invalid namespace node.") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-all-dynamic-errors-caught-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { 10000000000000000000000000001 - 10000000000000000000000000000 } catch err:FOAR0002 { 1 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-all-dynamic-errors-caught-15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-nest-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { try { 1 div 0 } catch * { \"Division by zero\" } } catch * { \"Should not be reached.\" }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-catch-nest-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-nest-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "try { fn:error() } catch * { try { 1 div 0 } catch * { \"Division by zero\" } }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "try-catch-nest-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Division by zero") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-fn-error-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "Q{http://www.example.com/}EXER3141") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: Q{http://www.example.com/}EXER3141 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-fn-error-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch * { 0 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-2.xq"),
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

'try-catch-fn-error-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch Q{http://www.example.com/}EXER3141 { 0 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-3.xq"),
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

'try-catch-fn-error-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch Q{http://www.example.com/}* { 0 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-4.xq"),
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

'try-catch-fn-error-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\")) } catch *:EXER3141 { 0 }",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-5.xq"),
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

'try-catch-fn-error-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { $err:code }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-6.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
                    case xqerl_test:assert(Res, "local-name-from-QName($result) eq 'EXER3141'") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "namespace-uri-from-QName($result) eq \"http://www.example.com/\""
                        )
                    of
                        true -> {comment, "Correct results"};
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

'try-catch-fn-error-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { namespace-uri-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'http://www.example.com/'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-fn-error-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { prefix-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-8.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'example'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-fn-error-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { local-name-from-QName($err:code) }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-9.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'EXER3141'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-fn-error-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\") } catch Q{http://www.example.com/}EXER3141 { $err:description }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-10.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'Description'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'try-catch-fn-error-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(fn:QName(\"http://www.example.com/\", \"example:EXER3141\"), \"Description\", (1, 2)) } catch Q{http://www.example.com/}EXER3141 { $err:value[2] }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:XPTY0004\")) } catch Q{http://www.w3.org/2005/xqt-errors}XPTY0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-12.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:XPST0001\")) } catch Q{http://www.w3.org/2005/xqt-errors}XPST0001 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:XPDY0002\")) } catch Q{http://www.w3.org/2005/xqt-errors}XPDY0002 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-14.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:XQTY0105\")) } catch Q{http://www.w3.org/2005/xqt-errors}XQTY0105 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-15.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:XQST0089\")) } catch Q{http://www.w3.org/2005/xqt-errors}XQST0089 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-16.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:XQDY0061\")) } catch Q{http://www.w3.org/2005/xqt-errors}XQDY0061 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-17.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:FOTY0014\")) } catch Q{http://www.w3.org/2005/xqt-errors}FOTY0014 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-18.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:FORG0001\")) } catch Q{http://www.w3.org/2005/xqt-errors}FORG0001 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-19.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'try-catch-fn-error-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "try { fn:error(xs:QName(\"err:FONS0004\")) } catch Q{http://www.w3.org/2005/xqt-errors}FONS0004 { 0 }",
    {Env, Opts} = xqerl_test:handle_environment(environment('err', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "try-catch-fn-error-20.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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
