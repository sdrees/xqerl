-module('prod_VarDecl_external_SUITE').

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

-export(['extvardeclwithouttype-1'/1]).
-export(['extvardeclwithouttype-2'/1]).
-export(['extvardeclwithouttype-3'/1]).
-export(['extvardeclwithouttype-4'/1]).
-export(['extvardeclwithouttype-5'/1]).
-export(['extvardeclwithouttype-6'/1]).
-export(['extvardeclwithouttype-7'/1]).
-export(['extvardeclwithouttype-8'/1]).
-export(['extvardeclwithouttype-9'/1]).
-export(['extvardeclwithouttype-10'/1]).
-export(['extvardeclwithouttype-11'/1]).
-export(['extvardeclwithouttype-12'/1]).
-export(['extvardeclwithouttype-13'/1]).
-export(['extvardeclwithouttype-14'/1]).
-export(['extvardeclwithouttype-15'/1]).
-export(['extvardeclwithouttype-16'/1]).
-export(['extvardeclwithouttype-17'/1]).
-export(['extvardeclwithouttype-18'/1]).
-export(['extvardeclwithouttype-19'/1]).
-export(['extvardeclwithouttype-20'/1]).
-export(['extvardeclwithouttype-21'/1]).
-export(['extvardeclwithouttype-22'/1]).
-export(['extvardeclwithouttype-23'/1]).
-export(['extvardeclwithouttype-24'/1]).
-export(['K2-ExternalVariablesWithout-1'/1]).
-export(['K2-ExternalVariablesWithout-2'/1]).
-export(['K2-ExternalVariablesWithout-3'/1]).
-export(['K2-ExternalVariablesWithout-4'/1]).
-export(['K2-ExternalVariablesWithout-5'/1]).
-export(['K2-ExternalVariablesWithout-6'/1]).
-export(['K2-ExternalVariablesWithout-7'/1]).
-export(['K2-ExternalVariablesWithout-8'/1]).
-export(['K2-ExternalVariablesWithout-9'/1]).
-export(['K2-ExternalVariablesWithout-10'/1]).
-export(['K2-ExternalVariablesWithout-11'/1]).
-export(['K2-ExternalVariablesWithout-12'/1]).
-export(['K2-ExternalVariablesWithout-13'/1]).
-export(['K2-ExternalVariablesWithout-14'/1]).
-export(['K2-ExternalVariablesWithout-15'/1]).
-export(['K2-ExternalVariablesWithout-16'/1]).
-export(['K2-ExternalVariablesWithout-17'/1]).
-export(['K2-ExternalVariablesWithout-18'/1]).
-export(['K2-ExternalVariablesWithout-18b'/1]).
-export(['K2-ExternalVariablesWithout-19'/1]).
-export(['K2-ExternalVariablesWithout-20'/1]).
-export(['K2-ExternalVariablesWithout-21'/1]).
-export(['K2-ExternalVariablesWithout-22'/1]).
-export(['extvardeclwithtype-1'/1]).
-export(['extvardeclwithtype-2'/1]).
-export(['extvardeclwithtype-3'/1]).
-export(['extvardeclwithtype-4'/1]).
-export(['extvardeclwithtype-5'/1]).
-export(['extvardeclwithtype-6'/1]).
-export(['extvardeclwithtype-7'/1]).
-export(['extvardeclwithtype-8'/1]).
-export(['extvardeclwithtype-9'/1]).
-export(['extvardeclwithtype-10'/1]).
-export(['extvardeclwithtype-11'/1]).
-export(['extvardeclwithtype-12'/1]).
-export(['extvardeclwithtype-13'/1]).
-export(['extvardeclwithtype-14'/1]).
-export(['extvardeclwithtype-15'/1]).
-export(['extvardeclwithtype-16'/1]).
-export(['extvardeclwithtype-17'/1]).
-export(['extvardeclwithtype-18'/1]).
-export(['extvardeclwithtype-19'/1]).
-export(['extvardeclwithtype-20'/1]).
-export(['extvardeclwithtype-21'/1]).
-export(['extvardeclwithtype-22'/1]).
-export(['extvardeclwithtype-23'/1]).
-export(['extvardeclwithtype-24'/1]).
-export(['K2-ExternalVariablesWith-1'/1]).
-export(['K2-ExternalVariablesWith-2'/1]).
-export(['K2-ExternalVariablesWith-3'/1]).
-export(['K2-ExternalVariablesWith-4'/1]).
-export(['K2-ExternalVariablesWith-5'/1]).
-export(['K2-ExternalVariablesWith-6'/1]).
-export(['K2-ExternalVariablesWith-7'/1]).
-export(['K2-ExternalVariablesWith-8'/1]).
-export(['K2-ExternalVariablesWith-9'/1]).
-export(['K2-ExternalVariablesWith-10'/1]).
-export(['K2-ExternalVariablesWith-11'/1]).
-export(['K2-ExternalVariablesWith-12'/1]).
-export(['K2-ExternalVariablesWith-13'/1]).
-export(['K2-ExternalVariablesWith-14'/1]).
-export(['K2-ExternalVariablesWith-15'/1]).
-export(['K2-ExternalVariablesWith-16'/1]).
-export(['K2-ExternalVariablesWith-17'/1]).
-export(['K2-ExternalVariablesWith-18'/1]).
-export(['K2-ExternalVariablesWith-19'/1]).
-export(['K2-ExternalVariablesWith-20'/1]).
-export(['K2-ExternalVariablesWith-21'/1]).
-export(['K2-ExternalVariablesWith-22'/1]).
-export(['K2-ExternalVariablesWith-22a'/1]).
-export(['K2-ExternalVariablesWith-23'/1]).
-export(['K2-ExternalVariablesWith-24'/1]).
-export(['K2-ExternalVariablesWith-25'/1]).
-export(['K2-ExternalVariablesWith-26'/1]).
-export(['K2-ExternalVariablesWith-27'/1]).

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
            'extvardeclwithouttype-1',
            'extvardeclwithouttype-2',
            'extvardeclwithouttype-3',
            'extvardeclwithouttype-4',
            'extvardeclwithouttype-5',
            'extvardeclwithouttype-6',
            'extvardeclwithouttype-7',
            'extvardeclwithouttype-8',
            'extvardeclwithouttype-9',
            'extvardeclwithouttype-10',
            'extvardeclwithouttype-11',
            'extvardeclwithouttype-12',
            'extvardeclwithouttype-13',
            'extvardeclwithouttype-14',
            'extvardeclwithouttype-15',
            'extvardeclwithouttype-16',
            'extvardeclwithouttype-17',
            'extvardeclwithouttype-18',
            'extvardeclwithouttype-19',
            'extvardeclwithouttype-20',
            'extvardeclwithouttype-21',
            'extvardeclwithouttype-22',
            'extvardeclwithouttype-23'
        ]},
        {group_1, [parallel], [
            'extvardeclwithouttype-24',
            'K2-ExternalVariablesWithout-1',
            'K2-ExternalVariablesWithout-2',
            'K2-ExternalVariablesWithout-3',
            'K2-ExternalVariablesWithout-4',
            'K2-ExternalVariablesWithout-5',
            'K2-ExternalVariablesWithout-6',
            'K2-ExternalVariablesWithout-7',
            'K2-ExternalVariablesWithout-8',
            'K2-ExternalVariablesWithout-9',
            'K2-ExternalVariablesWithout-10',
            'K2-ExternalVariablesWithout-11',
            'K2-ExternalVariablesWithout-12',
            'K2-ExternalVariablesWithout-13',
            'K2-ExternalVariablesWithout-14',
            'K2-ExternalVariablesWithout-15',
            'K2-ExternalVariablesWithout-16',
            'K2-ExternalVariablesWithout-17',
            'K2-ExternalVariablesWithout-18',
            'K2-ExternalVariablesWithout-18b',
            'K2-ExternalVariablesWithout-19',
            'K2-ExternalVariablesWithout-20',
            'K2-ExternalVariablesWithout-21',
            'K2-ExternalVariablesWithout-22'
        ]},
        {group_2, [parallel], [
            'extvardeclwithtype-1',
            'extvardeclwithtype-2',
            'extvardeclwithtype-3',
            'extvardeclwithtype-4',
            'extvardeclwithtype-5',
            'extvardeclwithtype-6',
            'extvardeclwithtype-7',
            'extvardeclwithtype-8',
            'extvardeclwithtype-9',
            'extvardeclwithtype-10',
            'extvardeclwithtype-11',
            'extvardeclwithtype-12',
            'extvardeclwithtype-13',
            'extvardeclwithtype-14',
            'extvardeclwithtype-15',
            'extvardeclwithtype-16',
            'extvardeclwithtype-17',
            'extvardeclwithtype-18',
            'extvardeclwithtype-19',
            'extvardeclwithtype-20',
            'extvardeclwithtype-21',
            'extvardeclwithtype-22',
            'extvardeclwithtype-23',
            'extvardeclwithtype-24'
        ]},
        {group_3, [parallel], [
            'K2-ExternalVariablesWith-1',
            'K2-ExternalVariablesWith-2',
            'K2-ExternalVariablesWith-3',
            'K2-ExternalVariablesWith-4',
            'K2-ExternalVariablesWith-5',
            'K2-ExternalVariablesWith-6',
            'K2-ExternalVariablesWith-7',
            'K2-ExternalVariablesWith-8',
            'K2-ExternalVariablesWith-9',
            'K2-ExternalVariablesWith-10',
            'K2-ExternalVariablesWith-11',
            'K2-ExternalVariablesWith-12',
            'K2-ExternalVariablesWith-13',
            'K2-ExternalVariablesWith-14',
            'K2-ExternalVariablesWith-15',
            'K2-ExternalVariablesWith-16',
            'K2-ExternalVariablesWith-17',
            'K2-ExternalVariablesWith-18',
            'K2-ExternalVariablesWith-19',
            'K2-ExternalVariablesWith-20',
            'K2-ExternalVariablesWith-21',
            'K2-ExternalVariablesWith-22',
            'K2-ExternalVariablesWith-22a',
            'K2-ExternalVariablesWith-23'
        ]},
        {group_4, [parallel], [
            'K2-ExternalVariablesWith-24',
            'K2-ExternalVariablesWith-25',
            'K2-ExternalVariablesWith-26',
            'K2-ExternalVariablesWith-27'
        ]}
    ].

