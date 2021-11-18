-module('method_html_SUITE').

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

-export(['Serialization-html-1'/1]).
-export(['Serialization-html-2'/1]).
-export(['Serialization-html-3'/1]).
-export(['Serialization-html-4'/1]).
-export(['Serialization-html-5'/1]).
-export(['Serialization-html-6'/1]).
-export(['Serialization-html-7'/1]).
-export(['Serialization-html-8'/1]).
-export(['Serialization-html-9'/1]).
-export(['Serialization-html-10'/1]).
-export(['Serialization-html-11'/1]).
-export(['Serialization-html-12'/1]).
-export(['Serialization-html-13'/1]).
-export(['Serialization-html-14'/1]).
-export(['Serialization-html-15'/1]).
-export(['Serialization-html-16'/1]).
-export(['Serialization-html-17'/1]).
-export(['Serialization-html-18'/1]).
-export(['Serialization-html-19a'/1]).
-export(['Serialization-html-19b'/1]).
-export(['Serialization-html-19c'/1]).
-export(['Serialization-html-20'/1]).
-export(['Serialization-html-21'/1]).
-export(['Serialization-html-22'/1]).
-export(['Serialization-html-23'/1]).
-export(['Serialization-html-24'/1]).
-export(['Serialization-html-25'/1]).
-export(['Serialization-html-26'/1]).
-export(['Serialization-html-27'/1]).
-export(['Serialization-html-28'/1]).
-export(['Serialization-html-29'/1]).
-export(['Serialization-html-30'/1]).
-export(['Serialization-html-31'/1]).
-export(['Serialization-html-32'/1]).
-export(['Serialization-html-33'/1]).
-export(['Serialization-html-34'/1]).
-export(['Serialization-html-35'/1]).
-export(['Serialization-html-36'/1]).
-export(['Serialization-html-37'/1]).
-export(['Serialization-html-38'/1]).
-export(['Serialization-html-39'/1]).
-export(['Serialization-html-40'/1]).
-export(['Serialization-html-41'/1]).
-export(['Serialization-html-42'/1]).
-export(['Serialization-html-43'/1]).
-export(['Serialization-html-43a'/1]).
-export(['Serialization-html-44'/1]).
-export(['Serialization-html-44a'/1]).
-export(['Serialization-html-45'/1]).
-export(['Serialization-html-46'/1]).
-export(['Serialization-html-47'/1]).
-export(['Serialization-html-48'/1]).
-export(['Serialization-html-49'/1]).
-export(['Serialization-html-50'/1]).
-export(['Serialization-html-51'/1]).
-export(['Serialization-html-52'/1]).
-export(['Serialization-html-53'/1]).
-export(['Serialization-html-54'/1]).
-export(['Serialization-html-55'/1]).
-export(['Serialization-html-56'/1]).
-export(['Serialization-html-57'/1]).

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
        {group, group_1},
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'Serialization-html-1',
            'Serialization-html-2',
            'Serialization-html-3',
            'Serialization-html-4',
            'Serialization-html-5',
            'Serialization-html-6',
            'Serialization-html-7',
            'Serialization-html-8',
            'Serialization-html-9',
            'Serialization-html-10',
            'Serialization-html-11',
            'Serialization-html-12',
            'Serialization-html-13',
            'Serialization-html-14',
            'Serialization-html-15',
            'Serialization-html-16',
            'Serialization-html-17',
            'Serialization-html-18',
            'Serialization-html-19a',
            'Serialization-html-19b',
            'Serialization-html-19c',
            'Serialization-html-20',
            'Serialization-html-21'
        ]},
        {group_1, [parallel], [
            'Serialization-html-22',
            'Serialization-html-23',
            'Serialization-html-24',
            'Serialization-html-25',
            'Serialization-html-26',
            'Serialization-html-27',
            'Serialization-html-28',
            'Serialization-html-29',
            'Serialization-html-30',
            'Serialization-html-31',
            'Serialization-html-32',
            'Serialization-html-33',
            'Serialization-html-34',
            'Serialization-html-35',
            'Serialization-html-36',
            'Serialization-html-37',
            'Serialization-html-38',
            'Serialization-html-39',
            'Serialization-html-40',
            'Serialization-html-41',
            'Serialization-html-42',
            'Serialization-html-43',
            'Serialization-html-43a',
            'Serialization-html-44'
        ]},
        {group_2, [parallel], [
            'Serialization-html-44a',
            'Serialization-html-45',
            'Serialization-html-46',
            'Serialization-html-47',
            'Serialization-html-48',
            'Serialization-html-49',
            'Serialization-html-50',
            'Serialization-html-51',
            'Serialization-html-52',
            'Serialization-html-53',
            'Serialization-html-54',
            'Serialization-html-55',
            'Serialization-html-56',
            'Serialization-html-57'
        ]}
    ].

