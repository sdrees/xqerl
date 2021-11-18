-module('prod_ReturnClause_SUITE').

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

-export(['ReturnExpr001'/1]).
-export(['ReturnExpr002'/1]).
-export(['ReturnExpr003'/1]).
-export(['ReturnExpr004'/1]).
-export(['ReturnExpr005'/1]).
-export(['ReturnExpr006'/1]).
-export(['ReturnExpr007'/1]).
-export(['ReturnExpr008'/1]).
-export(['ReturnExpr009'/1]).
-export(['ReturnExpr010'/1]).
-export(['ReturnExpr011'/1]).
-export(['ReturnExpr012'/1]).
-export(['ReturnExpr013'/1]).
-export(['ReturnExpr014'/1]).
-export(['ReturnExpr015'/1]).
-export(['ReturnExpr016'/1]).
-export(['ReturnExpr017'/1]).
-export(['ReturnExpr018'/1]).
-export(['ReturnExpr019'/1]).
-export(['ReturnExpr020'/1]).
-export(['K2-ReturnExpr-1'/1]).

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
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'ReturnExpr001',
            'ReturnExpr002',
            'ReturnExpr003',
            'ReturnExpr004',
            'ReturnExpr005',
            'ReturnExpr006',
            'ReturnExpr007',
            'ReturnExpr008',
            'ReturnExpr009',
            'ReturnExpr010',
            'ReturnExpr011',
            'ReturnExpr012',
            'ReturnExpr013',
            'ReturnExpr014',
            'ReturnExpr015',
            'ReturnExpr016',
            'ReturnExpr017',
            'ReturnExpr018',
            'ReturnExpr019',
            'ReturnExpr020',
            'K2-ReturnExpr-1'
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
    ].

'ReturnExpr001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $folder in /MyComputer/Drive2//Folder return <newFolder>{ $folder/FolderName/text() }</newFolder>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr001.xq"), Qry1),
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
                "<newFolder>Folder00000000001</newFolder><newFolder>Folder00000000002</newFolder><newFolder>Folder00000000003</newFolder><newFolder>Folder00000000004</newFolder><newFolder>Folder00000000005</newFolder><newFolder>Folder00000000006</newFolder><newFolder>Folder00000000007</newFolder><newFolder>Folder00000000008</newFolder><newFolder>Folder00000000009</newFolder><newFolder>Folder00000000010</newFolder><newFolder>Folder00000000011</newFolder><newFolder>Folder00000000012</newFolder><newFolder>Folder00000000013</newFolder><newFolder>Folder00000000014</newFolder><newFolder>Folder00000000015</newFolder><newFolder>Folder00000000016</newFolder>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $folder in /MyComputer/Drive2//Folder return <newFolder>{ $folder/@name, $folder/FolderName/text() }</newFolder>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr002.xq"), Qry1),
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
                "<newFolder name=\"Folder00000000001\">Folder00000000001</newFolder><newFolder name=\"Folder00000000002\">Folder00000000002</newFolder><newFolder name=\"Folder00000000003\">Folder00000000003</newFolder><newFolder name=\"Folder00000000004\">Folder00000000004</newFolder><newFolder name=\"Folder00000000005\">Folder00000000005</newFolder><newFolder name=\"Folder00000000006\">Folder00000000006</newFolder><newFolder name=\"Folder00000000007\">Folder00000000007</newFolder><newFolder name=\"Folder00000000008\">Folder00000000008</newFolder><newFolder name=\"Folder00000000009\">Folder00000000009</newFolder><newFolder name=\"Folder00000000010\">Folder00000000010</newFolder><newFolder name=\"Folder00000000011\">Folder00000000011</newFolder><newFolder name=\"Folder00000000012\">Folder00000000012</newFolder><newFolder name=\"Folder00000000013\">Folder00000000013</newFolder><newFolder name=\"Folder00000000014\">Folder00000000014</newFolder><newFolder name=\"Folder00000000015\">Folder00000000015</newFolder><newFolder name=\"Folder00000000016\">Folder00000000016</newFolder>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $folder in /MyComputer/Drive1/Folder[1] \n"
        "        return <folder1> {$folder/FolderName} <files> { \n"
        "                    for $file in ($folder/File)[position() < 6] \n"
        "                    return <f>{$file/FileName/substring(.,13)}</f> } </files> \n"
        "               </folder1>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr003.xq"), Qry1),
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
                "<folder1><FolderName>Folder00000000000</FolderName><files><f>000</f><f>001</f><f>002</f><f>003</f><f>004</f></files></folder1>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $f in /MyComputer//File where $f/@creation_date=\"08/06/00\" return $f/SecurityObject/Denies/Deny[security/right]/user/string()",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "system\\Toshiko") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr005.xq"), Qry1),
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
                "<FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return data( $file/FileName )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr006.xq"), Qry1),
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
                "File00000000000 File00000000001 File00000000002 File00000000003 File00000000004 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return $file/parent::Folder/FolderName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr007.xq"), Qry1),
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
                "<FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName><FolderName>Folder00000000000</FolderName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr008.xq"), Qry1),
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
                "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return (//FileName)[1]",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr009.xq"), Qry1),
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
                "<FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName><FileName>File00000000000</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<empty> { for $file in (//Folder)[1]/File return () } </empty>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr010.xq"), Qry1),
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
                    case xqerl_test:assert_xml(Res, "<empty />") of
                        true -> {comment, "XML Deep equal"};
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