environment('works-mod', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TopMany', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TopMany.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('CPPGlobals', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/CPPGlobals.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'extvardeclwithouttype-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; fn:string($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "'abc'"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-1.xq"),
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
                    case xqerl_test:assert_string_value(Res, "abc") of
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

'extvardeclwithouttype-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "'2006-02-07+05:00'"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-2.xq"),
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
                    case xqerl_test:assert_string_value(Res, "2006-02-07+05:00") of
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

'extvardeclwithouttype-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; xs:integer($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-3.xq"),
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
                    case xqerl_test:assert_eq(Res, "2") of
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

'extvardeclwithouttype-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "1.2E2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-4.xq"),
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
                    case xqerl_test:assert_eq(Res, "120") of
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

'extvardeclwithouttype-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 1 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-5.xq"),
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

'extvardeclwithouttype-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; xs:float($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "12.5E10"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-6.xq"),
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
                    case xqerl_test:assert_string_value(Res, "1.25E11") of
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

'extvardeclwithouttype-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "12678967.543233"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-7.xq"),
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
                    case xqerl_test:assert_string_value(Res, "12678967.543233") of
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

'extvardeclwithouttype-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x + $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "1 + 1"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-8.xq"),
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
                    case xqerl_test:assert_eq(Res, "4") of
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

'extvardeclwithouttype-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "1 + 1"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-9.xq"),
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
                    case xqerl_test:assert_eq(Res, "2") of
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

'extvardeclwithouttype-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x + $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "1"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-10.xq"),
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
                    case xqerl_test:assert_eq(Res, "2") of
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

'extvardeclwithouttype-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x * $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "2 * 2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-11.xq"),
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
                    case xqerl_test:assert_eq(Res, "16") of
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

'extvardeclwithouttype-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x - 1",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "4 - 1"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-12.xq"),
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
                    case xqerl_test:assert_eq(Res, "2") of
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

'extvardeclwithouttype-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x idiv 2",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "20 idiv 2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-13.xq"),
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
                    case xqerl_test:assert_eq(Res, "5") of
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

'extvardeclwithouttype-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x div 10",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "40 div 2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-14.xq"),
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
                    case xqerl_test:assert_eq(Res, "2") of
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

'extvardeclwithouttype-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x mod 2",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "55 mod 3"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-15.xq"),
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

'extvardeclwithouttype-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x and fn:false()",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "true() and true()"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-16.xq"),
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
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FORG0006") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FORG0006 " ++ binary_to_list(F)};
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

'extvardeclwithouttype-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x or fn:false()",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "true() or true()"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-17.xq"),
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
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FORG0006") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FORG0006 " ++ binary_to_list(F)};
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

