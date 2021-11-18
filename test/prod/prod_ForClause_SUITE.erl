-module('prod_ForClause_SUITE').

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

-export(['ForExpr001'/1]).
-export(['ForExpr002'/1]).
-export(['ForExpr003'/1]).
-export(['ForExpr004'/1]).
-export(['ForExpr005'/1]).
-export(['ForExpr006'/1]).
-export(['ForExpr007'/1]).
-export(['ForExpr008'/1]).
-export(['ForExpr009'/1]).
-export(['ForExpr010'/1]).
-export(['ForExpr011'/1]).
-export(['ForExpr012'/1]).
-export(['ForExpr013'/1]).
-export(['ForExpr014'/1]).
-export(['ForExpr015'/1]).
-export(['ForExpr016'/1]).
-export(['ForExpr017'/1]).
-export(['ForExpr018'/1]).
-export(['ForExpr019'/1]).
-export(['ForExpr020'/1]).
-export(['ForExpr021'/1]).
-export(['ForExpr022'/1]).
-export(['ForExpr023'/1]).
-export(['ForExpr024'/1]).
-export(['ForExpr025'/1]).
-export(['ForExpr026'/1]).
-export(['ForExpr027'/1]).
-export(['ForExpr028'/1]).
-export(['ForExpr029'/1]).
-export(['ForExpr030'/1]).
-export(['ForExpr031'/1]).
-export(['ForExpr032'/1]).
-export(['K-ForExprWithout-1'/1]).
-export(['K-ForExprWithout-2'/1]).
-export(['K-ForExprWithout-3'/1]).
-export(['K-ForExprWithout-4'/1]).
-export(['K-ForExprWithout-5'/1]).
-export(['K-ForExprWithout-6'/1]).
-export(['K-ForExprWithout-7'/1]).
-export(['K-ForExprWithout-8'/1]).
-export(['K-ForExprWithout-9'/1]).
-export(['K-ForExprWithout-10'/1]).
-export(['K-ForExprWithout-11'/1]).
-export(['K-ForExprWithout-12'/1]).
-export(['K-ForExprWithout-13'/1]).
-export(['K-ForExprWithout-14'/1]).
-export(['K-ForExprWithout-15'/1]).
-export(['K-ForExprWithout-16'/1]).
-export(['K-ForExprWithout-17'/1]).
-export(['K-ForExprWithout-18'/1]).
-export(['K-ForExprWithout-19'/1]).
-export(['K-ForExprWithout-20'/1]).
-export(['K-ForExprWithout-21'/1]).
-export(['K-ForExprWithout-22'/1]).
-export(['K-ForExprWithout-23'/1]).
-export(['K-ForExprWithout-24'/1]).
-export(['K-ForExprWithout-25'/1]).
-export(['K-ForExprWithout-26'/1]).
-export(['K-ForExprWithout-27'/1]).
-export(['K-ForExprWithout-28'/1]).
-export(['K-ForExprWithout-29'/1]).
-export(['K-ForExprWithout-30'/1]).
-export(['K-ForExprWithout-31'/1]).
-export(['K-ForExprWithout-32'/1]).
-export(['K-ForExprWithout-33'/1]).
-export(['K-ForExprWithout-34'/1]).
-export(['K-ForExprWithout-35'/1]).
-export(['K-ForExprWithout-36'/1]).
-export(['K-ForExprWithout-37'/1]).
-export(['K-ForExprWithout-38'/1]).
-export(['K-ForExprWithout-39'/1]).
-export(['K-ForExprWithout-40'/1]).
-export(['K-ForExprWithout-41'/1]).
-export(['K-ForExprWithout-42'/1]).
-export(['K-ForExprWithout-43'/1]).
-export(['K-ForExprWithout-44'/1]).
-export(['K-ForExprWithout-45'/1]).
-export(['K-ForExprWithout-46'/1]).
-export(['K-ForExprWithout-47'/1]).
-export(['K-ForExprWithout-48'/1]).
-export(['K-ForExprWithout-49'/1]).
-export(['K-ForExprWithout-50'/1]).
-export(['K-ForExprWithout-51'/1]).
-export(['K-ForExprWithout-52'/1]).
-export(['K-ForExprWithout-53'/1]).
-export(['K-ForExprWithout-54'/1]).
-export(['K-ForExprWithout-55'/1]).
-export(['K-ForExprWithout-56'/1]).
-export(['K2-ForExprWithout-1'/1]).
-export(['K2-ForExprWithout-2'/1]).
-export(['K2-ForExprWithout-3'/1]).
-export(['K2-ForExprWithout-4'/1]).
-export(['K2-ForExprWithout-5'/1]).
-export(['K2-ForExprWithout-6'/1]).
-export(['K2-ForExprWithout-7'/1]).
-export(['K2-ForExprWithout-8'/1]).
-export(['K2-ForExprWithout-9'/1]).
-export(['K2-ForExprWithout-10'/1]).
-export(['K2-ForExprWithout-11'/1]).
-export(['K2-ForExprWithout-12'/1]).
-export(['K2-ForExprWithout-13'/1]).
-export(['K2-ForExprWithout-14'/1]).
-export(['K2-ForExprWithout-15'/1]).
-export(['K2-ForExprWithout-16'/1]).
-export(['K2-ForExprWithout-17'/1]).
-export(['K2-ForExprWithout-18'/1]).
-export(['K2-ForExprWithout-19'/1]).
-export(['K2-ForExprWithout-20'/1]).
-export(['K2-ForExprWithout-21'/1]).
-export(['K2-ForExprWithout-22'/1]).
-export(['K2-ForExprWithout-23'/1]).
-export(['K2-ForExprWithout-24'/1]).
-export(['K2-ForExprWithout-25'/1]).
-export(['K2-ForExprWithout-26'/1]).
-export(['K2-ForExprWithout-27'/1]).
-export(['K2-ForExprWithout-28'/1]).
-export(['K2-ForExprWithout-29'/1]).
-export(['K2-ForExprWithout-30'/1]).
-export(['K2-ForExprWithout-31'/1]).
-export(['K2-ForExprWithout-32'/1]).
-export(['K2-ForExprWithout-33'/1]).
-export(['K2-ForExprWithout-34'/1]).
-export(['K2-ForExprWithout-35'/1]).
-export(['K2-ForExprWithout-36'/1]).
-export(['K2-ForExprWithout-37'/1]).
-export(['K2-ForExprWithout-38'/1]).
-export(['K2-ForExprWithout-39'/1]).
-export(['K2-ForExprWithout-40'/1]).
-export(['K2-ForExprWithout-41'/1]).
-export(['K2-ForExprWithout-42'/1]).
-export(['K2-ForExprWithout-43'/1]).
-export(['K2-ForExprWithout-44'/1]).
-export(['K2-ForExprWithout-45'/1]).
-export(['ForExprType001'/1]).
-export(['ForExprType002'/1]).
-export(['ForExprType003'/1]).
-export(['ForExprType004'/1]).
-export(['ForExprType005'/1]).
-export(['ForExprType006'/1]).
-export(['ForExprType007'/1]).
-export(['ForExprType008'/1]).
-export(['ForExprType009'/1]).
-export(['ForExprType011'/1]).
-export(['ForExprType012'/1]).
-export(['ForExprType013'/1]).
-export(['ForExprType014'/1]).
-export(['ForExprType015'/1]).
-export(['ForExprType016'/1]).
-export(['ForExprType017'/1]).
-export(['ForExprType018'/1]).
-export(['ForExprType019'/1]).
-export(['ForExprType020'/1]).
-export(['ForExprType021'/1]).
-export(['ForExprType022'/1]).
-export(['ForExprType023'/1]).
-export(['ForExprType024'/1]).
-export(['ForExprType028'/1]).
-export(['ForExprType029'/1]).
-export(['ForExprType030'/1]).
-export(['ForExprType031'/1]).
-export(['ForExprType032'/1]).
-export(['ForExprType033'/1]).
-export(['ForExprType034'/1]).
-export(['ForExprType035'/1]).
-export(['ForExprType036'/1]).
-export(['ForExprType045'/1]).
-export(['ForExprType046'/1]).
-export(['ForExprType047'/1]).
-export(['ForExprType054'/1]).
-export(['ForExprType055'/1]).
-export(['ForExprType056'/1]).
-export(['ForExprType057'/1]).
-export(['ForExprType058'/1]).
-export(['ForExprType059'/1]).
-export(['ForExprType060'/1]).
-export(['ForExprType061'/1]).
-export(['ForExprType062'/1]).
-export(['ForExprType063'/1]).
-export(['ForExprType064'/1]).
-export(['ForExprType065'/1]).
-export(['ForExprType066'/1]).
-export(['ForExprType067'/1]).
-export(['ForExprType068'/1]).
-export(['ForExprType069'/1]).
-export(['ForExprType070'/1]).
-export(['ForExprType071'/1]).
-export(['ForExprType072'/1]).
-export(['ForExprType073'/1]).
-export(['K2-ForExprWith-1'/1]).

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
            'ForExpr001',
            'ForExpr002',
            'ForExpr003',
            'ForExpr004',
            'ForExpr005',
            'ForExpr006',
            'ForExpr007',
            'ForExpr008',
            'ForExpr009',
            'ForExpr010',
            'ForExpr011',
            'ForExpr012',
            'ForExpr013',
            'ForExpr014',
            'ForExpr015',
            'ForExpr016',
            'ForExpr017',
            'ForExpr018',
            'ForExpr019',
            'ForExpr020',
            'ForExpr021',
            'ForExpr022',
            'ForExpr023'
        ]},
        {group_1, [parallel], [
            'ForExpr024',
            'ForExpr025',
            'ForExpr026',
            'ForExpr027',
            'ForExpr028',
            'ForExpr029',
            'ForExpr030',
            'ForExpr031',
            'ForExpr032',
            'K-ForExprWithout-1',
            'K-ForExprWithout-2',
            'K-ForExprWithout-3',
            'K-ForExprWithout-4',
            'K-ForExprWithout-5',
            'K-ForExprWithout-6',
            'K-ForExprWithout-7',
            'K-ForExprWithout-8',
            'K-ForExprWithout-9',
            'K-ForExprWithout-10',
            'K-ForExprWithout-11',
            'K-ForExprWithout-12',
            'K-ForExprWithout-13',
            'K-ForExprWithout-14',
            'K-ForExprWithout-15'
        ]},
        {group_2, [parallel], [
            'K-ForExprWithout-16',
            'K-ForExprWithout-17',
            'K-ForExprWithout-18',
            'K-ForExprWithout-19',
            'K-ForExprWithout-20',
            'K-ForExprWithout-21',
            'K-ForExprWithout-22',
            'K-ForExprWithout-23',
            'K-ForExprWithout-24',
            'K-ForExprWithout-25',
            'K-ForExprWithout-26',
            'K-ForExprWithout-27',
            'K-ForExprWithout-28',
            'K-ForExprWithout-29',
            'K-ForExprWithout-30',
            'K-ForExprWithout-31',
            'K-ForExprWithout-32',
            'K-ForExprWithout-33',
            'K-ForExprWithout-34',
            'K-ForExprWithout-35',
            'K-ForExprWithout-36',
            'K-ForExprWithout-37',
            'K-ForExprWithout-38',
            'K-ForExprWithout-39'
        ]},
        {group_3, [parallel], [
            'K-ForExprWithout-40',
            'K-ForExprWithout-41',
            'K-ForExprWithout-42',
            'K-ForExprWithout-43',
            'K-ForExprWithout-44',
            'K-ForExprWithout-45',
            'K-ForExprWithout-46',
            'K-ForExprWithout-47',
            'K-ForExprWithout-48',
            'K-ForExprWithout-49',
            'K-ForExprWithout-50',
            'K-ForExprWithout-51',
            'K-ForExprWithout-52',
            'K-ForExprWithout-53',
            'K-ForExprWithout-54',
            'K-ForExprWithout-55',
            'K-ForExprWithout-56',
            'K2-ForExprWithout-1',
            'K2-ForExprWithout-2',
            'K2-ForExprWithout-3',
            'K2-ForExprWithout-4',
            'K2-ForExprWithout-5',
            'K2-ForExprWithout-6',
            'K2-ForExprWithout-7'
        ]},
        {group_4, [parallel], [
            'K2-ForExprWithout-8',
            'K2-ForExprWithout-9',
            'K2-ForExprWithout-10',
            'K2-ForExprWithout-11',
            'K2-ForExprWithout-12',
            'K2-ForExprWithout-13',
            'K2-ForExprWithout-14',
            'K2-ForExprWithout-15',
            'K2-ForExprWithout-16',
            'K2-ForExprWithout-17',
            'K2-ForExprWithout-18',
            'K2-ForExprWithout-19',
            'K2-ForExprWithout-20',
            'K2-ForExprWithout-21',
            'K2-ForExprWithout-22',
            'K2-ForExprWithout-23',
            'K2-ForExprWithout-24',
            'K2-ForExprWithout-25',
            'K2-ForExprWithout-26',
            'K2-ForExprWithout-27',
            'K2-ForExprWithout-28',
            'K2-ForExprWithout-29',
            'K2-ForExprWithout-30',
            'K2-ForExprWithout-31'
        ]},
        {group_5, [parallel], [
            'K2-ForExprWithout-32',
            'K2-ForExprWithout-33',
            'K2-ForExprWithout-34',
            'K2-ForExprWithout-35',
            'K2-ForExprWithout-36',
            'K2-ForExprWithout-37',
            'K2-ForExprWithout-38',
            'K2-ForExprWithout-39',
            'K2-ForExprWithout-40',
            'K2-ForExprWithout-41',
            'K2-ForExprWithout-42',
            'K2-ForExprWithout-43',
            'K2-ForExprWithout-44',
            'K2-ForExprWithout-45',
            'ForExprType001',
            'ForExprType002',
            'ForExprType003',
            'ForExprType004',
            'ForExprType005',
            'ForExprType006',
            'ForExprType007',
            'ForExprType008',
            'ForExprType009',
            'ForExprType011'
        ]},
        {group_6, [parallel], [
            'ForExprType012',
            'ForExprType013',
            'ForExprType014',
            'ForExprType015',
            'ForExprType016',
            'ForExprType017',
            'ForExprType018',
            'ForExprType019',
            'ForExprType020',
            'ForExprType021',
            'ForExprType022',
            'ForExprType023',
            'ForExprType024',
            'ForExprType028',
            'ForExprType029',
            'ForExprType030',
            'ForExprType031',
            'ForExprType032',
            'ForExprType033',
            'ForExprType034',
            'ForExprType035',
            'ForExprType036',
            'ForExprType045',
            'ForExprType046'
        ]},
        {group_7, [parallel], [
            'ForExprType047',
            'ForExprType054',
            'ForExprType055',
            'ForExprType056',
            'ForExprType057',
            'ForExprType058',
            'ForExprType059',
            'ForExprType060',
            'ForExprType061',
            'ForExprType062',
            'ForExprType063',
            'ForExprType064',
            'ForExprType065',
            'ForExprType066',
            'ForExprType067',
            'ForExprType068',
            'ForExprType069',
            'ForExprType070',
            'ForExprType071',
            'ForExprType072',
            'ForExprType073',
            'K2-ForExprWith-1'
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
environment('fsx_NS2', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "ForClause/fsx_NS.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('orderData', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "OrderByClause/orderData.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "OrderByClause/orderData.xsd"),
                "http://www.w3.org/XQueryTestOrderBy"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('SpecialTypes', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "ForClause/SpecialTypes.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "ForClause/SpecialTypes.xsd"),
                "http://www.example.com/typedecl"}
        ]},
        {resources, []},
        {modules, []}
    ].