'Serialization-html-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare boundary-space strip;\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-1.xq"),
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
                <<"<html><body><area><base><br><col><embed><frame><hr><img><input><isindex><link><meta><param></body></html>"/utf8>>,
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

'Serialization-html-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare boundary-space strip;        \n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html><body><area/><base/><br/><col/><embed/><hr/><img/><input/><keygen/><link/><meta/><param/><source/><track/><wbr/></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-2.xq"),
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
                            <<"<html><body><area><base><br><col><embed><hr><img><input><keygen><link><meta><param><source><track><wbr></body></html>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"<!DOCTYPE .*"/utf8>>, <<"i">>)
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

'Serialization-html-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare boundary-space strip;        \n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-3.xq"),
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
                            <<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area></area><base></base><br></br><col></col><embed></embed><frame></frame><hr></hr><img></img><input></input><isindex></isindex><link></link><meta></meta><param></param></body></html>"/utf8>>,
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

'Serialization-html-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare boundary-space strip;        \n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area/><base/><br/><col/><embed\n"
        "/><hr/><img/><input/><link/><meta/><param/></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-4.xq"),
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
                            <<"<html xmlns=\"http://www.w3.org/1999/xhtml\"><body><area><base><br><col><embed><hr><img><input><link><meta><param></body></html>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"<!DOCTYPE .*"/utf8>>, <<"i">>)
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

'Serialization-html-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-5.xq"),
                Qry1
            ),
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

'Serialization-html-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-6.xq"),
                Qry1
            ),
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

'Serialization-html-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-7.xq"),
                Qry1
            ),
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

'Serialization-html-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-8.xq"),
                Qry1
            ),
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

'Serialization-html-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-9.xq"),
                Qry1
            ),
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

'Serialization-html-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-10.xq"),
                Qry1
            ),
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

'Serialization-html-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-11.xq"),
                Qry1
            ),
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

'Serialization-html-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-12.xq"),
                Qry1
            ),
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

'Serialization-html-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-13.xq"),
                Qry1
            ),
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

'Serialization-html-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-14.xq"),
                Qry1
            ),
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

'Serialization-html-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-15.xq"),
                Qry1
            ),
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

'Serialization-html-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-16.xq"),
                Qry1
            ),
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

'Serialization-html-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-17.xq"),
                Qry1
            ),
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

'Serialization-html-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare namespace ex = \"http://www.example.org\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "declare option output:cdata-section-elements  \"p em ex:isle1\";\n"
        "\n"
        "<html><body><p>No CDATA<em>No CDATA</em>No CDATA<ex:isle1>Some CDATA<ex:isle2>No CDATA</ex:isle2>More CDATA</ex:isle1></p></body></html>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-18.xq"),
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
                <<"<html><body><p>No CDATA<em>No CDATA</em>No CDATA<ex:isle1 *xmlns:ex=(['\"])http://www.example.org\\1><!\\[CDATA\\[Some CDATA\\]\\]><ex:isle2>No CDATA</ex:isle2><!\\[CDATA\\[More CDATA\\]\\]></ex:isle1></p></body></html>"/utf8>>,
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

'Serialization-html-19a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare namespace ex = \"http://www.example.org\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "declare option output:cdata-section-elements  \"p em ex:isle1\";\n"
        "\n"
        "<html><body><p>No CDATA<em>No CDATA</em>No CDATA<ex:isle1>Some CDATA<ex:isle2>No CDATA</ex:isle2>More CDATA</ex:isle1></p></body></html>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-19a.xq"),
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
                <<"<html><body><p>No CDATA<em>No CDATA</em>No CDATA<ex:isle1 *xmlns:ex=(['\"])http://www.example.org\\1><!\\[CDATA\\[Some CDATA\\]\\]><ex:isle2>No CDATA</ex:isle2><!\\[CDATA\\[More CDATA\\]\\]></ex:isle1></p></body></html>"/utf8>>,
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

