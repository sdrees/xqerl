-module('fn_resolve_QName_SUITE').

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

-export(['fn-resolve-qname-1'/1]).
-export(['fn-resolve-qname-2'/1]).
-export(['fn-resolve-qname-3'/1]).
-export(['fn-resolve-qname-4'/1]).
-export(['fn-resolve-qname-5'/1]).
-export(['fn-resolve-qname-6'/1]).
-export(['fn-resolve-qname-7'/1]).
-export(['fn-resolve-qname-8'/1]).
-export(['fn-resolve-qname-9'/1]).
-export(['fn-resolve-qname-10'/1]).
-export(['fn-resolve-qname-11'/1]).
-export(['fn-resolve-qname-12'/1]).
-export(['fn-resolve-qname-13'/1]).
-export(['fn-resolve-qname-14'/1]).
-export(['fn-resolve-qname-15'/1]).
-export(['fn-resolve-qname-16'/1]).
-export(['fn-resolve-qname-17'/1]).
-export(['fn-resolve-qname-18'/1]).
-export(['fn-resolve-qname-19'/1]).
-export(['fn-resolve-qname-20'/1]).
-export(['fn-resolve-qname-21'/1]).
-export(['fn-resolve-qname-22'/1]).
-export(['fn-resolve-qname-23'/1]).
-export(['fn-resolve-qname-24'/1]).
-export(['fn-resolve-qname-25'/1]).
-export(['fn-resolve-qname-26'/1]).
-export(['K-ResolveQNameConstructFunc-1'/1]).
-export(['K-ResolveQNameConstructFunc-2'/1]).
-export(['K-ResolveQNameConstructFunc-3'/1]).
-export(['K-ResolveQNameConstructFunc-4'/1]).
-export(['cbcl-fn-resolve-qname-001'/1]).

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
            'fn-resolve-qname-1',
            'fn-resolve-qname-2',
            'fn-resolve-qname-3',
            'fn-resolve-qname-4',
            'fn-resolve-qname-5',
            'fn-resolve-qname-6',
            'fn-resolve-qname-7',
            'fn-resolve-qname-8',
            'fn-resolve-qname-9',
            'fn-resolve-qname-10',
            'fn-resolve-qname-11',
            'fn-resolve-qname-12',
            'fn-resolve-qname-13',
            'fn-resolve-qname-14',
            'fn-resolve-qname-15',
            'fn-resolve-qname-16',
            'fn-resolve-qname-17',
            'fn-resolve-qname-18',
            'fn-resolve-qname-19',
            'fn-resolve-qname-20',
            'fn-resolve-qname-21',
            'fn-resolve-qname-22',
            'fn-resolve-qname-23'
        ]},
        {group_1, [parallel], [
            'fn-resolve-qname-24',
            'fn-resolve-qname-25',
            'fn-resolve-qname-26',
            'K-ResolveQNameConstructFunc-1',
            'K-ResolveQNameConstructFunc-2',
            'K-ResolveQNameConstructFunc-3',
            'K-ResolveQNameConstructFunc-4',
            'cbcl-fn-resolve-qname-001'
        ]}
    ].

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
    ].

'fn-resolve-qname-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:resolve-QName(\"aName::\", <anElement>Some content</anElement>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOCA0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOCA0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:resolve-QName(\"p1:anElement\", <anElement>Some content</anElement>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FONS0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FONS0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:resolve-QName((), <anElement>Some content</anElement>))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "0") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(\"p1:name\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "name") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(\"p1:name\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(\"p1:name\", <anElement xmlns:p1=\"http://example.com/examples\" xmlns:P1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "name") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(\"P1:name\", <anElement xmlns:p1=\"http://example.com/examples\" xmlns:P1=\"http://someothernamespace.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://someothernamespace.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(\"anElement\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(\"anElement\", <anElement xmlns=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:count(fn:namespace-uri-from-QName(fn:resolve-QName(\"anElement\", <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(xs:string(\"p1:anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(xs:string(\"p1:anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-12.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:concat(\"p1:\",\"anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-13.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:concat(\"p1:\",\"anElement\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:string-join((\"p1:\",\"anElement\"),\"\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:string-join(('p1:','anElement'),''), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:substring-before(\"p1:anElementabc\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:substring-before(\"p1:anElementabc\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:substring-after(\"abcp1:anElement\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:substring-after(\"abcp1:anElement\",\"abc\"), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-20.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:local-name-from-QName(fn:resolve-QName(fn:substring(\"abcp1:anElement\",4), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-21.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "anElement") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:string(fn:namespace-uri-from-QName(fn:resolve-QName(fn:substring(\"abcp1:anElement\",4), <anElement xmlns:p1=\"http://example.com/examples\">Some content</anElement>)))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "fn-resolve-qname-22.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/examples") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-resolve-qname-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'fn-resolve-qname-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'fn-resolve-qname-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'fn-resolve-qname-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'K-ResolveQNameConstructFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "resolve-QName()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ResolveQNameConstructFunc-1.xq"),
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

'K-ResolveQNameConstructFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "resolve-QName(\"wrongparam\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ResolveQNameConstructFunc-2.xq"),
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

'K-ResolveQNameConstructFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "resolve-QName(\"wrongparam\", \"takes a node\", \"wrong\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ResolveQNameConstructFunc-3.xq"),
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

'K-ResolveQNameConstructFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "empty(resolve-QName((), \"a string\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-ResolveQNameConstructFunc-4.xq"),
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

'cbcl-fn-resolve-qname-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "resolve-QName(\"blah\",<foo:a xmlns:foo=\"http://test/\"/>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-resolve-qname-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "blah") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