'ForExpr001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (\"test\", \"test1\", \"test2\") return $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "test test1 test2") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $folder in $folder/File return <file name=\"{$folder/File/FileName}\"/>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr002.xq"), Qry1),
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

'ForExpr003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $f in /MyComputer/Drive4/Folder[@id=\"128\"] return <FolderName>{$f/@name}</FolderName>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<FolderName name=\"Folder00000000047\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $f in /MyComputer/Drive1/Folder[@creator=\"Mani\"]/File[@creation_date=\"08/06/00\"] return <file>{$f/../@creator}{$f/@creation_date}</file>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<file creator=\"Mani\" creation_date=\"08/06/00\" />") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $f in /MyComputer//File[@creation_date=\"08/06/00\"]/SecurityObject/Denies/Deny[security/right] return $f/../../@name/string()",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "so00000000001") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<fragment-result>{ for $folder in /MyComputer/Drive3/Folder ,$file in /MyComputer/Drive3/Folder/File return <Folder>{ $folder/@name, $folder/@id }<file>{ $file/@idref }{ data($file/@name) }</file> </Folder> }</fragment-result>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr006.xq"), Qry1),
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
                "<fragment-result><Folder name=\"Folder00000000017\" id=\"67\"><file idref=\"67\">File00000000047</file></Folder><Folder name=\"Folder00000000017\" id=\"67\"><file idref=\"97\">File00000000062</file></Folder><Folder name=\"Folder00000000032\" id=\"97\"><file idref=\"67\">File00000000047</file></Folder><Folder name=\"Folder00000000032\" id=\"97\"><file idref=\"97\">File00000000062</file></Folder></fragment-result>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $AaBbCc.-_Dd in /MyComputer/Drive1/Folder return $AaBbCc.-_Dd/FolderName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr007.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<FolderName>Folder00000000000</FolderName>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $AaBbCc.-_Dd in /MyComputer/Drive1/Folder where $AaBbCc.-_Dd/@creator = \"Mani\" return $AaBbCc.-_Dd/FolderName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr008.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<FolderName>Folder00000000000</FolderName>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in $a/* return $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr009.xq"), Qry1),
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

