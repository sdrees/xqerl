-module('prod_IfExpr_SUITE').

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

-export(['CondExpr002'/1]).
-export(['CondExpr003'/1]).
-export(['CondExpr004'/1]).
-export(['CondExpr005'/1]).
-export(['CondExpr006'/1]).
-export(['CondExpr007'/1]).
-export(['CondExpr008'/1]).
-export(['CondExpr009'/1]).
-export(['CondExpr010'/1]).
-export(['CondExpr011'/1]).
-export(['CondExpr012'/1]).
-export(['CondExpr013'/1]).
-export(['CondExpr014'/1]).
-export(['CondExpr015'/1]).
-export(['CondExpr016'/1]).
-export(['CondExpr017'/1]).
-export(['CondExpr018'/1]).
-export(['CondExpr019'/1]).
-export(['CondExpr20'/1]).
-export(['CondExpr21'/1]).
-export(['CondExpr022'/1]).
-export(['K-CondExpr-1'/1]).
-export(['K-CondExpr-2'/1]).
-export(['K-CondExpr-3'/1]).
-export(['K-CondExpr-4'/1]).
-export(['K-CondExpr-5'/1]).
-export(['K-CondExpr-6'/1]).
-export(['K-CondExpr-7'/1]).
-export(['K-CondExpr-8'/1]).
-export(['K-CondExpr-9'/1]).
-export(['K-CondExpr-10'/1]).
-export(['K-CondExpr-11'/1]).
-export(['K-CondExpr-12'/1]).
-export(['K2-CondExpr-1'/1]).
-export(['K2-CondExpr-2'/1]).
-export(['K2-CondExpr-3'/1]).
-export(['K2-CondExpr-4'/1]).
-export(['K2-CondExpr-5'/1]).
-export(['K2-CondExpr-6'/1]).
-export(['K2-CondExpr-7'/1]).
-export(['cbcl-condexpr-001'/1]).
-export(['cbcl-condexpr-002'/1]).

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
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'CondExpr002',
            'CondExpr003',
            'CondExpr004',
            'CondExpr005',
            'CondExpr006',
            'CondExpr007',
            'CondExpr008',
            'CondExpr009',
            'CondExpr010',
            'CondExpr011',
            'CondExpr012',
            'CondExpr013',
            'CondExpr014',
            'CondExpr015',
            'CondExpr016',
            'CondExpr017',
            'CondExpr018',
            'CondExpr019',
            'CondExpr20',
            'CondExpr21',
            'CondExpr022',
            'K-CondExpr-1',
            'K-CondExpr-2'
        ]},
        {group_1, [parallel], [
            'K-CondExpr-3',
            'K-CondExpr-4',
            'K-CondExpr-5',
            'K-CondExpr-6',
            'K-CondExpr-7',
            'K-CondExpr-8',
            'K-CondExpr-9',
            'K-CondExpr-10',
            'K-CondExpr-11',
            'K-CondExpr-12',
            'K2-CondExpr-1',
            'K2-CondExpr-2',
            'K2-CondExpr-3',
            'K2-CondExpr-4',
            'K2-CondExpr-5',
            'K2-CondExpr-6',
            'K2-CondExpr-7',
            'cbcl-condexpr-001',
            'cbcl-condexpr-002'
        ]}
    ].

environment('fsx', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "ForClause/fsx.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('nw_Customers', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/nw_Customers.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('acme_corp', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../op/union/acme_corp.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('xq311A', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "IfExpr/xq311A.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'CondExpr002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if (fn:true()) then <elem1/> else <elem2/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<elem1/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if (fn:false()) then <elem1/> else <elem2/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<elem2/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if (//CompanyName) then <elem1/> else <elem2/>",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<elem1/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if (//NodeDoesNotExist) then <elem1/> else <elem2/>",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<elem2/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<out>{ if (1 != 0) then if (4 != 5) then 1 else 2 else 3 }</out>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<out>1</out>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (//MissingNode) then <elem3/> else if (/Root/Customers[@CustomerID='ALFKI']//Country = \"Germany\") then <elem1/> else <elem2/>",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr007.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<elem1/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if ( /Root/Customers[1]/@CustomerID = 'ALFKI' and /Root/Customers[1]/FullAddress/City = 'Berlin') then \"pass\" else \"fail\"",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr008.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pass") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (/Root/Customers[1]/@CustomerID = 'ALFKI' or /Root/Customers[1]/FullAddress/City = 'Non-Existent') then \"pass\" else \"fail\"",
    {Env, Opts} = xqerl_test:handle_environment(environment('nw_Customers', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr009.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "pass") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " if (2 != 4) then 1 else 0 ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr010.xq"), Qry1),
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

'CondExpr011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:string-length(if (2 != 3) then 'foo' else 'expanded-foo')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr011.xq"), Qry1),
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

