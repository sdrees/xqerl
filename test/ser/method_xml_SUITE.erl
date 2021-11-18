-module('method_xml_SUITE').

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

-export(['K2-Serialization-1'/1]).
-export(['K2-Serialization-2'/1]).
-export(['K2-Serialization-3'/1]).
-export(['K2-Serialization-4'/1]).
-export(['K2-Serialization-5'/1]).
-export(['K2-Serialization-6'/1]).
-export(['K2-Serialization-7'/1]).
-export(['K2-Serialization-7a'/1]).
-export(['K2-Serialization-8'/1]).
-export(['K2-Serialization-8a'/1]).
-export(['K2-Serialization-9'/1]).
-export(['K2-Serialization-10'/1]).
-export(['K2-Serialization-11'/1]).
-export(['K2-Serialization-12'/1]).
-export(['K2-Serialization-13'/1]).
-export(['K2-Serialization-14'/1]).
-export(['K2-Serialization-15'/1]).
-export(['K2-Serialization-16'/1]).
-export(['K2-Serialization-17'/1]).
-export(['K2-Serialization-18'/1]).
-export(['K2-Serialization-20'/1]).
-export(['K2-Serialization-21'/1]).
-export(['K2-Serialization-22'/1]).
-export(['K2-Serialization-23'/1]).
-export(['K2-Serialization-24'/1]).
-export(['K2-Serialization-25'/1]).
-export(['K2-Serialization-26'/1]).
-export(['K2-Serialization-27'/1]).
-export(['K2-Serialization-28'/1]).
-export(['K2-Serialization-29'/1]).
-export(['K2-Serialization-30'/1]).
-export(['K2-Serialization-31'/1]).
-export(['K2-Serialization-32'/1]).
-export(['K2-Serialization-33'/1]).
-export(['K2-Serialization-34'/1]).
-export(['K2-Serialization-35'/1]).
-export(['K2-Serialization-36'/1]).
-export(['K2-Serialization-37'/1]).
-export(['K2-Serialization-38'/1]).
-export(['K2-Serialization-39'/1]).
-export(['Serialization-xml-01'/1]).
-export(['Serialization-xml-02'/1]).
-export(['Serialization-xml-03'/1]).
-export(['Serialization-xml-04'/1]).

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
    __BaseDir = filename:join(TD, "ser"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'K2-Serialization-1',
            'K2-Serialization-2',
            'K2-Serialization-3',
            'K2-Serialization-4',
            'K2-Serialization-5',
            'K2-Serialization-6',
            'K2-Serialization-7',
            'K2-Serialization-7a',
            'K2-Serialization-8',
            'K2-Serialization-8a',
            'K2-Serialization-9',
            'K2-Serialization-10',
            'K2-Serialization-11',
            'K2-Serialization-12',
            'K2-Serialization-13',
            'K2-Serialization-14',
            'K2-Serialization-15',
            'K2-Serialization-16',
            'K2-Serialization-17',
            'K2-Serialization-18',
            'K2-Serialization-20',
            'K2-Serialization-21',
            'K2-Serialization-22'
        ]},
        {group_1, [parallel], [
            'K2-Serialization-23',
            'K2-Serialization-24',
            'K2-Serialization-25',
            'K2-Serialization-26',
            'K2-Serialization-27',
            'K2-Serialization-28',
            'K2-Serialization-29',
            'K2-Serialization-30',
            'K2-Serialization-31',
            'K2-Serialization-32',
            'K2-Serialization-33',
            'K2-Serialization-34',
            'K2-Serialization-35',
            'K2-Serialization-36',
            'K2-Serialization-37',
            'K2-Serialization-38',
            'K2-Serialization-39',
            'Serialization-xml-01',
            'Serialization-xml-02',
            'Serialization-xml-03',
            'Serialization-xml-04'
        ]}
    ].