'ForExpr010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $folder in //Folder for $file in $folder//File return <File folder=\"{$folder/FolderName}\">{string($file/FileName[1])}</File>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr010.xq"), Qry1),
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
                "<File folder=\"Folder00000000000\">File00000000000</File><File folder=\"Folder00000000000\">File00000000001</File><File folder=\"Folder00000000000\">File00000000002</File><File folder=\"Folder00000000000\">File00000000003</File><File folder=\"Folder00000000000\">File00000000004</File><File folder=\"Folder00000000000\">File00000000005</File><File folder=\"Folder00000000000\">File00000000006</File><File folder=\"Folder00000000000\">File00000000007</File><File folder=\"Folder00000000000\">File00000000008</File><File folder=\"Folder00000000000\">File00000000009</File><File folder=\"Folder00000000000\">File00000000010</File><File folder=\"Folder00000000000\">File00000000011</File><File folder=\"Folder00000000000\">File00000000012</File><File folder=\"Folder00000000000\">File00000000013</File><File folder=\"Folder00000000000\">File00000000014</File><File folder=\"Folder00000000000\">File00000000015</File><File folder=\"Folder00000000000\">File00000000016</File><File folder=\"Folder00000000000\">File00000000017</File><File folder=\"Folder00000000000\">File00000000018</File><File folder=\"Folder00000000000\">File00000000019</File><File folder=\"Folder00000000000\">File00000000020</File><File folder=\"Folder00000000000\">File00000000021</File><File folder=\"Folder00000000000\">File00000000022</File><File folder=\"Folder00000000000\">File00000000023</File><File folder=\"Folder00000000000\">File00000000024</File><File folder=\"Folder00000000000\">File00000000025</File><File folder=\"Folder00000000000\">File00000000026</File><File folder=\"Folder00000000000\">File00000000027</File><File folder=\"Folder00000000000\">File00000000028</File><File folder=\"Folder00000000000\">File00000000029</File><File folder=\"Folder00000000000\">File00000000030</File><File folder=\"Folder00000000001\">File00000000031</File><File folder=\"Folder00000000001\">File00000000032</File><File folder=\"Folder00000000001\">File00000000033</File><File folder=\"Folder00000000001\">File00000000034</File><File folder=\"Folder00000000001\">File00000000035</File><File folder=\"Folder00000000001\">File00000000036</File><File folder=\"Folder00000000001\">File00000000037</File><File folder=\"Folder00000000001\">File00000000038</File><File folder=\"Folder00000000001\">File00000000039</File><File folder=\"Folder00000000001\">File00000000040</File><File folder=\"Folder00000000001\">File00000000041</File><File folder=\"Folder00000000001\">File00000000042</File><File folder=\"Folder00000000001\">File00000000043</File><File folder=\"Folder00000000001\">File00000000044</File><File folder=\"Folder00000000001\">File00000000045</File><File folder=\"Folder00000000001\">File00000000046</File><File folder=\"Folder00000000002\">File00000000032</File><File folder=\"Folder00000000002\">File00000000033</File><File folder=\"Folder00000000002\">File00000000034</File><File folder=\"Folder00000000002\">File00000000035</File><File folder=\"Folder00000000002\">File00000000036</File><File folder=\"Folder00000000002\">File00000000037</File><File folder=\"Folder00000000002\">File00000000038</File><File folder=\"Folder00000000002\">File00000000039</File><File folder=\"Folder00000000002\">File00000000040</File><File folder=\"Folder00000000002\">File00000000041</File><File folder=\"Folder00000000002\">File00000000042</File><File folder=\"Folder00000000002\">File00000000043</File><File folder=\"Folder00000000002\">File00000000044</File><File folder=\"Folder00000000002\">File00000000045</File><File folder=\"Folder00000000002\">File00000000046</File><File folder=\"Folder00000000003\">File00000000033</File><File folder=\"Folder00000000003\">File00000000034</File><File folder=\"Folder00000000003\">File00000000035</File><File folder=\"Folder00000000003\">File00000000036</File><File folder=\"Folder00000000003\">File00000000037</File><File folder=\"Folder00000000003\">File00000000038</File><File folder=\"Folder00000000003\">File00000000039</File><File folder=\"Folder00000000003\">File00000000040</File><File folder=\"Folder00000000003\">File00000000041</File><File folder=\"Folder00000000003\">File00000000042</File><File folder=\"Folder00000000003\">File00000000043</File><File folder=\"Folder00000000003\">File00000000044</File><File folder=\"Folder00000000003\">File00000000045</File><File folder=\"Folder00000000003\">File00000000046</File><File folder=\"Folder00000000004\">File00000000034</File><File folder=\"Folder00000000004\">File00000000035</File><File folder=\"Folder00000000004\">File00000000036</File><File folder=\"Folder00000000004\">File00000000037</File><File folder=\"Folder00000000004\">File00000000038</File><File folder=\"Folder00000000004\">File00000000039</File><File folder=\"Folder00000000004\">File00000000040</File><File folder=\"Folder00000000004\">File00000000041</File><File folder=\"Folder00000000004\">File00000000042</File><File folder=\"Folder00000000004\">File00000000043</File><File folder=\"Folder00000000004\">File00000000044</File><File folder=\"Folder00000000004\">File00000000045</File><File folder=\"Folder00000000004\">File00000000046</File><File folder=\"Folder00000000005\">File00000000035</File><File folder=\"Folder00000000005\">File00000000036</File><File folder=\"Folder00000000005\">File00000000037</File><File folder=\"Folder00000000005\">File00000000038</File><File folder=\"Folder00000000005\">File00000000039</File><File folder=\"Folder00000000005\">File00000000040</File><File folder=\"Folder00000000005\">File00000000041</File><File folder=\"Folder00000000005\">File00000000042</File><File folder=\"Folder00000000005\">File00000000043</File><File folder=\"Folder00000000005\">File00000000044</File><File folder=\"Folder00000000005\">File00000000045</File><File folder=\"Folder00000000005\">File00000000046</File><File folder=\"Folder00000000006\">File00000000036</File><File folder=\"Folder00000000006\">File00000000037</File><File folder=\"Folder00000000006\">File00000000038</File><File folder=\"Folder00000000006\">File00000000039</File><File folder=\"Folder00000000006\">File00000000040</File><File folder=\"Folder00000000006\">File00000000041</File><File folder=\"Folder00000000006\">File00000000042</File><File folder=\"Folder00000000006\">File00000000043</File><File folder=\"Folder00000000006\">File00000000044</File><File folder=\"Folder00000000006\">File00000000045</File><File folder=\"Folder00000000006\">File00000000046</File><File folder=\"Folder00000000007\">File00000000037</File><File folder=\"Folder00000000007\">File00000000038</File><File folder=\"Folder00000000007\">File00000000039</File><File folder=\"Folder00000000007\">File00000000040</File><File folder=\"Folder00000000007\">File00000000041</File><File folder=\"Folder00000000007\">File00000000042</File><File folder=\"Folder00000000007\">File00000000043</File><File folder=\"Folder00000000007\">File00000000044</File><File folder=\"Folder00000000007\">File00000000045</File><File folder=\"Folder00000000007\">File00000000046</File><File folder=\"Folder00000000008\">File00000000038</File><File folder=\"Folder00000000008\">File00000000039</File><File folder=\"Folder00000000008\">File00000000040</File><File folder=\"Folder00000000008\">File00000000041</File><File folder=\"Folder00000000008\">File00000000042</File><File folder=\"Folder00000000008\">File00000000043</File><File folder=\"Folder00000000008\">File00000000044</File><File folder=\"Folder00000000008\">File00000000045</File><File folder=\"Folder00000000008\">File00000000046</File><File folder=\"Folder00000000009\">File00000000039</File><File folder=\"Folder00000000009\">File00000000040</File><File folder=\"Folder00000000009\">File00000000041</File><File folder=\"Folder00000000009\">File00000000042</File><File folder=\"Folder00000000009\">File00000000043</File><File folder=\"Folder00000000009\">File00000000044</File><File folder=\"Folder00000000009\">File00000000045</File><File folder=\"Folder00000000009\">File00000000046</File><File folder=\"Folder00000000010\">File00000000040</File><File folder=\"Folder00000000010\">File00000000041</File><File folder=\"Folder00000000010\">File00000000042</File><File folder=\"Folder00000000010\">File00000000043</File><File folder=\"Folder00000000010\">File00000000044</File><File folder=\"Folder00000000010\">File00000000045</File><File folder=\"Folder00000000010\">File00000000046</File><File folder=\"Folder00000000011\">File00000000041</File><File folder=\"Folder00000000011\">File00000000042</File><File folder=\"Folder00000000011\">File00000000043</File><File folder=\"Folder00000000011\">File00000000044</File><File folder=\"Folder00000000011\">File00000000045</File><File folder=\"Folder00000000011\">File00000000046</File><File folder=\"Folder00000000012\">File00000000042</File><File folder=\"Folder00000000012\">File00000000043</File><File folder=\"Folder00000000012\">File00000000044</File><File folder=\"Folder00000000012\">File00000000045</File><File folder=\"Folder00000000012\">File00000000046</File><File folder=\"Folder00000000013\">File00000000043</File><File folder=\"Folder00000000013\">File00000000044</File><File folder=\"Folder00000000013\">File00000000045</File><File folder=\"Folder00000000013\">File00000000046</File><File folder=\"Folder00000000014\">File00000000044</File><File folder=\"Folder00000000014\">File00000000045</File><File folder=\"Folder00000000014\">File00000000046</File><File folder=\"Folder00000000015\">File00000000045</File><File folder=\"Folder00000000015\">File00000000046</File><File folder=\"Folder00000000016\">File00000000046</File><File folder=\"Folder00000000017\">File00000000047</File><File folder=\"Folder00000000017\">File00000000048</File><File folder=\"Folder00000000017\">File00000000049</File><File folder=\"Folder00000000017\">File00000000050</File><File folder=\"Folder00000000017\">File00000000051</File><File folder=\"Folder00000000017\">File00000000052</File><File folder=\"Folder00000000017\">File00000000053</File><File folder=\"Folder00000000017\">File00000000054</File><File folder=\"Folder00000000017\">File00000000055</File><File folder=\"Folder00000000017\">File00000000056</File><File folder=\"Folder00000000017\">File00000000057</File><File folder=\"Folder00000000017\">File00000000058</File><File folder=\"Folder00000000017\">File00000000059</File><File folder=\"Folder00000000017\">File00000000060</File><File folder=\"Folder00000000017\">File00000000061</File><File folder=\"Folder00000000018\">File00000000048</File><File folder=\"Folder00000000018\">File00000000049</File><File folder=\"Folder00000000018\">File00000000050</File><File folder=\"Folder00000000018\">File00000000051</File><File folder=\"Folder00000000018\">File00000000052</File><File folder=\"Folder00000000018\">File00000000053</File><File folder=\"Folder00000000018\">File00000000054</File><File folder=\"Folder00000000019\">File00000000049</File><File folder=\"Folder00000000019\">File00000000050</File><File folder=\"Folder00000000019\">File00000000051</File><File folder=\"Folder00000000020\">File00000000050</File><File folder=\"Folder00000000021\">File00000000051</File><File folder=\"Folder00000000022\">File00000000052</File><File folder=\"Folder00000000022\">File00000000053</File><File folder=\"Folder00000000022\">File00000000054</File><File folder=\"Folder00000000023\">File00000000053</File><File folder=\"Folder00000000024\">File00000000054</File><File folder=\"Folder00000000025\">File00000000055</File><File folder=\"Folder00000000025\">File00000000056</File><File folder=\"Folder00000000025\">File00000000057</File><File folder=\"Folder00000000025\">File00000000058</File><File folder=\"Folder00000000025\">File00000000059</File><File folder=\"Folder00000000025\">File00000000060</File><File folder=\"Folder00000000025\">File00000000061</File><File folder=\"Folder00000000026\">File00000000056</File><File folder=\"Folder00000000026\">File00000000057</File><File folder=\"Folder00000000026\">File00000000058</File><File folder=\"Folder00000000027\">File00000000057</File><File folder=\"Folder00000000028\">File00000000058</File><File folder=\"Folder00000000029\">File00000000059</File><File folder=\"Folder00000000029\">File00000000060</File><File folder=\"Folder00000000029\">File00000000061</File><File folder=\"Folder00000000030\">File00000000060</File><File folder=\"Folder00000000031\">File00000000061</File><File folder=\"Folder00000000032\">File00000000062</File><File folder=\"Folder00000000032\">File00000000063</File><File folder=\"Folder00000000032\">File00000000064</File><File folder=\"Folder00000000032\">File00000000065</File><File folder=\"Folder00000000032\">File00000000066</File><File folder=\"Folder00000000032\">File00000000067</File><File folder=\"Folder00000000032\">File00000000068</File><File folder=\"Folder00000000032\">File00000000069</File><File folder=\"Folder00000000032\">File00000000070</File><File folder=\"Folder00000000032\">File00000000071</File><File folder=\"Folder00000000032\">File00000000072</File><File folder=\"Folder00000000032\">File00000000073</File><File folder=\"Folder00000000032\">File00000000074</File><File folder=\"Folder00000000032\">File00000000075</File><File folder=\"Folder00000000032\">File00000000076</File><File folder=\"Folder00000000033\">File00000000063</File><File folder=\"Folder00000000033\">File00000000064</File><File folder=\"Folder00000000033\">File00000000065</File><File folder=\"Folder00000000033\">File00000000066</File><File folder=\"Folder00000000033\">File00000000067</File><File folder=\"Folder00000000033\">File00000000068</File><File folder=\"Folder00000000033\">File00000000069</File><File folder=\"Folder00000000034\">File00000000064</File><File folder=\"Folder00000000034\">File00000000065</File><File folder=\"Folder00000000034\">File00000000066</File><File folder=\"Folder00000000035\">File00000000065</File><File folder=\"Folder00000000036\">File00000000066</File><File folder=\"Folder00000000037\">File00000000067</File><File folder=\"Folder00000000037\">File00000000068</File><File folder=\"Folder00000000037\">File00000000069</File><File folder=\"Folder00000000038\">File00000000068</File><File folder=\"Folder00000000039\">File00000000069</File><File folder=\"Folder00000000040\">File00000000070</File><File folder=\"Folder00000000040\">File00000000071</File><File folder=\"Folder00000000040\">File00000000072</File><File folder=\"Folder00000000040\">File00000000073</File><File folder=\"Folder00000000040\">File00000000074</File><File folder=\"Folder00000000040\">File00000000075</File><File folder=\"Folder00000000040\">File00000000076</File><File folder=\"Folder00000000041\">File00000000071</File><File folder=\"Folder00000000041\">File00000000072</File><File folder=\"Folder00000000041\">File00000000073</File><File folder=\"Folder00000000042\">File00000000072</File><File folder=\"Folder00000000043\">File00000000073</File><File folder=\"Folder00000000044\">File00000000074</File><File folder=\"Folder00000000044\">File00000000075</File><File folder=\"Folder00000000044\">File00000000076</File><File folder=\"Folder00000000045\">File00000000075</File><File folder=\"Folder00000000046\">File00000000076</File><File folder=\"Folder00000000047\">File00000000077</File><File folder=\"Folder00000000047\">File00000000078</File><File folder=\"Folder00000000047\">File00000000079</File><File folder=\"Folder00000000047\">File00000000080</File><File folder=\"Folder00000000047\">File00000000081</File><File folder=\"Folder00000000047\">File00000000082</File><File folder=\"Folder00000000047\">File00000000083</File><File folder=\"Folder00000000047\">File00000000084</File><File folder=\"Folder00000000047\">File00000000085</File><File folder=\"Folder00000000047\">File00000000086</File><File folder=\"Folder00000000047\">File00000000087</File><File folder=\"Folder00000000047\">File00000000088</File><File folder=\"Folder00000000047\">File00000000089</File><File folder=\"Folder00000000047\">File00000000090</File><File folder=\"Folder00000000047\">File00000000091</File><File folder=\"Folder00000000047\">File00000000092</File><File folder=\"Folder00000000047\">File00000000093</File><File folder=\"Folder00000000047\">File00000000094</File><File folder=\"Folder00000000047\">File00000000095</File><File folder=\"Folder00000000047\">File00000000096</File><File folder=\"Folder00000000047\">File00000000097</File><File folder=\"Folder00000000047\">File00000000098</File><File folder=\"Folder00000000047\">File00000000099</File><File folder=\"Folder00000000047\">File00000000100</File><File folder=\"Folder00000000048\">File00000000077</File><File folder=\"Folder00000000048\">File00000000078</File><File folder=\"Folder00000000048\">File00000000079</File><File folder=\"Folder00000000048\">File00000000080</File><File folder=\"Folder00000000048\">File00000000081</File><File folder=\"Folder00000000049\">File00000000082</File><File folder=\"Folder00000000049\">File00000000083</File><File folder=\"Folder00000000049\">File00000000084</File><File folder=\"Folder00000000049\">File00000000085</File><File folder=\"Folder00000000049\">File00000000086</File><File folder=\"Folder00000000050\">File00000000087</File><File folder=\"Folder00000000050\">File00000000088</File><File folder=\"Folder00000000051\">File00000000089</File><File folder=\"Folder00000000051\">File00000000090</File><File folder=\"Folder00000000051\">File00000000091</File><File folder=\"Folder00000000051\">File00000000092</File><File folder=\"Folder00000000051\">File00000000093</File><File folder=\"Folder00000000051\">File00000000094</File><File folder=\"Folder00000000052\">File00000000095</File><File folder=\"Folder00000000052\">File00000000096</File><File folder=\"Folder00000000053\">File00000000097</File><File folder=\"Folder00000000053\">File00000000098</File><File folder=\"Folder00000000053\">File00000000099</File><File folder=\"Folder00000000054\">File00000000100</File>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $folder in //Folder, $file in $folder//File return <File folder=\"{$folder/FolderName}\">{string($file/FileName[1])}</File>",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr011.xq"), Qry1),
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
                "<File folder=\"Folder00000000000\">File00000000000</File><File folder=\"Folder00000000000\">File00000000001</File><File folder=\"Folder00000000000\">File00000000002</File><File folder=\"Folder00000000000\">File00000000003</File><File folder=\"Folder00000000000\">File00000000004</File><File folder=\"Folder00000000000\">File00000000005</File><File folder=\"Folder00000000000\">File00000000006</File><File folder=\"Folder00000000000\">File00000000007</File><File folder=\"Folder00000000000\">File00000000008</File><File folder=\"Folder00000000000\">File00000000009</File><File folder=\"Folder00000000000\">File00000000010</File><File folder=\"Folder00000000000\">File00000000011</File><File folder=\"Folder00000000000\">File00000000012</File><File folder=\"Folder00000000000\">File00000000013</File><File folder=\"Folder00000000000\">File00000000014</File><File folder=\"Folder00000000000\">File00000000015</File><File folder=\"Folder00000000000\">File00000000016</File><File folder=\"Folder00000000000\">File00000000017</File><File folder=\"Folder00000000000\">File00000000018</File><File folder=\"Folder00000000000\">File00000000019</File><File folder=\"Folder00000000000\">File00000000020</File><File folder=\"Folder00000000000\">File00000000021</File><File folder=\"Folder00000000000\">File00000000022</File><File folder=\"Folder00000000000\">File00000000023</File><File folder=\"Folder00000000000\">File00000000024</File><File folder=\"Folder00000000000\">File00000000025</File><File folder=\"Folder00000000000\">File00000000026</File><File folder=\"Folder00000000000\">File00000000027</File><File folder=\"Folder00000000000\">File00000000028</File><File folder=\"Folder00000000000\">File00000000029</File><File folder=\"Folder00000000000\">File00000000030</File><File folder=\"Folder00000000001\">File00000000031</File><File folder=\"Folder00000000001\">File00000000032</File><File folder=\"Folder00000000001\">File00000000033</File><File folder=\"Folder00000000001\">File00000000034</File><File folder=\"Folder00000000001\">File00000000035</File><File folder=\"Folder00000000001\">File00000000036</File><File folder=\"Folder00000000001\">File00000000037</File><File folder=\"Folder00000000001\">File00000000038</File><File folder=\"Folder00000000001\">File00000000039</File><File folder=\"Folder00000000001\">File00000000040</File><File folder=\"Folder00000000001\">File00000000041</File><File folder=\"Folder00000000001\">File00000000042</File><File folder=\"Folder00000000001\">File00000000043</File><File folder=\"Folder00000000001\">File00000000044</File><File folder=\"Folder00000000001\">File00000000045</File><File folder=\"Folder00000000001\">File00000000046</File><File folder=\"Folder00000000002\">File00000000032</File><File folder=\"Folder00000000002\">File00000000033</File><File folder=\"Folder00000000002\">File00000000034</File><File folder=\"Folder00000000002\">File00000000035</File><File folder=\"Folder00000000002\">File00000000036</File><File folder=\"Folder00000000002\">File00000000037</File><File folder=\"Folder00000000002\">File00000000038</File><File folder=\"Folder00000000002\">File00000000039</File><File folder=\"Folder00000000002\">File00000000040</File><File folder=\"Folder00000000002\">File00000000041</File><File folder=\"Folder00000000002\">File00000000042</File><File folder=\"Folder00000000002\">File00000000043</File><File folder=\"Folder00000000002\">File00000000044</File><File folder=\"Folder00000000002\">File00000000045</File><File folder=\"Folder00000000002\">File00000000046</File><File folder=\"Folder00000000003\">File00000000033</File><File folder=\"Folder00000000003\">File00000000034</File><File folder=\"Folder00000000003\">File00000000035</File><File folder=\"Folder00000000003\">File00000000036</File><File folder=\"Folder00000000003\">File00000000037</File><File folder=\"Folder00000000003\">File00000000038</File><File folder=\"Folder00000000003\">File00000000039</File><File folder=\"Folder00000000003\">File00000000040</File><File folder=\"Folder00000000003\">File00000000041</File><File folder=\"Folder00000000003\">File00000000042</File><File folder=\"Folder00000000003\">File00000000043</File><File folder=\"Folder00000000003\">File00000000044</File><File folder=\"Folder00000000003\">File00000000045</File><File folder=\"Folder00000000003\">File00000000046</File><File folder=\"Folder00000000004\">File00000000034</File><File folder=\"Folder00000000004\">File00000000035</File><File folder=\"Folder00000000004\">File00000000036</File><File folder=\"Folder00000000004\">File00000000037</File><File folder=\"Folder00000000004\">File00000000038</File><File folder=\"Folder00000000004\">File00000000039</File><File folder=\"Folder00000000004\">File00000000040</File><File folder=\"Folder00000000004\">File00000000041</File><File folder=\"Folder00000000004\">File00000000042</File><File folder=\"Folder00000000004\">File00000000043</File><File folder=\"Folder00000000004\">File00000000044</File><File folder=\"Folder00000000004\">File00000000045</File><File folder=\"Folder00000000004\">File00000000046</File><File folder=\"Folder00000000005\">File00000000035</File><File folder=\"Folder00000000005\">File00000000036</File><File folder=\"Folder00000000005\">File00000000037</File><File folder=\"Folder00000000005\">File00000000038</File><File folder=\"Folder00000000005\">File00000000039</File><File folder=\"Folder00000000005\">File00000000040</File><File folder=\"Folder00000000005\">File00000000041</File><File folder=\"Folder00000000005\">File00000000042</File><File folder=\"Folder00000000005\">File00000000043</File><File folder=\"Folder00000000005\">File00000000044</File><File folder=\"Folder00000000005\">File00000000045</File><File folder=\"Folder00000000005\">File00000000046</File><File folder=\"Folder00000000006\">File00000000036</File><File folder=\"Folder00000000006\">File00000000037</File><File folder=\"Folder00000000006\">File00000000038</File><File folder=\"Folder00000000006\">File00000000039</File><File folder=\"Folder00000000006\">File00000000040</File><File folder=\"Folder00000000006\">File00000000041</File><File folder=\"Folder00000000006\">File00000000042</File><File folder=\"Folder00000000006\">File00000000043</File><File folder=\"Folder00000000006\">File00000000044</File><File folder=\"Folder00000000006\">File00000000045</File><File folder=\"Folder00000000006\">File00000000046</File><File folder=\"Folder00000000007\">File00000000037</File><File folder=\"Folder00000000007\">File00000000038</File><File folder=\"Folder00000000007\">File00000000039</File><File folder=\"Folder00000000007\">File00000000040</File><File folder=\"Folder00000000007\">File00000000041</File><File folder=\"Folder00000000007\">File00000000042</File><File folder=\"Folder00000000007\">File00000000043</File><File folder=\"Folder00000000007\">File00000000044</File><File folder=\"Folder00000000007\">File00000000045</File><File folder=\"Folder00000000007\">File00000000046</File><File folder=\"Folder00000000008\">File00000000038</File><File folder=\"Folder00000000008\">File00000000039</File><File folder=\"Folder00000000008\">File00000000040</File><File folder=\"Folder00000000008\">File00000000041</File><File folder=\"Folder00000000008\">File00000000042</File><File folder=\"Folder00000000008\">File00000000043</File><File folder=\"Folder00000000008\">File00000000044</File><File folder=\"Folder00000000008\">File00000000045</File><File folder=\"Folder00000000008\">File00000000046</File><File folder=\"Folder00000000009\">File00000000039</File><File folder=\"Folder00000000009\">File00000000040</File><File folder=\"Folder00000000009\">File00000000041</File><File folder=\"Folder00000000009\">File00000000042</File><File folder=\"Folder00000000009\">File00000000043</File><File folder=\"Folder00000000009\">File00000000044</File><File folder=\"Folder00000000009\">File00000000045</File><File folder=\"Folder00000000009\">File00000000046</File><File folder=\"Folder00000000010\">File00000000040</File><File folder=\"Folder00000000010\">File00000000041</File><File folder=\"Folder00000000010\">File00000000042</File><File folder=\"Folder00000000010\">File00000000043</File><File folder=\"Folder00000000010\">File00000000044</File><File folder=\"Folder00000000010\">File00000000045</File><File folder=\"Folder00000000010\">File00000000046</File><File folder=\"Folder00000000011\">File00000000041</File><File folder=\"Folder00000000011\">File00000000042</File><File folder=\"Folder00000000011\">File00000000043</File><File folder=\"Folder00000000011\">File00000000044</File><File folder=\"Folder00000000011\">File00000000045</File><File folder=\"Folder00000000011\">File00000000046</File><File folder=\"Folder00000000012\">File00000000042</File><File folder=\"Folder00000000012\">File00000000043</File><File folder=\"Folder00000000012\">File00000000044</File><File folder=\"Folder00000000012\">File00000000045</File><File folder=\"Folder00000000012\">File00000000046</File><File folder=\"Folder00000000013\">File00000000043</File><File folder=\"Folder00000000013\">File00000000044</File><File folder=\"Folder00000000013\">File00000000045</File><File folder=\"Folder00000000013\">File00000000046</File><File folder=\"Folder00000000014\">File00000000044</File><File folder=\"Folder00000000014\">File00000000045</File><File folder=\"Folder00000000014\">File00000000046</File><File folder=\"Folder00000000015\">File00000000045</File><File folder=\"Folder00000000015\">File00000000046</File><File folder=\"Folder00000000016\">File00000000046</File><File folder=\"Folder00000000017\">File00000000047</File><File folder=\"Folder00000000017\">File00000000048</File><File folder=\"Folder00000000017\">File00000000049</File><File folder=\"Folder00000000017\">File00000000050</File><File folder=\"Folder00000000017\">File00000000051</File><File folder=\"Folder00000000017\">File00000000052</File><File folder=\"Folder00000000017\">File00000000053</File><File folder=\"Folder00000000017\">File00000000054</File><File folder=\"Folder00000000017\">File00000000055</File><File folder=\"Folder00000000017\">File00000000056</File><File folder=\"Folder00000000017\">File00000000057</File><File folder=\"Folder00000000017\">File00000000058</File><File folder=\"Folder00000000017\">File00000000059</File><File folder=\"Folder00000000017\">File00000000060</File><File folder=\"Folder00000000017\">File00000000061</File><File folder=\"Folder00000000018\">File00000000048</File><File folder=\"Folder00000000018\">File00000000049</File><File folder=\"Folder00000000018\">File00000000050</File><File folder=\"Folder00000000018\">File00000000051</File><File folder=\"Folder00000000018\">File00000000052</File><File folder=\"Folder00000000018\">File00000000053</File><File folder=\"Folder00000000018\">File00000000054</File><File folder=\"Folder00000000019\">File00000000049</File><File folder=\"Folder00000000019\">File00000000050</File><File folder=\"Folder00000000019\">File00000000051</File><File folder=\"Folder00000000020\">File00000000050</File><File folder=\"Folder00000000021\">File00000000051</File><File folder=\"Folder00000000022\">File00000000052</File><File folder=\"Folder00000000022\">File00000000053</File><File folder=\"Folder00000000022\">File00000000054</File><File folder=\"Folder00000000023\">File00000000053</File><File folder=\"Folder00000000024\">File00000000054</File><File folder=\"Folder00000000025\">File00000000055</File><File folder=\"Folder00000000025\">File00000000056</File><File folder=\"Folder00000000025\">File00000000057</File><File folder=\"Folder00000000025\">File00000000058</File><File folder=\"Folder00000000025\">File00000000059</File><File folder=\"Folder00000000025\">File00000000060</File><File folder=\"Folder00000000025\">File00000000061</File><File folder=\"Folder00000000026\">File00000000056</File><File folder=\"Folder00000000026\">File00000000057</File><File folder=\"Folder00000000026\">File00000000058</File><File folder=\"Folder00000000027\">File00000000057</File><File folder=\"Folder00000000028\">File00000000058</File><File folder=\"Folder00000000029\">File00000000059</File><File folder=\"Folder00000000029\">File00000000060</File><File folder=\"Folder00000000029\">File00000000061</File><File folder=\"Folder00000000030\">File00000000060</File><File folder=\"Folder00000000031\">File00000000061</File><File folder=\"Folder00000000032\">File00000000062</File><File folder=\"Folder00000000032\">File00000000063</File><File folder=\"Folder00000000032\">File00000000064</File><File folder=\"Folder00000000032\">File00000000065</File><File folder=\"Folder00000000032\">File00000000066</File><File folder=\"Folder00000000032\">File00000000067</File><File folder=\"Folder00000000032\">File00000000068</File><File folder=\"Folder00000000032\">File00000000069</File><File folder=\"Folder00000000032\">File00000000070</File><File folder=\"Folder00000000032\">File00000000071</File><File folder=\"Folder00000000032\">File00000000072</File><File folder=\"Folder00000000032\">File00000000073</File><File folder=\"Folder00000000032\">File00000000074</File><File folder=\"Folder00000000032\">File00000000075</File><File folder=\"Folder00000000032\">File00000000076</File><File folder=\"Folder00000000033\">File00000000063</File><File folder=\"Folder00000000033\">File00000000064</File><File folder=\"Folder00000000033\">File00000000065</File><File folder=\"Folder00000000033\">File00000000066</File><File folder=\"Folder00000000033\">File00000000067</File><File folder=\"Folder00000000033\">File00000000068</File><File folder=\"Folder00000000033\">File00000000069</File><File folder=\"Folder00000000034\">File00000000064</File><File folder=\"Folder00000000034\">File00000000065</File><File folder=\"Folder00000000034\">File00000000066</File><File folder=\"Folder00000000035\">File00000000065</File><File folder=\"Folder00000000036\">File00000000066</File><File folder=\"Folder00000000037\">File00000000067</File><File folder=\"Folder00000000037\">File00000000068</File><File folder=\"Folder00000000037\">File00000000069</File><File folder=\"Folder00000000038\">File00000000068</File><File folder=\"Folder00000000039\">File00000000069</File><File folder=\"Folder00000000040\">File00000000070</File><File folder=\"Folder00000000040\">File00000000071</File><File folder=\"Folder00000000040\">File00000000072</File><File folder=\"Folder00000000040\">File00000000073</File><File folder=\"Folder00000000040\">File00000000074</File><File folder=\"Folder00000000040\">File00000000075</File><File folder=\"Folder00000000040\">File00000000076</File><File folder=\"Folder00000000041\">File00000000071</File><File folder=\"Folder00000000041\">File00000000072</File><File folder=\"Folder00000000041\">File00000000073</File><File folder=\"Folder00000000042\">File00000000072</File><File folder=\"Folder00000000043\">File00000000073</File><File folder=\"Folder00000000044\">File00000000074</File><File folder=\"Folder00000000044\">File00000000075</File><File folder=\"Folder00000000044\">File00000000076</File><File folder=\"Folder00000000045\">File00000000075</File><File folder=\"Folder00000000046\">File00000000076</File><File folder=\"Folder00000000047\">File00000000077</File><File folder=\"Folder00000000047\">File00000000078</File><File folder=\"Folder00000000047\">File00000000079</File><File folder=\"Folder00000000047\">File00000000080</File><File folder=\"Folder00000000047\">File00000000081</File><File folder=\"Folder00000000047\">File00000000082</File><File folder=\"Folder00000000047\">File00000000083</File><File folder=\"Folder00000000047\">File00000000084</File><File folder=\"Folder00000000047\">File00000000085</File><File folder=\"Folder00000000047\">File00000000086</File><File folder=\"Folder00000000047\">File00000000087</File><File folder=\"Folder00000000047\">File00000000088</File><File folder=\"Folder00000000047\">File00000000089</File><File folder=\"Folder00000000047\">File00000000090</File><File folder=\"Folder00000000047\">File00000000091</File><File folder=\"Folder00000000047\">File00000000092</File><File folder=\"Folder00000000047\">File00000000093</File><File folder=\"Folder00000000047\">File00000000094</File><File folder=\"Folder00000000047\">File00000000095</File><File folder=\"Folder00000000047\">File00000000096</File><File folder=\"Folder00000000047\">File00000000097</File><File folder=\"Folder00000000047\">File00000000098</File><File folder=\"Folder00000000047\">File00000000099</File><File folder=\"Folder00000000047\">File00000000100</File><File folder=\"Folder00000000048\">File00000000077</File><File folder=\"Folder00000000048\">File00000000078</File><File folder=\"Folder00000000048\">File00000000079</File><File folder=\"Folder00000000048\">File00000000080</File><File folder=\"Folder00000000048\">File00000000081</File><File folder=\"Folder00000000049\">File00000000082</File><File folder=\"Folder00000000049\">File00000000083</File><File folder=\"Folder00000000049\">File00000000084</File><File folder=\"Folder00000000049\">File00000000085</File><File folder=\"Folder00000000049\">File00000000086</File><File folder=\"Folder00000000050\">File00000000087</File><File folder=\"Folder00000000050\">File00000000088</File><File folder=\"Folder00000000051\">File00000000089</File><File folder=\"Folder00000000051\">File00000000090</File><File folder=\"Folder00000000051\">File00000000091</File><File folder=\"Folder00000000051\">File00000000092</File><File folder=\"Folder00000000051\">File00000000093</File><File folder=\"Folder00000000051\">File00000000094</File><File folder=\"Folder00000000052\">File00000000095</File><File folder=\"Folder00000000052\">File00000000096</File><File folder=\"Folder00000000053\">File00000000097</File><File folder=\"Folder00000000053\">File00000000098</File><File folder=\"Folder00000000053\">File00000000099</File><File folder=\"Folder00000000054\">File00000000100</File>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $fileName in for $file in //Folder/File return $file/FileName return string( $fileName )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr012.xq"), Qry1),
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
                "File00000000000 File00000000001 File00000000002 File00000000003 File00000000004 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030 File00000000031 File00000000032 File00000000033 File00000000034 File00000000035 File00000000036 File00000000037 File00000000038 File00000000039 File00000000040 File00000000041 File00000000042 File00000000043 File00000000044 File00000000045 File00000000046 File00000000047 File00000000048 File00000000049 File00000000050 File00000000051 File00000000052 File00000000053 File00000000054 File00000000055 File00000000056 File00000000057 File00000000058 File00000000059 File00000000060 File00000000061 File00000000062 File00000000063 File00000000064 File00000000065 File00000000066 File00000000067 File00000000068 File00000000069 File00000000070 File00000000071 File00000000072 File00000000073 File00000000074 File00000000075 File00000000076 File00000000077 File00000000078 File00000000079 File00000000080 File00000000081 File00000000082 File00000000083 File00000000084 File00000000085 File00000000086 File00000000087 File00000000088 File00000000089 File00000000090 File00000000091 File00000000092 File00000000093 File00000000094 File00000000095 File00000000096 File00000000097 File00000000098 File00000000099 File00000000100"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $fileName in //File/FileName, \n"
        "            $folderName in //Folder[contains(description, 'fren')]/FolderName \n"
        "        return ($folderName, $fileName)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr013.xq"), Qry1),
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
                {file, filename:join(__BaseDir, "ForClause/ForExpr-013.out")}
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $fileName in //File/FileName for $folderName in //Folder/FolderName return $folderName return $fileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr014.xq"), Qry1),
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