'ReturnExpr011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $folder in //Folder, $file in $folder/File return ( $folder/FolderName, $file/FileName )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr011.xq"), Qry1),
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
                "<FolderName>Folder00000000000</FolderName><FileName>File00000000000</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000001</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000002</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000003</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000004</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000005</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000006</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000007</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000008</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000009</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000010</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000011</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000012</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000013</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000014</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000015</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000016</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000017</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000018</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000019</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000020</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000021</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000022</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000023</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000024</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000025</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000026</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000027</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000028</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000029</FileName><FolderName>Folder00000000000</FolderName><FileName>File00000000030</FileName><FolderName>Folder00000000001</FolderName><FileName>File00000000031</FileName><FolderName>Folder00000000002</FolderName><FileName>File00000000032</FileName><FolderName>Folder00000000003</FolderName><FileName>File00000000033</FileName><FolderName>Folder00000000004</FolderName><FileName>File00000000034</FileName><FolderName>Folder00000000005</FolderName><FileName>File00000000035</FileName><FolderName>Folder00000000006</FolderName><FileName>File00000000036</FileName><FolderName>Folder00000000007</FolderName><FileName>File00000000037</FileName><FolderName>Folder00000000008</FolderName><FileName>File00000000038</FileName><FolderName>Folder00000000009</FolderName><FileName>File00000000039</FileName><FolderName>Folder00000000010</FolderName><FileName>File00000000040</FileName><FolderName>Folder00000000011</FolderName><FileName>File00000000041</FileName><FolderName>Folder00000000012</FolderName><FileName>File00000000042</FileName><FolderName>Folder00000000013</FolderName><FileName>File00000000043</FileName><FolderName>Folder00000000014</FolderName><FileName>File00000000044</FileName><FolderName>Folder00000000015</FolderName><FileName>File00000000045</FileName><FolderName>Folder00000000016</FolderName><FileName>File00000000046</FileName><FolderName>Folder00000000017</FolderName><FileName>File00000000047</FileName><FolderName>Folder00000000018</FolderName><FileName>File00000000048</FileName><FolderName>Folder00000000019</FolderName><FileName>File00000000049</FileName><FolderName>Folder00000000020</FolderName><FileName>File00000000050</FileName><FolderName>Folder00000000021</FolderName><FileName>File00000000051</FileName><FolderName>Folder00000000022</FolderName><FileName>File00000000052</FileName><FolderName>Folder00000000023</FolderName><FileName>File00000000053</FileName><FolderName>Folder00000000024</FolderName><FileName>File00000000054</FileName><FolderName>Folder00000000025</FolderName><FileName>File00000000055</FileName><FolderName>Folder00000000026</FolderName><FileName>File00000000056</FileName><FolderName>Folder00000000027</FolderName><FileName>File00000000057</FileName><FolderName>Folder00000000028</FolderName><FileName>File00000000058</FileName><FolderName>Folder00000000029</FolderName><FileName>File00000000059</FileName><FolderName>Folder00000000030</FolderName><FileName>File00000000060</FileName><FolderName>Folder00000000031</FolderName><FileName>File00000000061</FileName><FolderName>Folder00000000032</FolderName><FileName>File00000000062</FileName><FolderName>Folder00000000033</FolderName><FileName>File00000000063</FileName><FolderName>Folder00000000034</FolderName><FileName>File00000000064</FileName><FolderName>Folder00000000035</FolderName><FileName>File00000000065</FileName><FolderName>Folder00000000036</FolderName><FileName>File00000000066</FileName><FolderName>Folder00000000037</FolderName><FileName>File00000000067</FileName><FolderName>Folder00000000038</FolderName><FileName>File00000000068</FileName><FolderName>Folder00000000039</FolderName><FileName>File00000000069</FileName><FolderName>Folder00000000040</FolderName><FileName>File00000000070</FileName><FolderName>Folder00000000041</FolderName><FileName>File00000000071</FileName><FolderName>Folder00000000042</FolderName><FileName>File00000000072</FileName><FolderName>Folder00000000043</FolderName><FileName>File00000000073</FileName><FolderName>Folder00000000044</FolderName><FileName>File00000000074</FileName><FolderName>Folder00000000045</FolderName><FileName>File00000000075</FileName><FolderName>Folder00000000046</FolderName><FileName>File00000000076</FileName><FolderName>Folder00000000048</FolderName><FileName>File00000000077</FileName><FolderName>Folder00000000048</FolderName><FileName>File00000000078</FileName><FolderName>Folder00000000048</FolderName><FileName>File00000000079</FileName><FolderName>Folder00000000048</FolderName><FileName>File00000000080</FileName><FolderName>Folder00000000048</FolderName><FileName>File00000000081</FileName><FolderName>Folder00000000049</FolderName><FileName>File00000000082</FileName><FolderName>Folder00000000049</FolderName><FileName>File00000000083</FileName><FolderName>Folder00000000049</FolderName><FileName>File00000000084</FileName><FolderName>Folder00000000049</FolderName><FileName>File00000000085</FileName><FolderName>Folder00000000049</FolderName><FileName>File00000000086</FileName><FolderName>Folder00000000050</FolderName><FileName>File00000000087</FileName><FolderName>Folder00000000050</FolderName><FileName>File00000000088</FileName><FolderName>Folder00000000051</FolderName><FileName>File00000000089</FileName><FolderName>Folder00000000051</FolderName><FileName>File00000000090</FileName><FolderName>Folder00000000051</FolderName><FileName>File00000000091</FileName><FolderName>Folder00000000051</FolderName><FileName>File00000000092</FileName><FolderName>Folder00000000051</FolderName><FileName>File00000000093</FileName><FolderName>Folder00000000051</FolderName><FileName>File00000000094</FileName><FolderName>Folder00000000052</FolderName><FileName>File00000000095</FileName><FolderName>Folder00000000052</FolderName><FileName>File00000000096</FileName><FolderName>Folder00000000053</FolderName><FileName>File00000000097</FileName><FolderName>Folder00000000053</FolderName><FileName>File00000000098</FileName><FolderName>Folder00000000053</FolderName><FileName>File00000000099</FileName><FolderName>Folder00000000054</FolderName><FileName>File00000000100</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return $file return $file",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr012.xq"), Qry1),
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