'Serialization-html-19b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare namespace html = \"http://www.w3.org/1999/xhtml\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "declare option output:cdata-section-elements  \"b html:em\";\n"
        "\n"
        "<html><body><p><b>No CDATA</b><em>No CDATA</em><html:b>No CDATA</html:b><html:em>Some CDATA</html:em></p></body></html>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-19b.xq"),
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
                <<"<html><body><p><b>No CDATA</b><em>No CDATA</em><html:b *xmlns:html=(['\"])http://www.w3.org/1999/xhtml\\1>No CDATA</html:b><html:em *xmlns:html=(['\"])http://www.w3.org/1999/xhtml\\2><!\\[CDATA\\[Some CDATA\\]\\]></html:em></p></body></html>"/utf8>>,
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

'Serialization-html-19c'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare namespace html = \"http://www.w3.org/1999/xhtml\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "declare option output:cdata-section-elements  \"b html:em\";\n"
        "\n"
        "<html><body><p><b>No CDATA</b><em>No CDATA</em><html:b>No CDATA</html:b><html:em>No CDATA</html:em></p></body></html>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-19c.xq"),
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
                            <<"<html><body><p><b>No CDATA</b>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<em>No CDATA</em>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<b xmlns=(['\"])http://www.w3.org/1999/xhtml\\1>No CDATA</b>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<em xmlns=(['\"])http://www.w3.org/1999/xhtml\\1>No CDATA</em></p></body></html>"/utf8>>,
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

'Serialization-html-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-20.xq"),
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
                    case xqerl_test:assert_serialization_match(Res, <<"<html/>"/utf8>>, <<"">>) of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"<html></html>"/utf8>>, <<"">>)
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

'Serialization-html-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-21.xq"),
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
                    case xqerl_test:assert_serialization_match(Res, <<"<html/>"/utf8>>, <<"">>) of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"<html></html>"/utf8>>, <<"">>)
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

'Serialization-html-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-22.xq"),
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
                                        <<"<html/>"/utf8>>,
                                        <<"">>
                                    )
                                of
                                    true -> {comment, "Correct serialization"};
                                    {false, F} -> F
                                end,
                                case
                                    xqerl_test:assert_serialization_match(
                                        Res,
                                        <<"<html></html>"/utf8>>,
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
                        xqerl_test:assert_serialization_match(Res, <<"<!DOCTYPE .*"/utf8>>, <<"i">>)
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

'Serialization-html-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<foo/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-23.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"<foo></foo>"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Serialization-html-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<foo/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-24.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_serialization_match(Res, <<"<foo></foo>"/utf8>>, <<"">>) of
            true -> {comment, "Correct serialization"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Serialization-html-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-25.xq"),
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
                            <<"<!DOCTYPE\\s+html\\s+PUBLIC\\s+(['\"])-//W3C//DTD HTML 4.0//EN\\1\\s*>\\s*<html"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"html.+<html"/utf8>>, <<"s">>)
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

'Serialization-html-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "declare option output:doctype-system  \"http://www.w3.org/TR/REC-html40/strict.dtd\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-26.xq"),
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
                            <<"<!DOCTYPE\\s+html\\s+SYSTEM\\s+(['\"])http://www.w3.org/TR/REC-html40/strict.dtd\\1\\s*>\\s*<html"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"html.+<html"/utf8>>, <<"s">>)
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

'Serialization-html-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-27.xq"),
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
                            <<"<!DOCTYPE\\s+html\\s+PUBLIC\\s+(['\"])-//W3C//DTD HTML 4.0//EN\\1\\s*>\\s*<html"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"html.+<html"/utf8>>, <<"s">>)
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

'Serialization-html-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "declare option output:doctype-system  \"about:legacy-compat\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-28.xq"),
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
                            <<"<!.......\\s+html\\s+......\\s+(['\"])about:legacy-compat\\1\\s*>\\s*<html"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<!DOCTYPE\\s+....\\s+SYSTEM"/utf8>>,
                            <<"i">>
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

