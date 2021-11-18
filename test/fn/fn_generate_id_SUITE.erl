-module('fn_generate_id_SUITE').

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

-export(['generate-id-000'/1]).
-export(['generate-id-001'/1]).
-export(['generate-id-002'/1]).
-export(['generate-id-003'/1]).
-export(['generate-id-004'/1]).
-export(['generate-id-005'/1]).
-export(['generate-id-006'/1]).
-export(['generate-id-007'/1]).
-export(['generate-id-008'/1]).
-export(['generate-id-009'/1]).
-export(['generate-id-010'/1]).
-export(['generate-id-011'/1]).
-export(['generate-id-012'/1]).
-export(['generate-id-013'/1]).
-export(['generate-id-014'/1]).
-export(['generate-id-015'/1]).
-export(['generate-id-016'/1]).
-export(['generate-id-017'/1]).
-export(['generate-id-018'/1]).
-export(['generate-id-019'/1]).
-export(['generate-id-020'/1]).
-export(['generate-id-021'/1]).
-export(['generate-id-022'/1]).
-export(['generate-id-023'/1]).
-export(['generate-id-901'/1]).
-export(['generate-id-902'/1]).
-export(['generate-id-903'/1]).
-export(['generate-id-904'/1]).
-export(['generate-id-905'/1]).

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
            'generate-id-000',
            'generate-id-001',
            'generate-id-002',
            'generate-id-003',
            'generate-id-004',
            'generate-id-005',
            'generate-id-006',
            'generate-id-007',
            'generate-id-008',
            'generate-id-009',
            'generate-id-010',
            'generate-id-011',
            'generate-id-012',
            'generate-id-013',
            'generate-id-014',
            'generate-id-015',
            'generate-id-016',
            'generate-id-017',
            'generate-id-018',
            'generate-id-019',
            'generate-id-020',
            'generate-id-021',
            'generate-id-022'
        ]},
        {group_1, [parallel], [
            'generate-id-023',
            'generate-id-901',
            'generate-id-902',
            'generate-id-903',
            'generate-id-904',
            'generate-id-905'
        ]}
    ].

environment('empty', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
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
environment('auction', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/auction.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [
            {"http://www.example.com/AuctionWatch", "ma"},
            {"http://www.w3.org/1999/xlink", "xlink"},
            {"http://www.example.com/auctioneers#anyzone", "anyzone"},
            {"http://www.example.com/auctioneers#eachbay", "eachbay"},
            {"http://www.example.com/auctioneers#yabadoo", "yabadoo"},
            {"http://www.w3.org/2005/xpath-functions/map", "map"}
        ]},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('collection', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, [
            {"", [
                {src, filename:join(__BaseDir, "../docs/works-mod.xml")},
                {src, filename:join(__BaseDir, "../docs/auction.xml")}
            ]}
        ]},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'generate-id-000'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id(())",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-000.xq"), Qry1),
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
                    case xqerl_test:assert_type(Res, "xs:string") of
                        true -> {comment, "Correct type"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_eq(Res, "\"\"") of
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

'generate-id-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id(/*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-001.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id((//@*)[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-002.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id(/)",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id((//comment())[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id((//processing-instruction())[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id((//text())[1])",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-006.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:namespace-axis, spec:XP20+"}.

'generate-id-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id() eq generate-id(/)",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-008.xq"), Qry1),
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

'generate-id-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "/*/(generate-id() eq generate-id(.))",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-009.xq"), Qry1),
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

'generate-id-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $nodes := (/ | //*/(.|@*|comment()|processing-instruction()|text())) \n"
        "            return count($nodes) eq count(distinct-values($nodes/generate-id()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-010.xq"), Qry1),
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

'generate-id-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:namespace-axis, spec:XP20+"}.

'generate-id-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $nodes := collection()\n"
        "            return count($nodes) eq count(distinct-values($nodes/generate-id()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('collection', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-012.xq"), Qry1),
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

'generate-id-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $nodes := collection()//*\n"
        "            return count($nodes) eq count(distinct-values($nodes/generate-id()))",
    {Env, Opts} = xqerl_test:handle_environment(environment('collection', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-013.xq"), Qry1),
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

'generate-id-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace copy=\"http://www.w3.org/QT3/copy\";\n"
        "        generate-id(copy:copy(/*))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-014.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace copy=\"http://www.w3.org/QT3/copy\";\n"
        "        generate-id(copy:copy((//@*)[1]))\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-015.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
        end,
    Out =
        case xqerl_test:assert(Res, "matches($result, '^[A-Za-z][A-Za-z0-9]*$')") of
            true -> {comment, "Correct results"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'generate-id-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace copy=\"http://www.w3.org/QT3/copy\";\n"
        "        generate-id(copy:copy(/*)) eq generate-id(/*)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-016.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'generate-id-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        import module namespace copy=\"http://www.w3.org/QT3/copy\";\n"
        "        let $att := (//@*)[1] return generate-id(copy:copy($att)) eq generate-id($att)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
    LibList = xqerl_code_server:compile_files(Hints),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-017.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            Etup when is_tuple(Etup), element(1, Etup) == xqError ->
                xqerl_test:combined_error(Etup, LibList);
            D ->
                D
        catch
            _:E -> xqerl_test:combined_error(E, LibList)
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

'generate-id-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+, feature:xpath-1.0-compatibility"}.

'generate-id-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "let $nodes := (/ | //*/(.|@*|comment()|processing-instruction()|text())) \n"
        "         return every $id in $nodes/generate-id() satisfies matches($id, '^[A-Za-z][A-Za-z0-9]*$')",
    {Env, Opts} = xqerl_test:handle_environment(environment('auction', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-019.xq"), Qry1),
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

'generate-id-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $nodes := (<a lang='de' xml:lang='de'>Insel</a>, <a lang='en' xml:lang='en'>Island</a>)\n"
        "         let $ids := for $n in $nodes return generate-id($n)\n"
        "         return count($nodes) = count(distinct-values($ids))\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-020.xq"), Qry1),
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

'generate-id-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $nodes := (<a lang='de' xml:lang='de'>Insel</a>, <a lang='en' xml:lang='en'>Island</a>)\n"
        "         let $ids := for $n in $nodes return generate-id($n)\n"
        "         return every $id in $ids satisfies matches($id, '^[A-Za-z][A-Za-z0-9]*$')\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-021.xq"), Qry1),
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

'generate-id-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $nodes := (text{''}, text{''}, text{''}, text{''})\n"
        "         let $ids := for $n in $nodes return generate-id($n)\n"
        "         return count($nodes) = count(distinct-values($ids))\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-022.xq"), Qry1),
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

'generate-id-023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         let $nodes := (text{''}, text{''}, text{''}, text{''})\n"
        "         let $ids := for $n in $nodes return generate-id($n)\n"
        "         return every $id in $ids satisfies matches($id, '^[A-Za-z][A-Za-z0-9]*$')\n"
        "       ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-023.xq"), Qry1),
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

'generate-id-901'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := function() {generate-id()} return $f()",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-901.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'generate-id-902'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := function($x as item()) {generate-id($x)} return $f(3)",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-902.xq"), Qry1),
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

'generate-id-903'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $i in 1 to 20 return generate-id($i)",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-903.xq"), Qry1),
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

'generate-id-904'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $f := function($x as item()) {\"\"} return generate-id($f)",
    {Env, Opts} = xqerl_test:handle_environment(environment('empty', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-904.xq"), Qry1),
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

'generate-id-905'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "generate-id(//*)",
    {Env, Opts} = xqerl_test:handle_environment(environment('works-mod', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "generate-id-905.xq"), Qry1),
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