'extvardeclwithouttype-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "avg((1,2,4))"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-18.xq"),
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
                    case xqerl_test:assert(Res, "$result ge 2.33333333333333") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result lt 2.33333333333334") of
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

'extvardeclwithouttype-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; xs:dateTime($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "avg((1,2,4))"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-19.xq"),
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

'extvardeclwithouttype-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; fn:upper-case($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "lower-case('This String should be all in upper case')"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-20.xq"),
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
                    case
                        xqerl_test:assert_string_value(
                            Res,
                            "THIS STRING SHOULD BE ALL IN UPPER CASE"
                        )
                    of
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

'extvardeclwithouttype-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; fn:lower-case($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "upper-case('THIS STRING SHOULD ALL BE IN LOWER CASE')"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-21.xq"),
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
                    case
                        xqerl_test:assert_string_value(
                            Res,
                            "this string should all be in lower case"
                        )
                    of
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

'extvardeclwithouttype-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; fn:not($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "0 + 1"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-22.xq"),
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
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FORG0006") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FORG0006 " ++ binary_to_list(F)};
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

'extvardeclwithouttype-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x external; $x",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-23.xq"),
                Qry1
            ),
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

'extvardeclwithouttype-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace test = \"http://www.w3.org/fots/example-test-namespace\";\n"
        "         declare variable $test:x external; $test:x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"Q{http://www.w3.org/fots/example-test-namespace}x", "", "2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithouttype-24.xq"),
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

'K2-ExternalVariablesWithout-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $input-context external; declare variable $input-context external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context external; declare variable $input-context external; $input-context",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"\"; \n"
        "        declare namespace prefix = \"\"; \n"
        "        declare variable $prefix:input-context external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-3.xq"),
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