'CondExpr012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (/doc/widget1/@unit-cost = /doc/widget2/@unit-cost) then /doc/widget1/@name else /doc/widget2/@name",
    {Env, Opts} = xqerl_test:handle_environment(environment('xq311A', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr012.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "axolotl") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        " if (if (5 != 3) then fn:true() else fn:empty(/doc/widget1)) then \"search\" else \"assume\" ",
    {Env, Opts} = xqerl_test:handle_environment(environment('xq311A', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr013.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "search") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " ( if (3 != 2) then 16 else 0 ) + ( if (8 = 7) then 4 else 1 ) ",
    {Env, Opts} = xqerl_test:handle_environment(environment('xq311A', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr014.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "17") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " (if (3 != 2) then 16 else 0) + (if (8 = 7) then 4 else 1) ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "17") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(//Folder)[1]/File[ if ( ./@name='File00000000000' ) then 2 else true() ]/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr016.xq"), Qry1),
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
                "<FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $file in (//Folder)[1]/File return if( $file/FileName='File00000000000' ) then $file/FileName else data( $file/FileName )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr017.xq"), Qry1),
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
                    case xqerl_test:assert_count(Res, "31") of
                        true -> {comment, "Count correct"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "$result[1][. instance of element(FileName)][. = 'File00000000000']"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "every $r in subsequence($result,2) satisfies $r instance of xs:untypedAtomic"
                        )
                    of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert(
                            Res,
                            "string-join(subsequence($result,2), ' ') eq \"File00000000001 File00000000002 File00000000003 File00000000004 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030\""
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

'CondExpr018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $file in (//Folder)[1]/File return if( $file/FileName='File00000000004' ) then 1 else data( $file/FileName )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr018.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "File00000000000 File00000000001 File00000000002 File00000000003 1 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if //File[1] then \"true\" else \"false\"",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr019.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'CondExpr20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if( false() ) then /Folder[1] cast as xs:double ? else 10 cast as xs:double ?",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr20.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if( true() ) then 10 cast as xs:double ? else /Folder[1] cast as xs:double ?",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr21.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CondExpr022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (doc-available('nodocument.xml')) then doc('nodocument.xml') else 10 cast as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CondExpr022.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "10") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-CondExpr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(if(2) then 1 else 0) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-1.xq"), Qry1),
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

'K-CondExpr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if(()) then false() else true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-2.xq"), Qry1),
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

'K-CondExpr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(if((1, current-time())[1] treat as xs:integer) then true() else false()) eq true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-3.xq"), Qry1),
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

'K-CondExpr-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(if(boolean((1, current-time())[1] treat as xs:integer)) then true() else false()) eq true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-4.xq"), Qry1),
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

'K-CondExpr-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if((1, 2, 3, hours-from-time(current-time()))[1]) then true() else false()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-5.xq"), Qry1),
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

'K-CondExpr-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "string(if(boolean((1, current-time())[1] treat as xs:integer)) then true() else false()) eq \"true\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-6.xq"), Qry1),
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

'K-CondExpr-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(if(current-time()) then 1 else 0) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-7.xq"), Qry1),
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

'K-CondExpr-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (if(xs:anyURI(\"example.com/\")) then 1 else 0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-8.xq"), Qry1),
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

'K-CondExpr-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "0 eq (if(xs:anyURI(\"\")) then 1 else 0)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-9.xq"), Qry1),
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

'K-CondExpr-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if(count((1, 2, 3, current-time(), 4))) then true() else 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-10.xq"), Qry1),
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

'K-CondExpr-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if(not(count(remove((1, 2, 3, current-time()), 1)))) then 3 else true()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-11.xq"), Qry1),
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

'K-CondExpr-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if(boolean((1, 2, 3, current-time())[1] treat as xs:integer)) then true() else 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-CondExpr-12.xq"), Qry1),
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

'K2-CondExpr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(if(<e>{current-time()}</e>) then () else ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-1.xq"), Qry1),
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

'K2-CondExpr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(if(<e>{current-time()}</e>) then 1 else 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-2.xq"), Qry1),
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

'K2-CondExpr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare default function namespace \"http://www.example.com/\"; declare function unordered() { 1 }; unordered()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-3.xq"), Qry1),
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

'K2-CondExpr-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if(//(employee[location = \"Denver\"]/ancestor::*)) then 1 else 3",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-4.xq"), Qry1),
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

'K2-CondExpr-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "if(!true()) then 2 else 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-5.xq"), Qry1),
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

'K2-CondExpr-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/if(true()) then 1 else 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-6.xq"), Qry1),
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

'K2-CondExpr-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else if (1) then 1 else ()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-CondExpr-7.xq"), Qry1),
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

'cbcl-condexpr-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	let $x := zero-or-one((1 to 10)[. div 2 = 2]) \n"
        "      	return if(exists($x)) then xs:string($x) else ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-condexpr-001.xq"), Qry1),
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

'cbcl-condexpr-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	let $x := zero-or-one((1 to 10)[. div 2 = 2]) \n"
        "      	return if(empty($x)) then () else xs:string($x)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-condexpr-002.xq"), Qry1),
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