'ForExpr015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $folder in //Folder return for $file in $folder/File return string( $file/FileName[1] )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr015.xq"), Qry1),
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
                "File00000000000 File00000000001 File00000000002 File00000000003 File00000000004 File00000000005 File00000000006 File00000000007 File00000000008 File00000000009 File00000000010 File00000000011 File00000000012 File00000000013 File00000000014 File00000000015 File00000000016 File00000000017 File00000000018 File00000000019 File00000000020 File00000000021 File00000000022 File00000000023 File00000000024 File00000000025 File00000000026 File00000000027 File00000000028 File00000000029 File00000000030 File00000000031 File00000000032 File00000000033 File00000000034 File00000000035 File00000000036 File00000000037 File00000000038 File00000000039 File00000000040 File00000000041 File00000000042 File00000000043 File00000000044 File00000000045 File00000000046 File00000000047 File00000000048 File00000000049 File00000000050 File00000000051 File00000000052 File00000000053 File00000000054 File00000000055 File00000000056 File00000000057 File00000000058 File00000000059 File00000000060 File00000000061 File00000000062 File00000000063 File00000000064 File00000000065 File00000000066 File00000000067 File00000000068 File00000000069 File00000000070 File00000000071 File00000000072 File00000000073 File00000000074 File00000000075 File00000000076 File00000000077 File00000000078 File00000000079 File00000000080 File00000000081 File00000000082 File00000000083 File00000000084 File00000000085 File00000000086 File00000000087 File00000000088 File00000000089 File00000000090 File00000000091 File00000000092 File00000000093 File00000000094 File00000000095 File00000000096 File00000000097 File00000000098 File00000000099 File00000000100"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $folder in //Folder, $index in (1, 2, 3) return $folder/File[$index]/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr016.xq"), Qry1),
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
                "<FileName>File00000000000</FileName><FileName>File00000000001</FileName><FileName>File00000000002</FileName><FileName>File00000000031</FileName><FileName>File00000000032</FileName><FileName>File00000000033</FileName><FileName>File00000000034</FileName><FileName>File00000000035</FileName><FileName>File00000000036</FileName><FileName>File00000000037</FileName><FileName>File00000000038</FileName><FileName>File00000000039</FileName><FileName>File00000000040</FileName><FileName>File00000000041</FileName><FileName>File00000000042</FileName><FileName>File00000000043</FileName><FileName>File00000000044</FileName><FileName>File00000000045</FileName><FileName>File00000000046</FileName><FileName>File00000000047</FileName><FileName>File00000000048</FileName><FileName>File00000000049</FileName><FileName>File00000000050</FileName><FileName>File00000000051</FileName><FileName>File00000000052</FileName><FileName>File00000000053</FileName><FileName>File00000000054</FileName><FileName>File00000000055</FileName><FileName>File00000000056</FileName><FileName>File00000000057</FileName><FileName>File00000000058</FileName><FileName>File00000000059</FileName><FileName>File00000000060</FileName><FileName>File00000000061</FileName><FileName>File00000000062</FileName><FileName>File00000000063</FileName><FileName>File00000000064</FileName><FileName>File00000000065</FileName><FileName>File00000000066</FileName><FileName>File00000000067</FileName><FileName>File00000000068</FileName><FileName>File00000000069</FileName><FileName>File00000000070</FileName><FileName>File00000000071</FileName><FileName>File00000000072</FileName><FileName>File00000000073</FileName><FileName>File00000000074</FileName><FileName>File00000000075</FileName><FileName>File00000000076</FileName><FileName>File00000000077</FileName><FileName>File00000000078</FileName><FileName>File00000000079</FileName><FileName>File00000000082</FileName><FileName>File00000000083</FileName><FileName>File00000000084</FileName><FileName>File00000000087</FileName><FileName>File00000000088</FileName><FileName>File00000000089</FileName><FileName>File00000000090</FileName><FileName>File00000000091</FileName><FileName>File00000000095</FileName><FileName>File00000000096</FileName><FileName>File00000000097</FileName><FileName>File00000000098</FileName><FileName>File00000000099</FileName><FileName>File00000000100</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $folder in //Folder return $folder return $folder",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr017.xq"), Qry1),
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