'K2-ExternalVariablesWithout-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \n"
        "        declare variable $exampleComThisVarIsNotRecognized external; $exampleComThisVarIsNotRecognized",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-4.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWithout-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace e = \"http://example.com/ANamespace\"; \n"
        "        declare variable $e:exampleComThisVarIsNotRecognized external; \n"
        "        $e:exampleComThisVarIsNotRecognized",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-5.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWithout-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $exampleComThisVarIsNotRecognized external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-6.xq"),
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
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-ExternalVariablesWithout-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace e = \"http://example.com/ANamespace\"; declare variable $e:exampleComThisVarIsNotRecognized external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-7.xq"),
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
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-ExternalVariablesWithout-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $ name := 3; $ name",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-8.xq"),
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

'K2-ExternalVariablesWithout-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $e := current-time(); let $i := ($e, 1 to 50000, $e) return $i[1] = $i[last()]",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-9.xq"),
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

'K2-ExternalVariablesWithout-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $e := <e> <a/> </e>; declare variable $f := $e; <r> { $e is $e, $f is $e, $e, $f } </r>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<r>true true<e><a/></e><e><a/></e></r>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $a as attribute()* := (attribute name1 {()}, attribute name2 {()}, attribute name3 {()}); declare variable $b as attribute()* := (attribute name1 {()}, attribute name2 {()}, attribute name3 {()}); $a/(let $p := position() return . is $b[$p])",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "false false false") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $a as attribute()* := (attribute name1 {()}, attribute name2 {()}, attribute name3 {()}); <r> <e> { $a } </e> <e> { $a } </e> </r>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-12.xq"),
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
            xqerl_test:assert_xml(
                Res,
                "<r><e name1=\"\" name2=\"\" name3=\"\"/><e name1=\"\" name2=\"\" name3=\"\"/></r>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $e := <e>{current-time()}</e>/(string-length(.) > 0); $e, if($e) then \"SUCCESS\" else \"FAILURE\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true SUCCESS") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v ::= 1; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-14.xq"),
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