'K2-Serialization-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "attribute name {<anElement/>}",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_error(Res, "SENR0001") of
            true -> {comment, "Correct error"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>, attribute name {<anElement/>}",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_error(Res, "SENR0001") of
            true -> {comment, "Correct error"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "attribute name {<anElement/>}, <e/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_error(Res, "SENR0001") of
            true -> {comment, "Correct error"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e/>, attribute name {<anElement/>}, <e/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_error(Res, "SENR0001") of
            true -> {comment, "Correct error"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>&#xD;&#x85;&#x2028;</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-5.xq"),
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
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#xD;&#x85;&#x2028;"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#13;&#133;&#8232;"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a attr=\"&#xD;&#xA;&#x9;&#x85;&#x2028;\"/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-6.xq"),
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
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#xD;&#xA;&#x9;&#x85;&#x2028;"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#13;&#10;&#9;&#133;&#8232;"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xml-version:1.1"}.

'K2-Serialization-7a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>{codepoints-to-string(1 to 31)}</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-7a.xq"),
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
                    case xqerl_test:assert_error(Res, "FOCH0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOCH0001 " ++ binary_to_list(F)};
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

'K2-Serialization-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xml-version:1.1"}.

'K2-Serialization-8a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a attr=\"{codepoints-to-string(1 to 31)}\"></a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-8a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCH0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCH0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a attr=\"{codepoints-to-string(127 to 159)}\"/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-9.xq"),
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
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#x7f;&#x80;&#x81;&#x82;&#x83;&#x84;&#x85;&#x86;&#x87;&#x88;&#x89;&#x8a;&#x8b;&#x8c;&#x8d;&#x8e;&#x8f;&#x90;&#x91;&#x92;&#x93;&#x94;&#x95;&#x96;&#x97;&#x98;&#x99;&#x9a;&#x9b;&#x9c;&#x9d;&#x9e;&#x9f;"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#127;&#128;&#129;&#130;&#131;&#132;&#133;&#134;&#135;&#136;&#137;&#138;&#139;&#140;&#141;&#142;&#143;&#144;&#145;&#146;&#147;&#148;&#149;&#150;&#151;&#152;&#153;&#154;&#155;&#156;&#157;&#158;&#159;"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<a>{codepoints-to-string(127 to 159)}</a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-10.xq"),
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
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#x7f;&#x80;&#x81;&#x82;&#x83;&#x84;&#x85;&#x86;&#x87;&#x88;&#x89;&#x8a;&#x8b;&#x8c;&#x8d;&#x8e;&#x8f;&#x90;&#x91;&#x92;&#x93;&#x94;&#x95;&#x96;&#x97;&#x98;&#x99;&#x9a;&#x9b;&#x9c;&#x9d;&#x9e;&#x9f;"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"&#127;&#128;&#129;&#130;&#131;&#132;&#133;&#134;&#135;&#136;&#137;&#138;&#139;&#140;&#141;&#142;&#143;&#144;&#145;&#146;&#147;&#148;&#149;&#150;&#151;&#152;&#153;&#154;&#155;&#156;&#157;&#158;&#159;"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"a&#xD;aa&#xD;&#xA;a&#xD;&#xA;\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-11.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        lists:any(
                            fun
                                ({comment, _}) -> true;
                                (_) -> false
                            end,
                            [
                                case
                                    xqerl_test:assert_serialization_match(
                                        Res,
                                        <<"a&#xD;aa&#xD;"/utf8>>,
                                        <<"i">>
                                    )
                                of
                                    true -> {comment, "Correct serialization"};
                                    {false, F} -> F
                                end,
                                case
                                    xqerl_test:assert_serialization_match(
                                        Res,
                                        <<"a&#13;aa&#13;"/utf8>>,
                                        <<"">>
                                    )
                                of
                                    true -> {comment, "Correct serialization"};
                                    {false, F} -> F
                                end
                            ]
                        )
                    of
                        true -> {comment, "any-of"};
                        _ -> false
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"\\r?\\n.*\\r?\\n"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<e> <a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/> <b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/> </e>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-12.xq"),
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
                "<e><a:a xmlns:a=\"http://www.example.com/A\" a:a=\"value\"/><b:a xmlns:b=\"http://www.example.com/A\" b:a=\"value\"/></e>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:item-separator \"|\";\n"
        "        1 to 10\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-13.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"1\\|2\\|3\\|4\\|5\\|6\\|7\\|8\\|9\\|10"/utf8>>,
                <<"">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:item-separator \"|\";\n"
        "        <a>{1,2,3}</a>,<b>{4,5,6}</b>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-14.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"<a>1 2 3</a>\\|<b>4 5 6</b>"/utf8>>,
                <<"">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:item-separator \"|\";\n"
        "        document { 1 to 5 }\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"1 2 3 4 5"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:item-separator \"==\";\n"
        "        (1 to 4)!text{.}\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"1==2==3==4"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:omit-xml-declaration \"yes\";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-17.xq"),
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
            (case xqerl_test:assert_serialization_match(Res, <<"<?xml"/utf8>>, <<"">>) of
                true -> {comment, "Correct serialization"};
                {false, F} -> F
            end)
        of
            {comment, C6} -> C6;
            _ -> {comment, ok}
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:omit-xml-declaration \"no\";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"<?xml"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xml-version:1.1"}.

'K2-Serialization-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xml-version:1.1"}.

'K2-Serialization-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:standalone \"yes\";\n"
        "        <chapter><section><para><b>bold</b>{\" \"}<i>italic</i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-22.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"version\\s*=\\s*['\"]1.0['\"]"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"standalone\\s*=\\s*['\"]yes['\"]"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:standalone \"no\";\n"
        "        <chapter><section><para><b>bold</b>{\" \"}<i>italic</i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-23.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"standalone\\s*=\\s*['\"]no['\"]"/utf8>>,
                <<"">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:standalone \"omit\";\n"
        "        <chapter><section><para><b>bold</b>{\" \"}<i>italic</i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-24.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_serialization_match(Res, <<"<?xml"/utf8>>, <<"">>) of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"standalone"/utf8>>,
                                <<"">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
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

'K2-Serialization-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:indent \"yes\";\n"
        "        declare option output:suppress-indentation \"para\";\n"
        "        <chapter><section><para><b>bold</b>{\" \"}<i>italic</i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-25.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<chapter>\\s+<section>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<para><b>bold</b> <i>italic</i></para>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      	declare namespace p = \"http://www.example.org/ns/p\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:indent \"yes\";\n"
        "        declare option output:suppress-indentation \"p p:para\";\n"
        "        <chapter><section><p:para><b>bold</b><i>italic</i></p:para><p><b><BOLD/></b><i>ITALIC</i></p></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-26.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b><BOLD/></b><i>ITALIC</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b>bold</b><i>italic</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      	declare namespace p = \"http://www.example.org/ns/p\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:indent \"yes\";\n"
        "        declare option output:suppress-indentation \"p Q{http://www.example.org/ns/p}para\";\n"
        "        <chapter><section><para xmlns=\"http://www.example.org/ns/p\"><b>bold</b><i>italic</i></para><p><b>BOLD</b><i>ITALIC</i></p></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-27.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b>BOLD</b><i>ITALIC</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b>bold</b><i>italic</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      	declare default element namespace \"http://www.example.org/ns/p\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:indent \"yes\";\n"
        "        declare option output:suppress-indentation \"p para\";\n"
        "        <chapter xmlns=\"\"><section><para xmlns=\"http://www.example.org/ns/p\"><b>bold</b><i>italic</i></para><p><b>BOLD</b><i>ITALIC</i></p></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-28.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"><b>BOLD</b><i>ITALIC</i></"/utf8>>,
                                <<"">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b>bold</b><i>italic</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      	declare namespace p = \"http://www.example.org/ns/p\";\n"
        "        declare option output:method \" Q{}xml&#x9;\";\n"
        "        declare option Q{http://www.w3.org/2010/xslt-xquery-serialization}indent \"yes\n"
        "        \";\n"
        "        declare option output:suppress-indentation \" p   p:para \";\n"
        "        <chapter><section><p:para><b>bold</b><i>italic</i></p:para><p><b><BOLD/></b><i>ITALIC</i></p></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-29.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b><BOLD/></b><i>ITALIC</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"><b>bold</b><i>italic</i></"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      	declare namespace p = \"http://www.example.org/ns/p\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:cdata-section-elements \"b p:b\";\n"
        "        declare option output:suppress-indentation \"para\";\n"
        "        <chapter><section><para><b>bold</b><i>italic</i><p:b>BOLD</p:b><p:i>ITALIC</p:i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-30.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(Res, <<"CDATA[bold]"/utf8>>, <<"q">>)
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"CDATA[BOLD]"/utf8>>, <<"q">>)
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[italic]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[ITALIC]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
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

'K2-Serialization-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      	declare default element namespace \"http://www.example.org/ns/p\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:cdata-section-elements \"b\";\n"
        "        declare option output:suppress-indentation \"para\";\n"
        "        <chapter xmlns=\"http://www.example.com/ns/c\"><section><para><b>bold</b><i>italic</i></para><para xmlns:p=\"http://www.example.org/ns/p\"><p:b>BOLD</p:b><p:i>ITALIC</p:i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-31.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[bold]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"CDATA[BOLD]"/utf8>>, <<"q">>)
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[italic]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[ITALIC]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
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

'K2-Serialization-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:cdata-section-elements \"b Q{http://www.example.org/ns/p}b\";\n"
        "        declare option output:suppress-indentation \"para\";\n"
        "        <chapter><section xmlns:p=\"http://www.example.org/ns/p\"><para><b>bold</b><i>italic</i><p:b>BOLD</p:b><p:i>ITALIC</p:i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-32.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(Res, <<"CDATA[bold]"/utf8>>, <<"q">>)
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"CDATA[BOLD]"/utf8>>, <<"q">>)
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[italic]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
                    end,
                    case
                        (case
                            xqerl_test:assert_serialization_match(
                                Res,
                                <<"CDATA[ITALIC]"/utf8>>,
                                <<"q">>
                            )
                        of
                            true -> {comment, "Correct serialization"};
                            {false, F} -> F
                        end)
                    of
                        {comment, C6} -> C6;
                        _ -> {comment, ok}
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

'K2-Serialization-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:cdata-section-elements \"b\";\n"
        "        <chapter><para><b>bold <!--comment--> as brass</b><i>italic</i></para></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-33.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"<![CDATA[bold ]]><!--comment--><![CDATA[ as brass]]>"/utf8>>,
                <<"q">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:cdata-section-elements \"b\";\n"
        "        <chapter><para><b>bold {\"<\"}{\"[[\"}{\"]]\"}{\">\"} as brass</b><i>italic</i></para></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-34.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"<![CDATA[bold <[[]]]]><![CDATA[> as brass]]>"/utf8>>,
                <<"q">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "DIS * us-ascii encoding"}.