'Serialization-html-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "declare option output:doctype-system  \"http://www.w3.org/TR/REC-html40/strict.dtd\";\n"
        "declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-29.xq"),
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
                            <<"<!.......\\s+html\\s+......\\s+(['\"])\\-//W3C//DTD HTML 4.0//EN\\1\\s*(['\"])http://www.w3.org/TR/REC\\-html40/strict.dtd\\2\\s*>\\s*<html"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<!DOCTYPE\\s+....\\s+PUBLIC"/utf8>>,
                            <<"i">>
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

'Serialization-html-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "declare option output:doctype-system  \"http://www.w3.org/TR/REC-html40/strict.dtd\";\n"
        "declare option output:doctype-public  \"-//W3C//DTD HTML 4.0//EN\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-30.xq"),
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
                            <<"<!.......\\s+html\\s+......\\s+(['\"])\\-//W3C//DTD HTML 4.0//EN\\1\\s*(['\"])http://www.w3.org/TR/REC\\-html40/strict.dtd\\2\\s*>\\s*<html"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<!DOCTYPE\\s+....\\s+PUBLIC"/utf8>>,
                            <<"i">>
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

'Serialization-html-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-31.xq"),
                Qry1
            ),
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

'Serialization-html-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-32.xq"),
                Qry1
            ),
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

'Serialization-html-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"yes\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html><head/></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-33.xq"),
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
                            <<"<html><head><meta +(?:(?:http-equiv=(['\"])content-type\\1 +content=(['\"])text/html; *charset=UTF-8\\2)|(?:content=(['\"])text/html; *charset=UTF-8\\3 +http-equiv=(['\"])content-type\\4)) *></head></html>"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<html><head><[^>]*></head></html>"/utf8>>,
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

'Serialization-html-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"yes\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html;version='3.0'\"/></head></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-34.xq"),
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
                            <<"<html><head><meta +(?:(?:http-equiv=(['\"])content-type\\1 +content=(['\"])text/html; *charset=UTF-8\\2)|(?:content=(['\"])text/html; *charset=UTF-8\\3 +http-equiv=(['\"])content-type\\4)) *></head></html>"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<html><head><[^>]*></head></html>"/utf8>>,
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

'Serialization-html-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"yes\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-35.xq"),
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
                        xqerl_test:assert_serialization_match(Res, <<"<html></html>"/utf8>>, <<"">>)
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

'Serialization-html-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"yes\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html><head/></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-36.xq"),
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
                            <<"<!DOCTYPE\\s+html\\s*>\\s*<html><head><meta +(?:(?:http-equiv=(['\"])content-type\\1 +content=(['\"])text/html; *charset=UTF-8\\2)|(?:content=(['\"])text/html; *charset=UTF-8\\3 +http-equiv=(['\"])content-type\\4)) *></head></html>"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<!.......\\s+(html|HTML)\\s*>\\s*<html><head><[^>]*></head></html>"/utf8>>,
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

'Serialization-html-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"yes\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html;version='3.0'\"/></head></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-37.xq"),
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
                            <<"<!DOCTYPE +html *>\\s*<html><head><meta +(?:(?:http-equiv=(['\"])content-type\\1 +content=(['\"])text/html; *charset=UTF-8\\2)|(?:content=(['\"])text/html; *charset=UTF-8\\3 +http-equiv=(['\"])content-type\\4)) *></head></html>"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<!....... +(html|HTML) *>\\s*<html><head><[^>]*></head></html>"/utf8>>,
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

'Serialization-html-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"yes\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html/>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-38.xq"),
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
                            <<"<!DOCTYPE +html *>\\s*<html></html>"/utf8>>,
                            <<"i">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<!....... +(html|HTML) *>\\s*<html></html>"/utf8>>,
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

'Serialization-html-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"no\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html><head/></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-39.xq"),
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
                <<"<html><head></head></html>"/utf8>>,
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

'Serialization-html-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:include-content-type  \"no\";\n"
        "declare option output:media-type  \"text/html\";\n"
        "declare option output:encoding  \"UTF-8\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html><head/></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-40.xq"),
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
                            <<"<!....... +(html|HTML) *>\\s*<html><head></head></html>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"<!DOCTYPE .*"/utf8>>, <<"i">>)
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

'Serialization-html-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-41.xq"),
                Qry1
            ),
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