'K2-ExternalVariablesWithout-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v : = 1; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-15.xq"),
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

'K2-ExternalVariablesWithout-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare ne gt",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-16.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWithout-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "variable lt variable",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-17.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWithout-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-ExternalVariablesWithout-18b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $var external := 1; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-18b.xq"),
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

'K2-ExternalVariablesWithout-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $global := count(*); <e/>/$global",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-19.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWithout-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $global := count(*); \n"
        "        <e/>/($global, $global)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-20.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWithout-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $global := count(*); $global, <wrongFocus> <e1/> <e2/> </wrongFocus>/$global, $global",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-21.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 1 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWithout-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $global := count(*); <wrongFocus> <e1/> <e2/> </wrongFocus>/$global",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWithout-22.xq"),
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

'extvardeclwithtype-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:string external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [
            {"x", "",
                "(: Name: extvardeclwithtypetobind-1 :) (: Description: Binding a string value for extvardeclwithtype-1.:) \"abc\""}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-1.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abc") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:date external; fn:string($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [
            {"x", "",
                "(: Name: extvardeclwithtypetobind-2 :) (: Description: Binding a date value for extvardeclwithtype-2.:) xs:date(\"2000-01-01+05:00\")"}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-2.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2000-01-01+05:00") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [
            {"x", "",
                "(: Name: extvardeclwithtypetobind-3 :) (: Description: Binding an integer value for extvardeclwithtype-3.:) xs:integer(2)"}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-3.xq"),
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

'extvardeclwithtype-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:double external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "xs:double(1.2E2)"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-4.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "120") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:boolean external; fn:string($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "true()"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-5.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:float external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "xs:float(1267.43233E12)"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-6.xq"),
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
                    case xqerl_test:assert_string_value(Res, "1.2674323E15") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "1.2674324E15") of
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

'extvardeclwithtype-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:decimal external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "xs:decimal(12678967.543233)"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-7.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "12678967.543233") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x + $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 1 + 1 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-8.xq"),
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

'extvardeclwithtype-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 1 + 1 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-9.xq"),
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

'extvardeclwithtype-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x + $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 1 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-10.xq"),
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

'extvardeclwithtype-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x * $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 2 * 2 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-11.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "16") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x - xs:integer(1)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 5 - 2 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-12.xq"),
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

'extvardeclwithtype-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x idiv xs:integer(2)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 20 idiv 2 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-13.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "5") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x div xs:integer(10)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 40 div 2 return xs:integer($var)"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-14.xq"),
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

'extvardeclwithtype-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:integer external; $x mod xs:integer(2)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := 55 mod 3 return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-15.xq"),
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

'extvardeclwithtype-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:boolean external; $x and fn:false()",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := true() and true() return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-16.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'extvardeclwithtype-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:boolean external; $x or fn:false()",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := true() or true() return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-17.xq"),
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

'extvardeclwithtype-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:float external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := avg((1,2,4)) return xs:float($var)"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-18.xq"),
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
                    case xqerl_test:assert_string_value(Res, "2.3333333") of
                        true -> {comment, "String correct"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_string_value(Res, "2.33333") of
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

'extvardeclwithtype-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:dateTime external; $x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := avg((1,2,4)) return $var"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-19.xq"),
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

'extvardeclwithtype-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:string external; fn:upper-case($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [
            {"x", "",
                "let $var := lower-case(\"This String should be all in upper case\") return $var"}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-20.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "THIS STRING SHOULD BE ALL IN UPPER CASE") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:string external; fn:lower-case($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [
            {"x", "",
                "let $var := upper-case(\"THIS STRING SHOULD ALL BE IN LOWER CASE\") return $var"}
        ]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-21.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "this string should all be in lower case") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $x as xs:boolean external; fn:not($x)",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"x", "", "let $var := xs:integer(0) + xs:integer(1) return xs:boolean($var)"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-22.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
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