'ForExpr018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $folder in in .//Folder return $folder",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr018.xq"), Qry1),
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

'ForExpr019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for for $folder in //Folder return $folder",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr019.xq"), Qry1),
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

'ForExpr020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $folder in //Folder, $file in $folder/File, return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr020.xq"), Qry1),
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

'ForExpr021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $i in (1, 2), $j in (3, 4) return ($i, $j)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr021.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 3 1 4 2 3 2 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file at $pos in (//Folder)[1]/File return (string($file/FileName[1]), $pos)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr022.xq"), Qry1),
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
                "File00000000000 1 File00000000001 2 File00000000002 3 File00000000003 4 File00000000004 5 File00000000005 6 File00000000006 7 File00000000007 8 File00000000008 9 File00000000009 10 File00000000010 11 File00000000011 12 File00000000012 13 File00000000013 14 File00000000014 15 File00000000015 16 File00000000016 17 File00000000017 18 File00000000018 19 File00000000019 20 File00000000020 21 File00000000021 22 File00000000022 23 File00000000023 24 File00000000024 25 File00000000025 26 File00000000026 27 File00000000027 28 File00000000028 29 File00000000029 30 File00000000030 31"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $file at $pos in (//Folder)[1]/File, $pos2 in $pos+1 return (string($file/FileName[1]), $pos, $pos2)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr023.xq"), Qry1),
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
                "File00000000000 1 2 File00000000001 2 3 File00000000002 3 4 File00000000003 4 5 File00000000004 5 6 File00000000005 6 7 File00000000006 7 8 File00000000007 8 9 File00000000008 9 10 File00000000009 10 11 File00000000010 11 12 File00000000011 12 13 File00000000012 13 14 File00000000013 14 15 File00000000014 15 16 File00000000015 16 17 File00000000016 17 18 File00000000017 18 19 File00000000018 19 20 File00000000019 20 21 File00000000020 21 22 File00000000021 22 23 File00000000022 23 24 File00000000023 24 25 File00000000024 25 26 File00000000025 26 27 File00000000026 27 28 File00000000027 28 29 File00000000028 29 30 File00000000029 30 31 File00000000030 31 32"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file at $file in (//Folder)[1]/File return (string($file/FileName[1]), $file)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr024.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0089") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0089 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File, $file in (//Folder)[2]/File return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr025.xq"), Qry1),
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
                "<FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName><FileName>File00000000031</FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file (//Folder)[1]/File return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr026.xq"), Qry1),
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