'Serialization-html-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = " () ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-42.xq"),
                Qry1
            ),
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

'Serialization-html-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:escape-uri-attributes  \"yes\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html><head/><body><a href=\"file:///c:/My Documents/temp/b&#xe9;b&#xe9;.xml\">Click here baby!</a></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-43.xq"),
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
                            <<"My Documents/temp/b%C3%A9b%C3%A9\\.xml"/utf8>>,
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

'Serialization-html-43a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:escape-uri-attributes  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "<html><head/><body><a href=\"file:///c:/My Documents/temp/b&#xe9;b&#xe9;.xml\">Click here baby!</a></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-43a.xq"),
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
                            <<"My Documents/temp/bébé\\.xml"/utf8>>,
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

'Serialization-html-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:escape-uri-attributes  \"yes\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html><head/><body><a href=\"file:///c:/My Documents/temp/b&#xe9;b&#xe9;.xml\">Click here baby!</a></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-44.xq"),
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
                            <<"My Documents/temp/b%C3%A9b%C3%A9\\.xml"/utf8>>,
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

'Serialization-html-44a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:escape-uri-attributes  \"no\";\n"
        "declare option output:version  \"5.0\";\n"
        "\n"
        "<html><head/><body><a href=\"file:///c:/My Documents/temp/b&#xe9;b&#xe9;.xml\">Click here baby!</a></body></html>\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-44a.xq"),
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
                            <<"My Documents/temp/bébé\\.xml"/utf8>>,
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

'Serialization-html-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare boundary-space strip;\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"no\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "let $html := <html><body><area/><base/><br/><col/><embed/><frame/><hr/><img/><input/><isindex/><link/><meta/><param/></body></html>\n"
        "return [ $html ]\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-45.xq"),
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
                <<"<html><body><area><base><br><col><embed><frame><hr><img><input><isindex><link><meta><param></body></html>"/utf8>>,
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

'Serialization-html-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        " \n"
        "     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "        declare option output:method \"html\";\n"
        "        map { } \n"
        "\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-46.xq"),
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

'Serialization-html-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"yes\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "let $html := <html><body>\n"
        "  <p>Lorem ipsum dolor sit amet, \n"
        "     consectetur adipiscing elit, \n"
        "     sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n"
        "     Ut enim ad minim veniam, \n"
        "     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n"
        "</body></html>\n"
        "return [ $html ]\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-47.xq"),
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
                    case xqerl_test:assert_serialization_match(Res, <<"<p>Lorem"/utf8>>, <<"">>) of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"consequat.</p>"/utf8>>,
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

'Serialization-html-48'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "declare option output:method  \"html\";\n"
        "declare option output:indent  \"yes\";\n"
        "declare option output:version  \"4.0\";\n"
        "\n"
        "let $html := <html><body>\n"
        "  <p>Lorem ipsum dolor sit amet, \n"
        "     consectetur adip<!--sic-->iscing elit, \n"
        "     sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n"
        "     Ut enim ad minim ven<?sic?>iam, \n"
        "     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n"
        "</body></html>\n"
        "return [ $html ]\n",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-48.xq"),
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
                            <<"adip<!--sic-->iscing"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"ven<\\?sic\\s*>iam"/utf8>>,
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

'Serialization-html-49'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"4.0\";\n"
        "      <html><head/><body><p>a<a>text</a>z</p></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-49.xq"),
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
                            <<"<p>a<a>text</a>z</p>"/utf8>>,
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

'Serialization-html-50'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      <html><head/><body><p>a<mark>text</mark>z</p></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-50.xq"),
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
                            <<"<p>a<mark>text</mark>z</p>"/utf8>>,
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

'Serialization-html-51'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"4.0\";\n"
        "      <html><head/><body><p>a<A>text</A>z</p></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-51.xq"),
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
                            <<"<p>a<A>text</A>z</p>"/utf8>>,
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

'Serialization-html-52'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      <html><head/><body><p>a<Mark>text</Mark>z</p></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-52.xq"),
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
                            <<"<p>a<Mark>text</Mark>z</p>"/utf8>>,
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

'Serialization-html-53'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      <html><body><p>A blue<svg width=\"100\" height=\"100\">\n"
        "        <circle cx=\"50\" cy=\"50\" r=\"40\" stroke=\"green\" stroke-width=\"4\" fill=\"yellow\" />\n"
        "      </svg>rectangle</p></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-53.xq"),
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
                            <<"<p>A\\s+blue<svg[^>]*>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"</svg>rectangle</p>"/utf8>>,
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