'ReturnExpr013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr013.xq"), Qry1),
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

'ReturnExpr014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return $undefined",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr014.xq"), Qry1),
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

'ReturnExpr015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in for $folder in (//Folder)[1] return $folder/File return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr015.xq"), Qry1),
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
                "<FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000003</FileName><FileName>File00000000004</FileName><FileName>File00000000005</FileName><FileName>File00000000006</FileName><FileName>File00000000007</FileName><FileName>File00000000008</FileName><FileName>File00000000009</FileName><FileName>File00000000010</FileName><FileName>File00000000011</FileName><FileName>File00000000012</FileName><FileName>File00000000013</FileName><FileName>File00000000014</FileName><FileName>File00000000015</FileName><FileName>File00000000016</FileName><FileName>File00000000017</FileName><FileName>File00000000018</FileName><FileName>File00000000019</FileName><FileName>File00000000020</FileName><FileName>File00000000021</FileName><FileName>File00000000022</FileName><FileName>File00000000023</FileName><FileName>File00000000024</FileName><FileName>File00000000025</FileName><FileName>File00000000026</FileName><FileName>File00000000027</FileName><FileName>File00000000028</FileName><FileName>File00000000029</FileName><FileName>File00000000030</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $file at $offset in (//Folder)[1]/File return <File>{ $file/@name }{ attribute offset{ $offset }}</File>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr016.xq"), Qry1),
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
                "<File name=\"File00000000000\" offset=\"1\" /><File name=\"File00000000001\" offset=\"2\" /><File name=\"File00000000002\" offset=\"3\" /><File name=\"File00000000003\" offset=\"4\" /><File name=\"File00000000004\" offset=\"5\" /><File name=\"File00000000005\" offset=\"6\" /><File name=\"File00000000006\" offset=\"7\" /><File name=\"File00000000007\" offset=\"8\" /><File name=\"File00000000008\" offset=\"9\" /><File name=\"File00000000009\" offset=\"10\" /><File name=\"File00000000010\" offset=\"11\" /><File name=\"File00000000011\" offset=\"12\" /><File name=\"File00000000012\" offset=\"13\" /><File name=\"File00000000013\" offset=\"14\" /><File name=\"File00000000014\" offset=\"15\" /><File name=\"File00000000015\" offset=\"16\" /><File name=\"File00000000016\" offset=\"17\" /><File name=\"File00000000017\" offset=\"18\" /><File name=\"File00000000018\" offset=\"19\" /><File name=\"File00000000019\" offset=\"20\" /><File name=\"File00000000020\" offset=\"21\" /><File name=\"File00000000021\" offset=\"22\" /><File name=\"File00000000022\" offset=\"23\" /><File name=\"File00000000023\" offset=\"24\" /><File name=\"File00000000024\" offset=\"25\" /><File name=\"File00000000025\" offset=\"26\" /><File name=\"File00000000026\" offset=\"27\" /><File name=\"File00000000027\" offset=\"28\" /><File name=\"File00000000028\" offset=\"29\" /><File name=\"File00000000029\" offset=\"30\" /><File name=\"File00000000030\" offset=\"31\" />"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return ($file/Stream/StreamSize)[1] + 1",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr017.xq"), Qry1),
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
                "1002.33 1003.33 1004.33 1005.33 1006.33 1007.33 1008.33 1009.33 1010.33 1011.33 1012.33 1013.33 1014.33 1015.33 1016.33 1017.33 1018.33 1019.33 1020.33 1021.33 1022.33 1023.33 1024.33 1025.33 1026.33 1027.33 1028.33 1029.33 1030.33 1031.33 1032.33"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return ($file/Stream/StreamSize)[1] > 1004",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr018.xq"), Qry1),
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
                "false false false true true true true true true true true true true true true true true true true true true true true true true true true true true true true"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ReturnExpr019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr019.xq"), Qry1),
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

'ReturnExpr020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File return xs:string( data( $file/FileName[1] ))",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ReturnExpr020.xq"), Qry1),
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
                "File00000000000 File00000000001 File00000000002 File00000000003 File00000000004 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReturnExpr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReturnExpr-1.xq"), Qry1),
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