'ForExpr027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File at $pos return (string($file/FileName[1]), $pos)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr027.xq"), Qry1),
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

'ForExpr028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $num in ( <one/>, <two/>, <three/> ) return $num",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr028.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<one/><two/><three/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (1,2) for $var in (2,2) return $var * $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr029.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "4 4 4 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var in (1,2), $var in (2,2) return $var * $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr030.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "4 4 4 4") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $var at $var in (1, 2) return $var * $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr031.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0089") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0089 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExpr032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare variable $j external := 1;\n"
        "         for $x at $i in (2, 3)\n"
        "         where $i = $j\n"
        "         return $x\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExpr032.xq"), Qry1),
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

'K-ForExprWithout-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in 1, $bar in 2, $moo in 3, return 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-1.xq"),
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

'K-ForExprWithout-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for in 1 return 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-2.xq"),
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

'K-ForExprWithout-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for return 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-3.xq"),
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

'K-ForExprWithout-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in 1 satisfies 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-4.xq"),
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

'K-ForExprWithout-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(1 to 5, (for $i in (1,2,3,4,5) return $i))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-5.xq"),
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

'K-ForExprWithout-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 eq (for $foo in 1 return 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-6.xq"),
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

'K-ForExprWithout-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (for $foo in 1 return $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-7.xq"),
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