'K2-Serialization-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:indent \"true\";\n"
        "        declare option output:suppress-indentation \"para\";\n"
        "        <chapter><section><para><b>bold</b>{\" \"}<i>italic</i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-36.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<chapter>\\s+<section>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<para><b>bold</b> <i>italic</i></para>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:indent \" 1 \";\n"
        "        declare option output:suppress-indentation \"para\";\n"
        "        <chapter><section><para><b>bold</b>{\" \"}<i>italic</i></para></section></chapter>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-37.xq"),
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
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<chapter>\\s+<section>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<para><b>bold</b> <i>italic</i></para>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
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

'K2-Serialization-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:omit-xml-declaration \" false \";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-38.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"<?xml"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-Serialization-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:omit-xml-declaration \"0\";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-Serialization-39.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"<?xml"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Serialization-xml-01'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        declare option output:item-separator \"|\";\n"
        "        [1, 2, 3, 4, 5]\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-xml-01.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"<\\?xml[^>]+>1\\|2\\|3\\|4\\|5$"/utf8>>,
                <<"">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Serialization-xml-02'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        " \n"
        "     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"xml\";\n"
        "        map { } \n"
        "\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-xml-02.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_error(Res, "SENR0001") of
            true -> {comment, "Correct error"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Serialization-xml-03'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        " \n"
        "        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:parameter-document \"xml/xml-character-map.xml\";\n"
        "        \n"
        "        <out att=\"abc\">XabcX</out>\n"
        "\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-xml-03.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"<out att=['\"]AAABBBCCC['\"]>XAAABBBCCCX</out>"/utf8>>,
                <<"">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Serialization-xml-04'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        " \n"
        "        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:indent \"no\";\n"
        "        declare option output:parameter-document \"xml/param-doc-04.xml\";\n"
        "        declare option output:omit-xml-declaration \"yes\";\n"
        "        \n"
        "        <out><in>XXX</in></out>\n"
        "\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-xml-04.xq"),
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
            xqerl_test:assert_serialization_match(
                Res,
                <<"^<out><in><!\\[CDATA\\[XXX\\]\\]></in></out>$"/utf8>>,
                <<"">>
            )
        of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