'extvardeclwithtype-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(: \n"
        "    This query opens a C++ GCC-XML output file, and outputs a report describing the use\n"
        "    of globals variables.\n"
        ":)\n"
        "declare variable $inputDocument := (/);\n"
        "\n"
        "(: Determines whether the type by ID @p typeId is a complex type such as QString. :)\n"
        "declare function local:isComplexType($typeID as xs:string) as xs:boolean\n"
        "{\n"
        "    (: We're being a bit crude here and only checks whether it's a class. We\n"
        "       actually should check whether it has non-synthesized,\n"
        "        constructors, I believe. :)\n"
        "    \n"
        "    exists($inputDocument/xml/Class[@id = $typeID])\n"
        "    or\n"
        "    (: We also want const-qualified variables. :)\n"
        "    exists($inputDocument/xml/Class[@id = $inputDocument/xml/CvQualifiedType[@id = $typeID]/@type])\n"
        "};\n"
        "\n"
        "declare function local:isPrimitive($typeId as xs:string) as xs:boolean\n"
        "{\n"
        "    exists($inputDocument/xml/FundamentalType[@id = $typeId])\n"
        "};\n"
        "\n"
        "(: Returns a string for human consumption that describes\n"
        "   the location of @p block. :)\n"
        "declare function local:location($block as element()) as xs:string\n"
        "{\n"
        "    concat($inputDocument/xml/File[@id = $block/@file]/@name, \" at line \", $block/@line)\n"
        "};\n"
        "\n"
        "declare function local:report() as element()+\n"
        "{\n"
        "            let $complexVariables as element(Variable)* := $inputDocument/xml/Variable[local:isComplexType(@type)]\n"
        "            return if(exists($complexVariables)) (: Is the length larger than zero? :)\n"
        "\n"
        "                   then (<p xmlns=\"http://www.w3.org/1999/xhtml/\">The following global, complex variables were found:</p>,\n"
        "                         <ol xmlns=\"http://www.w3.org/1999/xhtml/\">\n"
        "                            {\n"
        "                                (: For each Variable in $complexVariables... :)\n"
        "                                for $v in $complexVariables\n"
        "                                return $v/<li><span class=\"variableName\">{string(@name)}</span> in {local:location(.)}</li>\n"
        "                            }\n"
        "                         </ol>)\n"
        "\n"
        "                   else <p xmlns=\"http://www.w3.org/1999/xhtml/\">No global variables that are of complex types were found.</p>\n"
        "\n"
        "            ,\n"
        "\n"
        "            (: List primitive, mutable types. :)\n"
        "            let $primitiveVariables as element(Variable)+ := $inputDocument/xml/Variable[local:isPrimitive(@type)]\n"
        "            return if(exists($primitiveVariables))\n"
        "\n"
        "                   then (<p xmlns=\"http://www.w3.org/1999/xhtml/\">The following mutable primitives were found:</p>,\n"
        "                         <ol xmlns=\"http://www.w3.org/1999/xhtml/\">\n"
        "                            {\n"
        "                                (: For each Variable in $complexVariables... :)\n"
        "                                for $v in $primitiveVariables\n"
        "                                return $v/<li><span class=\"variableName\">{string(@name)}</span> in {local:location(.)}</li>\n"
        "                            }\n"
        "                         </ol>)\n"
        "\n"
        "                   else <p xmlns=\"http://www.w3.org/1999/xhtml/\">No global variables that are of complex types were found.</p>\n"
        "};\n"
        "\n"
        "<html xmlns=\"http://www.w3.org/1999/xhtml/\" xml:lang=\"en\" lang=\"en\">\n"
        "    <head>\n"
        "        <title>Global variables report for {\"Globals.cpp\"}</title>\n"
        "    </head>\n"
        "    <style type=\"text/css\">\n"
        "        .details\n"
        "        {{\n"
        "            text-align: center;\n"
        "            font-size: 80%;\n"
        "            color: gray\n"
        "        }}\n"
        "        .variableName\n"
        "        {{\n"
        "            font-family: courier\n"
        "        }}\n"
        "    </style>\n"
        "\n"
        "    <body>\n"
        "        {\n"
        "            (: We don't want simple types that are const, but all other types.\n"
        "               One could frown upon const integers and say enums should be used instead, but\n"
        "               let's be gentle. :)\n"
        "\n"
        "            local:report()\n"
        "        }\n"
        "\n"
        "        <p class=\"details\">This report was generated on</p>\n"
        "    </body>\n"
        "\n"
        "</html>\n",
    {Env, Opts} = xqerl_test:handle_environment(environment('CPPGlobals', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-23.xq"),
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
            xqerl_test:assert_xml(
                Res,
                {file, filename:join(__BaseDir, "VarDecl.external/extvardeclwithtype-23.out")}
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'extvardeclwithtype-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace test = \"http://www.w3.org/fots/example-test-namespace\";\n"
        "         declare variable $test:x as xs:integer external; $test:x",
    {Env, Opts} = xqerl_test:handle_environment([
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {'context-item', [""]},
        {vars, []},
        {params, [{"Q{http://www.w3.org/fots/example-test-namespace}x", "", "2"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ]),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "extvardeclwithtype-24.xq"),
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

'K2-ExternalVariablesWith-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context as item()* external; declare variable $input-context external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context external; declare variable $input-context as item()* external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context as item()* external ; declare variable $input-context as item()*external ; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context as item()* external ; declare variable $input-context as item()*external ; $input-context",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context as item()* external; declare variable $input-context as item()*external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $input-context as xs:string* external; declare variable $input-context as item()*external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $exampleComThisVarIsNotRecognized as xs:string *external; $exampleComThisVarIsNotRecognized",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-7.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWith-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace e = \"http://example.com/ANamespace\"; declare variable $e:exampleComThisVarIsNotRecognized as comment() *external; $e:exampleComThisVarIsNotRecognized",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-8.xq"),
                Qry1
            ),
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

'K2-ExternalVariablesWith-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $exampleComThisVarIsNotRecognized as processing-instruction()? external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-9.xq"),
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
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-ExternalVariablesWith-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace e = \"http://example.com/ANamespace\"; declare variable $e:exampleComThisVarIsNotRecognized as element(*) external; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-10.xq"),
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
                    case xqerl_test:assert_error(Res, "XPDY0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
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

'K2-ExternalVariablesWith-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i := 1, 1; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-11.xq"),
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

'K2-ExternalVariablesWith-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:integer := xs:untypedAtomic(\"1\"); $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-12.xq"),
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

'K2-ExternalVariablesWith-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:float := 1.1 ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-13.xq"),
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

'K2-ExternalVariablesWith-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:double := 1.1 ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-14.xq"),
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

'K2-ExternalVariablesWith-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:float := 1 ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-15.xq"),
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

'K2-ExternalVariablesWith-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:double := 1 ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-16.xq"),
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

'K2-ExternalVariablesWith-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:double := xs:float(3) ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-17.xq"),
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

'K2-ExternalVariablesWith-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:string := xs:untypedAtomic(\"a string\") ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-18.xq"),
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

'K2-ExternalVariablesWith-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i as xs:string := xs:anyURI(\"http://www.example.com/\") ; $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-19.xq"),
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

'K2-ExternalVariablesWith-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $input-context1 external; declare variable $input-context1 := 1; 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-20.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $input-context1 external; declare variable $input-context1 := 1; 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('TopMany', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-21.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0049") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ExternalVariablesWith-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:typedData"}.

'K2-ExternalVariablesWith-22a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v as element(*, xs:untyped?)+ := <e/>; exists($v/*)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-22a.xq"),
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

'K2-ExternalVariablesWith-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v as element(elementName, xs:anyType?)+ := <elementName/>; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-23.xq"),
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

'K2-ExternalVariablesWith-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v as element(*, xs:untyped+)+ := <e/>; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-24.xq"),
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

'K2-ExternalVariablesWith-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v as element(*, xs:untyped*)+ := <e/>; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-25.xq"),
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

'K2-ExternalVariablesWith-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v as element(notWildcard, xs:untyped+)+ := <e/>; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-26.xq"),
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

'K2-ExternalVariablesWith-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $v as element(notWildcard, xs:untyped*)+ := <e/>; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ExternalVariablesWith-27.xq"),
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