'K-ForExprWithout-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "2 eq (for $foo in 1 return $foo + 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-8.xq"),
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

'K-ForExprWithout-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 eq (for $foo in 1 return for $foo in 3 return $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-9.xq"),
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

'K-ForExprWithout-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((for $var in (1, 2, 3) return $var), (1, 2, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-10.xq"),
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

'K-ForExprWithout-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((2, 2), (for $foo in (1, 1) return 1 + $foo))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-11.xq"),
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

'K-ForExprWithout-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "4 eq (for $foo in 1, $bar in 2, $moo in 3 return 4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-12.xq"),
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

'K-ForExprWithout-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 eq (for $foo in 1 return for $bar in 2 return $bar + $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-13.xq"),
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

'K-ForExprWithout-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 eq (for $foo in 1 return for $bar in 2 return $bar + $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-14.xq"),
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

'K-ForExprWithout-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "3 eq (for $foo in 1, $foo in 3 return $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-15.xq"),
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

'K-ForExprWithout-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "8 eq (for $foo in 1, $foo in 3, $moo in 5 return $moo + $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-16.xq"),
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

'K-ForExprWithout-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "6 eq (for $foo in 1, $foo in 3 return $foo + $foo)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-17.xq"),
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

'K-ForExprWithout-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(for $var in () return current-time())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-18.xq"),
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

'K-ForExprWithout-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(for $var in () return 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-19.xq"),
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

'K-ForExprWithout-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty((for $var in () return current-time()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-20.xq"),
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

'K-ForExprWithout-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty((for $var in () return 1) eq 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-21.xq"),
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

'K-ForExprWithout-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(for $var in subsequence((current-time(), 1), 4) return 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-22.xq"),
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

'K-ForExprWithout-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal(remove(for $var in (current-time(), 2, 3, 4) return $var, 1), (2, 3, 4))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-23.xq"),
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

'K-ForExprWithout-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(for $fn:name in (1, 1) return $fn:name) instance of xs:integer+",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-24.xq"),
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

'K-ForExprWithout-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(for $xs:name in (1, 1) return $xs:name) instance of xs:integer+",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-25.xq"),
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

'K-ForExprWithout-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-26.xq"),
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

'K-ForExprWithout-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$PREFIXNOTEXIST:NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-27.xq"),
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

'K-ForExprWithout-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$xs:NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-28.xq"),
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

'K-ForExprWithout-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + $NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-29.xq"),
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

'K-ForExprWithout-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + $prefix:NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-30.xq"),
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

'K-ForExprWithout-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 + $xs:NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-31.xq"),
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

'K-ForExprWithout-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$NOTEXIST + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-32.xq"),
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

'K-ForExprWithout-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$PREFIXNOTEXIST:NOTEXIST + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-33.xq"),
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

'K-ForExprWithout-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "$xs:NOTEXIST + 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-34.xq"),
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

'K-ForExprWithout-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in 1 return $NOTEXIST",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-35.xq"),
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

'K-ForExprWithout-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in (1, 2, $foo) return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-36.xq"),
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

'K-ForExprWithout-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in (1, $foo, 3) return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-37.xq"),
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

'K-ForExprWithout-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in ($foo, 2, 3) return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-38.xq"),
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

'K-ForExprWithout-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in $foo return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-39.xq"),
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

'K-ForExprWithout-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in 1 return $bar + (for $bar in 2 return $bar)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-40.xq"),
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

'K-ForExprWithout-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (1, 2, 3), $b in (1, 2, 3, $b) return $a, $b",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-41.xq"),
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

'K-ForExprWithout-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (1, 2), $b in (1, 2), $c in (1, 2) return 1, $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-42.xq"),
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

'K-ForExprWithout-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (1, 2) return 1, $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-43.xq"),
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

'K-ForExprWithout-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (1, 2), $b in (1, 2), $c in (1, 2) return 1, $b",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-44.xq"),
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

'K-ForExprWithout-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (1, 2), $b in (1, 2), $c in (1, 2) return 1, $c",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-45.xq"),
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

'K-ForExprWithout-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in \"foo\" return 1 + $foo",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-46.xq"),
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

'K-ForExprWithout-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $foo in (\"a string\", \"another one\") return 1 + subsequence($foo, 1, 1)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-47.xq"),
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

'K-ForExprWithout-48'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (for $a in 1 return $a)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-48.xq"),
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

'K-ForExprWithout-49'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "deep-equal((for $fo in trace((1, 2, 3), \"msg\") return $fo), (1, 2, 3))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-49.xq"),
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

'K-ForExprWithout-50'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (for $a in 1 return $a)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-50.xq"),
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

'K-ForExprWithout-51'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 eq (for $xs:a in 1 return $xs:a)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-51.xq"),
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

'K-ForExprWithout-52'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare variable $i := false(); \n"
        "        declare variable $t := false(); \n"
        "        deep-equal( for $i in (true(), true()), $t in (true(), true()) \n"
        "                    return ($i, $t), (true(), true(), true(), true(), true(), true(), true(), true()))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-52.xq"),
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

'K-ForExprWithout-53'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $my := 3; (for $i in 1 return $my) eq 3",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-53.xq"),
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

'K-ForExprWithout-54'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare variable $i := 3; (for $i in 1 return $i) eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-54.xq"),
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

'K-ForExprWithout-55'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(for $i in (1, 2, current-time()) return ($i, $i)) eq 6",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-55.xq"),
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

'K-ForExprWithout-56'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "count(for $i in (1, 2, timezone-from-time(current-time())) return ($i, $i)) eq 6 or count(for $i in (1, 2, timezone-from-time(current-time())) return ($i, $i)) eq 4",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ForExprWithout-56.xq"),
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

'K2-ForExprWithout-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "FOR $i IN (1, 2, 3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-1.xq"),
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

'K2-ForExprWithout-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare function local:myFunc() { for $i in (1, 2, 3) return position() }; \n"
        "        local:myFunc()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-2.xq"),
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

'K2-ForExprWithout-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:myFunc() { for $i in (1, 2, 3) return position() }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-3.xq"),
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

'K2-ForExprWithout-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:myFunc() { for $i at $p in (1, 2, 3) return position() }; local:myFunc()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-4.xq"),
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

'K2-ForExprWithout-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function local:myFunc() { for $i at $p in (1, 2, 3) return position() }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-5.xq"),
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

'K2-ForExprWithout-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $ti in <ti><rangeDate><initDate>17880505</initDate><terminatingDate>19550505</terminatingDate></rangeDate></ti> return <result> { fn:min(if ($ti/singleDate) then let $tmp:=$ti/singleDate/compute return xs:date(fn:concat(fn:substring($tmp, 1, 4), \"-\", fn:substring($tmp, 5, 2), \"-\", fn:substring($tmp, 7, 2))) else let $tmp:=$ti/rangeDate/initDate return xs:date(fn:concat(fn:substring($tmp, 1, 4), \"-\", fn:substring($tmp, 5, 2), \"-\", fn:substring($tmp, 7, 2)))) } </result>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<result>1788-05-05</result>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $d in person return $d",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-7.xq"),
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

'K2-ForExprWithout-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(for $d in <people> <person id=\"person0\"> <name>First</name> </person> <person> <name>Second</name> </person> </people>/person return if (some $id in 1 satisfies typeswitch ($d/@id) case $n as node() return $d/@id = \"person0\" default $d return ()) then $d/name else ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<name>First</name>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $a at $pos1 in (1, 2, 3) return for $b at $pos2 in (4, 5, 6) return for $c at $pos3 in (7, 8, 9) return ($a, $pos1, $b, $pos2, $c, $pos2)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-9.xq"),
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
            xqerl_test:assert_string_value(
                Res,
                "1 1 4 1 7 1 1 1 4 1 8 1 1 1 4 1 9 1 1 1 5 2 7 2 1 1 5 2 8 2 1 1 5 2 9 2 1 1 6 3 7 3 1 1 6 3 8 3 1 1 6 3 9 3 2 2 4 1 7 1 2 2 4 1 8 1 2 2 4 1 9 1 2 2 5 2 7 2 2 2 5 2 8 2 2 2 5 2 9 2 2 2 6 3 7 3 2 2 6 3 8 3 2 2 6 3 9 3 3 3 4 1 7 1 3 3 4 1 8 1 3 3 4 1 9 1 3 3 5 2 7 2 3 3 5 2 8 2 3 3 5 2 9 2 3 3 6 3 7 3 3 3 6 3 8 3 3 3 6 3 9 3"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $a in (3, 2, 1) \n"
        "        for $b in (6, 5, 4) \n"
        "        let $c := $a + $b \n"
        "        let $d := $a - $b \n"
        "        let $e := () stable order by $a ascending, $b descending, $d empty greatest, $e empty least, $c descending empty greatest, $d ascending empty greatest, $e descending empty least, $b ascending empty least \n"
        "        return $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-10.xq"),
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
                    case xqerl_test:assert_string_value(Res, "1 1 1 2 2 2 3 3 3") of
                        true -> {comment, "String correct"};
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

'K2-ForExprWithout-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (3, 2, 1, 1) stable order by $a return 5",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "5 5 5 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $a in (3, 2, 1, 1) stable order by 1 return $a",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "3 2 1 1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/(for $i in self::node() return $i)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>/(for $i in 1, $b in self::node() return $b)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ForExprWithout-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/element return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-15.xq"),
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

'K2-ForExprWithout-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/document return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-16.xq"),
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

'K2-ForExprWithout-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/document-node return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-17.xq"),
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

'K2-ForExprWithout-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/attribute return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-18.xq"),
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

'K2-ForExprWithout-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/comment return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-19.xq"),
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

'K2-ForExprWithout-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/processing-instruction return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-20.xq"),
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

'K2-ForExprWithout-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/processing-instruction return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-21.xq"),
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

'K2-ForExprWithout-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/text return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-22.xq"),
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

