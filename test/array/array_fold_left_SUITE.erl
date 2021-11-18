-module('array_fold_left_SUITE').

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

-export(['array-fold-left-101'/1]).
-export(['array-fold-left-102'/1]).
-export(['array-fold-left-103'/1]).
-export(['array-fold-left-104'/1]).
-export(['array-fold-left-105'/1]).
-export(['array-fold-left-107'/1]).
-export(['array-fold-left-108'/1]).
-export(['array-fold-left-109'/1]).

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
    __BaseDir = filename:join(TD, "array"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'array-fold-left-101',
            'array-fold-left-102',
            'array-fold-left-103',
            'array-fold-left-104',
            'array-fold-left-105',
            'array-fold-left-107',
            'array-fold-left-108',
            'array-fold-left-109'
        ]}
    ].

environment('array', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/array", "array"}]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'array-fold-left-101'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:fold-left([1,2,3,4,5,6], 0, function($z,$a){$z + $a})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-101.xq"),
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
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "21") of
                        true -> {comment, "Deep equal"};
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

'array-fold-left-102'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "array:fold-left([[2,3],[],[4,5,6,7],[6,7],[3]], 0, function($z,$a){$z + array:size($a)})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-102.xq"),
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
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "9") of
                        true -> {comment, "Deep equal"};
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

'array-fold-left-103'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "array:fold-left([\"the cat\", \"sat\", \"on the mat\"], \"\", function($z,$a){concat($z, \" \", $a)})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-103.xq"),
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
                    case xqerl_test:assert_type(Res, "item()*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "\" the cat sat on the mat\"") of
                        true -> {comment, "Deep equal"};
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

'array-fold-left-104'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "array:fold-left([\"+2\", \"*3\"], \"10\", function($z,$a){concat(\"(\", $z, $a, \")\")})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-104.xq"),
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
                    case xqerl_test:assert_type(Res, "item()*") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "\"((10+2)*3)\"") of
                        true -> {comment, "Deep equal"};
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

'array-fold-left-105'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:fold-left([function($x){$x+2}, function($x){$x*3}], 10, function($z,$a){$a($z)})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-105.xq"),
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
                    case xqerl_test:assert_type(Res, "xs:integer") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_deep_eq(Res, "36") of
                        true -> {comment, "Deep equal"};
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

'array-fold-left-107'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:fold-left([true(), true(), false()], true(), function($x, $y){$x and $y})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-107.xq"),
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

'array-fold-left-108'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " array:fold-left([true(), true(), false()], false(), function($x, $y){$x or $y})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-108.xq"),
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

'array-fold-left-109'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "array:fold-left([1,2,3], [], function($x, $y){[$x, $y]})",
    {Env, Opts} = xqerl_test:handle_environment(environment('array', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "array-fold-left-109.xq"),
                Qry1
            ),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_deep_eq(Res, "[[[[], 1], 2], 3]") of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