'Serialization-html-54'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      <html><body><div>\n"
        "	The Fraction \n"
        "	@=<math xmlns='http://www.w3.org/1998/Math/MathML'  display='inline'>\n"
        "		<mfrac>\n"
        "			<mrow>\n"
        "				<mi>a</mi>\n"
        "				<mo>+</mo>\n"
        "				<mi>b</mi>\n"
        "			</mrow>\n"
        "			<mrow>\n"
        "				<msup>\n"
        "					<mfenced separators=\" \">\n"
        "						<mi>c</mi>\n"
        "						<mo>+</mo>\n"
        "						<mi>d</mi>\n"
        "					</mfenced>\n"
        "					<mi>3</mi>\n"
        "				</msup>\n"
        "			</mrow>\n"
        "		</mfrac>\n"
        "	</math>=@\n"
        "	may be real!</div></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-54.xq"),
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
                            <<"<div>\\s+The\\s+Fraction\\s+@=<math"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"</math>=@\\s+may\\s+be\\s+real!</div>"/utf8>>,
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

'Serialization-html-55'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      declare option output:suppress-indentation  \"li td\";\n"
        "      <html><body>\n"
        "         <ul>\n"
        "           <li><p>One</p></li>\n"
        "           <li><p>Two</p></li>\n"
        "           <li><p>Three</p></li>\n"
        "         </ul>  \n"
        "      </body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-55.xq"),
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
                            <<"<li><p>One</p></li>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<li><p>Two</p></li>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(Res, <<"<ul>\\s+<li"/utf8>>, <<"">>)
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

'Serialization-html-56'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      declare option output:suppress-indentation  \"TABLE\";\n"
        "      <html><body>\n"
        "         <table>\n"
        "           <tr>\n"
        "            <td><p>One</p></td>\n"
        "            <td><p>yes</p></td>\n"
        "           </tr>\n"
        "           <tr>\n"
        "            <td><p>Two</p></td>\n"
        "            <td><p>yes</p></td>\n"
        "           </tr>\n"
        "           <tr>\n"
        "            <td><p>Three</p></td>\n"
        "            <td><p>yes</p></td>\n"
        "           </tr>\n"
        "         </table>  \n"
        "      </body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-56.xq"),
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
                            <<"<table><tr><td><p>One</p></td><td>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<table>[^ ]*</table>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<body>\\s+<table"/utf8>>,
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

'Serialization-html-57'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";\n"
        "      declare namespace math = \"http://www.w3.org/1998/Math/MathML\";\n"
        "      declare option output:method  \"html\";\n"
        "      declare option output:indent  \"yes\";\n"
        "      declare option output:version  \"5.0\";\n"
        "      declare option output:suppress-indentation  \"math:MROW math:MFENCED\";\n"
        "      <html><body><div>\n"
        "	The Fraction \n"
        "	@=<math xmlns='http://www.w3.org/1998/Math/MathML'  display='inline'>\n"
        "		<mfrac>\n"
        "			<mrow>\n"
        "				<mi>a</mi>\n"
        "				<mo>+</mo>\n"
        "				<mi>b</mi>\n"
        "			</mrow>\n"
        "			<mrow>\n"
        "				<msup>\n"
        "					<mfenced separators=\" \">\n"
        "						<mi>c</mi>\n"
        "						<mo>+</mo>\n"
        "						<mi>d</mi>\n"
        "					</mfenced>\n"
        "					<mi>3</mi>\n"
        "				</msup>\n"
        "			</mrow>\n"
        "		</mfrac>\n"
        "	</math>=@\n"
        "	may be real!</div></body></html>\n"
        "    ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "Serialization-html-57.xq"),
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
                            <<"<mrow><mi>a</mi><mo>\\+</mo><mi>b</mi></mrow>"/utf8>>,
                            <<"">>
                        )
                    of
                        true -> {comment, "Correct serialization"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_serialization_match(
                            Res,
                            <<"<mfenced separators=\" \"><mi>c</mi><mo>\\+</mo><mi>d</mi></mfenced>"/utf8>>,
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