'K2-ForExprWithout-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/typeswitch return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-23.xq"),
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

'K2-ForExprWithout-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/if return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-24.xq"),
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

'K2-ForExprWithout-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/for return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-25.xq"),
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

'K2-ForExprWithout-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/let return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-26.xq"),
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

'K2-ForExprWithout-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/declare return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-27.xq"),
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

'K2-ForExprWithout-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/some return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-28.xq"),
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

'K2-ForExprWithout-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/child return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-29.xq"),
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

'K2-ForExprWithout-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/ordered return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-30.xq"),
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

'K2-ForExprWithout-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/unordered return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-31.xq"),
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

'K2-ForExprWithout-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/schema-attribute return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-32.xq"),
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

'K2-ForExprWithout-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/schema-element return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-33.xq"),
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

'K2-ForExprWithout-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/item return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-34.xq"),
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

'K2-ForExprWithout-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/following-sibling return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-35.xq"),
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

'K2-ForExprWithout-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/validate return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-36.xq"),
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

'K2-ForExprWithout-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/instance return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-37.xq"),
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

'K2-ForExprWithout-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/castable return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-38.xq"),
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

'K2-ForExprWithout-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:func($arg as element()* ) as element()* { for $n in $arg/import return $n }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-39.xq"),
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

'K2-ForExprWithout-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $n in node return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-40.xq"),
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

'K2-ForExprWithout-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $n in document return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-41.xq"),
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

'K2-ForExprWithout-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $n in attribute return {()} return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-42.xq"),
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

'K2-ForExprWithout-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $n in element return {()} return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-43.xq"),
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

'K2-ForExprWithout-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $n in processing-instruction return {()} return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-44.xq"),
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

'K2-ForExprWithout-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $n in attribute return 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-ForExprWithout-45.xq"),
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

'ForExprType001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file as element(File,xs:untyped) in (//Folder)[1]/File return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType001.xq"), Qry1),
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

'ForExprType002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $fileName as attribute(name,xs:untypedAtomic) in (//Folder)[1]/File/@name return data($fileName)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType002.xq"), Qry1),
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

'ForExprType003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $PI as processing-instruction() in //processing-instruction() return $PI",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<?FileSystem scale='0'?><?FileSystem maxDepth='64'?>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $comment as comment() in //comment() return $comment",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<!-- This is an official fsx file -->") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $int as xs:int in (xs:int(1), xs:int(2)) return $int",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType005.xq"), Qry1),
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

'ForExprType006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $int as xs:string in (xs:int(1), xs:int(2)) return $int",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType006.xq"), Qry1),
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

'ForExprType007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file in (//Folder)[1]/File as element(Folder,xs:untypedAny) return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType007.xq"), Qry1),
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

'ForExprType008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $file at $pos as element(Folder,xs:untyped) in (//Folder)[1]/File return (string($file/FileName[1]), $pos)",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType008.xq"), Qry1),
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

'ForExprType009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file as in (//Folder)[1]/File return $file",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType012.xq"), Qry1),
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

'ForExprType013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $num as xs:decimal in (xs:integer(1), xs:integer(2), xs:integer(3)) return $num",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType015.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'ForExprType016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $num as xs:decimal in (xs:integer(1), xs:decimal(2), xs:integer(3)) return $num",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType016.xq"), Qry1),
            xqerl:run(Mod, Opts)
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

'ForExprType017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $num as xs:double in (xs:int(\"1\"), xs:integer(\"2\"), xs:string(\"3\")) return $num",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType017.xq"), Qry1),
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

'ForExprType018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $file as node() in (//Folder)[1]/File return $file/FileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType018.xq"), Qry1),
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

'ForExprType019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "for $fileName as text() in (//Folder)[1]/File/FileName/text() return string( $fileName )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType019.xq"), Qry1),
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

'ForExprType020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $fileName as item() in data( (//Folder)[1]/File/FileName ) return $fileName",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType020.xq"), Qry1),
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

'ForExprType021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $doc as document-node() in (/) return count( $doc )",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType021.xq"), Qry1),
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

'ForExprType022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $test as xs:integer in ( xs:byte(\"1\"), xs:long(\"10000\"), xs:negativeInteger(\"-10\"), \n"
        "                        xs:short(\"100\"), xs:positiveInteger(\"100\"), xs:nonNegativeInteger(\"100\") ) \n"
        "        return $test\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType028.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 10000 -10 100 100 100") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $test as xs:decimal in ( xs:integer(\"100\"), xs:short(\"1\"), xs:int(\"10000\"), \n"
        "                xs:nonPositiveInteger(\"-10\"), xs:unsignedShort(\"100\"), xs:positiveInteger(\"100\"), xs:nonNegativeInteger(\"100\") ) \n"
        "        return $test\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType029.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "100 1 10000 -10 100 100 100") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $test as xs:normalizedString in ( xs:language(\"en-US\"), xs:NCName(\"foobar\"), \n"
        "            xs:NMTOKEN(\"token1\"), xs:ENTITY(\"entity1\") ) \n"
        "        return $test\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType030.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "en-US foobar token1 entity1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $test as xs:anyAtomicType in ( xs:duration(\"P0Y1347M0D\"), xs:dateTime(\"1999-05-31T13:20:00-05:00\"), \n"
        "                    xs:time(\"13:00:00-05:00\"), xs:date(\"1999-05-10Z\"), xs:gYearMonth(\"2002-03\"), xs:gYear(\"1999\"), \n"
        "                    xs:gMonthDay(\"--05-10\"), xs:gDay(\"---10\"), xs:gMonth(\"--05\") ) \n"
        "        return $test\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType031.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "P112Y3M 1999-05-31T13:20:00-05:00 13:00:00-05:00 1999-05-10Z 2002-03 1999 --05-10 ---10 --05"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $test as xs:anyAtomicType in ( xs:boolean(\"true\"), xs:base64Binary(\"abcd\"), xs:hexBinary(\"1234\"),\n"
        "                     xs:float(\"5.7\"), xs:double(\"7.5\"), xs:anyURI(\"http://foo\") ) \n"
        "        return $test\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType032.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "true abcd 1234 5.7 7.5 http://foo") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        for $test as xs:anyAtomicType in ( xs:unsignedByte(\"10\"), xs:short(\"20\"), xs:positiveInteger(\"30\"), \n"
        "                xs:nonPositiveInteger(\"-40\"), xs:decimal(\"5.5\"), xs:ENTITY(\"entity1\"), xs:NCName(\"foobar\"), \n"
        "                xs:language(\"en-US\"), xs:string(\"foobar\"), xs:hexBinary(\"ffff\"), xs:gYear(\"1999\") ) \n"
        "        return $test\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType033.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(
                Res,
                "10 20 30 -40 5.5 entity1 foobar en-US foobar FFFF 1999"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $test as xs:decimal in ( 1, 0.3 ) return $test",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType034.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 0.3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $test as xs:anyAtomicType in ( 1, \"string\", 1e2, 0.3 ) return $test",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType035.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 string 100 0.3") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'ForExprType054'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as item() in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType054.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_string_value(Res, "File00000000000 File00000000001 File00000000002")
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType055'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as node() in (//fs:Folder)[1]/fs:File return $test/fs:FileName\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType055.xq"), Qry1),
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
                "<fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName><fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000001</fs:FileName><fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000002</fs:FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType056'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as document-node() in (/) return ($test//fs:Folder)[1]/fs:FolderName\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType056.xq"), Qry1),
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
                "<fs:FolderName xmlns:fs=\"http://www.example.com/filesystem\">Folder00000000000</fs:FolderName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType057'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        document{for $test as text() in (//fs:Folder)[1]/fs:File/fs:FileName/text() return $test}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType057.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "File00000000000File00000000001File00000000002") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType058'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        document{for $test as comment() in (//fs:Folder)[1]/comment() return $test}\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType058.xq"), Qry1),
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
                "<!-- This is a comment for File00000000000 --><!-- This is a comment for File00000000001 --><!-- This is a comment for File00000000002 -->"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType059'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as processing-instruction() in (//fs:Folder)[1]//processing-instruction() return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType059.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<?filesystem compressionUtil='foozip.exe'?>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType060'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace fs=\"http://www.example.com/filesystem\"; for $test as processing-instruction() in (//fs:Folder)[1]//processing-instruction() return $test",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType060.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<?filesystem compressionUtil='foozip.exe'?>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType061'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as processing-instruction(\"unknown\") in (//fs:Folder)[1]//processing-instruction() return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType061.xq"), Qry1),
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

'ForExprType062'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as item() in (//fs:Folder)[1]/fs:File/fs:FileName return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType062.xq"), Qry1),
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
                "<fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000000</fs:FileName><fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000001</fs:FileName><fs:FileName xmlns:fs=\"http://www.example.com/filesystem\">File00000000002</fs:FileName>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'ForExprType063'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as node() in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType063.xq"), Qry1),
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

'ForExprType064'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as text() in (//fs:Folder)[1]/fs:File/fs:FileName return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType064.xq"), Qry1),
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

'ForExprType065'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as text() in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType065.xq"), Qry1),
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

'ForExprType066'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as comment() in (//fs:Folder)[1]/fs:File/fs:FileName return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType066.xq"), Qry1),
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

'ForExprType067'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as comment() in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType067.xq"), Qry1),
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

'ForExprType068'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as processing-instruction() in (//fs:Folder)[1]/fs:File/fs:FileName return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType068.xq"), Qry1),
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

'ForExprType069'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as processing-instruction() in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType069.xq"), Qry1),
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

'ForExprType070'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as processing-instruction(\"foo\") in (//fs:Folder)[1]/fs:File/fs:FileName return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType070.xq"), Qry1),
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

'ForExprType071'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as processing-instruction(\"foo\") in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType071.xq"), Qry1),
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

'ForExprType072'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as document-node() in (//fs:Folder)[1]/fs:File/fs:FileName return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType072.xq"), Qry1),
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

'ForExprType073'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace fs=\"http://www.example.com/filesystem\"; \n"
        "        for $test as document-node() in data( (//fs:Folder)[1]/fs:File/fs:FileName ) return $test\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('fsx_NS2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "ForExprType073.xq"), Qry1),
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

'K2-ForExprWith-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "for $i as xs:string in xs:untypedAtomic(\"input\") return $i",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ForExprWith-1.xq"), Qry1),
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
