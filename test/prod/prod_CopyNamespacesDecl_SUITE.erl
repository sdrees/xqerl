-module('prod_CopyNamespacesDecl_SUITE').

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

-export(['copynamespace-1'/1]).
-export(['copynamespace-2'/1]).
-export(['copynamespace-3'/1]).
-export(['copynamespace-4'/1]).
-export(['copynamespace-5'/1]).
-export(['copynamespace-6'/1]).
-export(['copynamespace-7'/1]).
-export(['copynamespace-8'/1]).
-export(['copynamespace-9'/1]).
-export(['copynamespace-10'/1]).
-export(['copynamespace-11'/1]).
-export(['copynamespace-12'/1]).
-export(['copynamespace-13'/1]).
-export(['copynamespace-14'/1]).
-export(['copynamespace-15'/1]).
-export(['copynamespace-16'/1]).
-export(['copynamespace-17'/1]).
-export(['copynamespace-18'/1]).
-export(['copynamespace-19'/1]).
-export(['copynamespace-20'/1]).
-export(['copynamespace-21'/1]).
-export(['copynamespace-22'/1]).
-export(['K-CopyNamespacesProlog-1'/1]).
-export(['K-CopyNamespacesProlog-2'/1]).
-export(['K-CopyNamespacesProlog-3'/1]).
-export(['K-CopyNamespacesProlog-4'/1]).
-export(['K-CopyNamespacesProlog-5'/1]).
-export(['K2-CopyNamespacesProlog-1'/1]).
-export(['K2-CopyNamespacesProlog-2'/1]).
-export(['K2-CopyNamespacesProlog-3'/1]).
-export(['K2-CopyNamespacesProlog-4'/1]).
-export(['K2-CopyNamespacesProlog-5'/1]).
-export(['K2-CopyNamespacesProlog-6'/1]).
-export(['K2-CopyNamespacesProlog-7'/1]).
-export(['K2-CopyNamespacesProlog-8'/1]).
-export(['K2-CopyNamespacesProlog-9'/1]).

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
            'copynamespace-1',
            'copynamespace-2',
            'copynamespace-3',
            'copynamespace-4',
            'copynamespace-5',
            'copynamespace-6',
            'copynamespace-7',
            'copynamespace-8',
            'copynamespace-9',
            'copynamespace-10',
            'copynamespace-11',
            'copynamespace-12',
            'copynamespace-13',
            'copynamespace-14',
            'copynamespace-15',
            'copynamespace-16',
            'copynamespace-17',
            'copynamespace-18',
            'copynamespace-19',
            'copynamespace-20',
            'copynamespace-21',
            'copynamespace-22',
            'K-CopyNamespacesProlog-1'
        ]},
        {group_1, [parallel], [
            'K-CopyNamespacesProlog-2',
            'K-CopyNamespacesProlog-3',
            'K-CopyNamespacesProlog-4',
            'K-CopyNamespacesProlog-5',
            'K2-CopyNamespacesProlog-1',
            'K2-CopyNamespacesProlog-2',
            'K2-CopyNamespacesProlog-3',
            'K2-CopyNamespacesProlog-4',
            'K2-CopyNamespacesProlog-5',
            'K2-CopyNamespacesProlog-6',
            'K2-CopyNamespacesProlog-7',
            'K2-CopyNamespacesProlog-8',
            'K2-CopyNamespacesProlog-9'
        ]}
    ].

'copynamespace-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare copy-namespaces preserve, no-inherit; declare copy-namespaces no-preserve, no-inherit; declare variable $input-context1 external; \"aaa\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0055") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0055 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,no-inherit; \n"
        "      	declare default element namespace \"http://example.org/names\";\n"
        "      	let $new := <newElement xmlns = \"http://www.example.com/mynamespace\">{element original {\"Original Content\"}}</newElement> \n"
        "      	return $new//*\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-2.xq"), Qry1),
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
                "<original xmlns=\"http://www.example.com/mynamespace\">Original Content</original>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace foo = \"http://example.org\"; \n"
        "        declare copy-namespaces preserve,no-inherit; \n"
        "        let $existingElement := <existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement> \n"
        "        let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> \n"
        "        return in-scope-prefixes(exactly-one($new/child::node()))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_permutation(Res, "\"\", \"xml\"") of
            true -> {comment, "Correct permutation"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace foo = \"http://example.org\"; \n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	let $existingElement := <existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement> \n"
        "      	let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> \n"
        "      	for $var in (in-scope-prefixes($new//child::*)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " foo xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace foo = \"http://example.org\"; \n"
        "      	declare copy-namespaces preserve,no-inherit; \n"
        "      	let $existingElement := <foo:existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</foo:existingElement> \n"
        "      	let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> \n"
        "      	for $var in (in-scope-prefixes($new//child::*)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " foo xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare namespace foo = \"http://example.org\"; \n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	let $existingElement := <foo:existingElement xmlns=\"http://www.existingnamespace.com\">{\"Existing Content\"}</foo:existingElement> \n"
        "      	let $new := <foo:newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</foo:newElement> \n"
        "      	for $var in (in-scope-prefixes($new//child::*)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, " foo xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces no-preserve,no-inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var )ascending \n"
        "      	return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,no-inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns = \"http://www.mynamespace.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "existingNamespace xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces no-preserve,inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns:newNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "newNamespace xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns:newNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "existingNamespace newNamespace xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns:existingNamespace = \"http://www.mynamespace.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "existingNamespace xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:existingNamespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns:newNamespace = \"http://www.existingnamespace.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "existingNamespace newNamespace xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $existingElement := <existingElement>{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement>{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes(exactly-one($new/existingElement))) \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $existingElement := <existingElement xmlns:somespace=\"http://www.existingnamespace.com\">{\"Existing Content\"}</existingElement>; \n"
        "      	declare variable $new := <newElement xmlns:SOMESPACE=\"http://www.another.com\">{$existingElement}</newElement>; \n"
        "      	for $var in (in-scope-prefixes($new/existingElement)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "SOMESPACE somespace xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2/element1)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "namespace1 namespace2 namespace3 xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces no-preserve,inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2/element1)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "namespace3 xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces no-preserve,no-inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2/element1)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,no-inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2/element1)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "namespace1 xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "namespace2 namespace3 xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces no-preserve,inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "namespace3 xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces no-preserve,no-inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'copynamespace-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare copy-namespaces preserve,no-inherit; \n"
        "      	declare variable $element1 := <element1 xmlns:namespace1=\"http://www.namespace1.com\"></element1>; \n"
        "      	declare variable $element2 := <element2 xmlns:namespace2=\"http://www.namespace2.com\">{$element1}</element2>; \n"
        "      	declare variable $element3 := <element3 xmlns:namespace3=\"http://www.namespace3.com\">{$element2}</element3>; \n"
        "      	for $var in (in-scope-prefixes($element3/element2)) \n"
        "      	order by exactly-one($var) ascending \n"
        "      	return $var\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "copynamespace-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "namespace2 xml") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-CopyNamespacesProlog-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare copy-namespaces preserve, no-inherit; declare copy-namespaces no-preserve, no-inherit; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-CopyNamespacesProlog-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0055") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0055 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-CopyNamespacesProlog-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare copy-namespaces no-preserve, no-inherit; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-CopyNamespacesProlog-2.xq"),
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

'K-CopyNamespacesProlog-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare copy-namespaces preserve, inherit; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-CopyNamespacesProlog-3.xq"),
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

'K-CopyNamespacesProlog-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare copy-namespaces no-inherit, no-preserve; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-CopyNamespacesProlog-4.xq"),
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

'K-CopyNamespacesProlog-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare copy-namespaces inherit, preserve; 1 eq 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-CopyNamespacesProlog-5.xq"),
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

'K2-CopyNamespacesProlog-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare copy-namespaces no-preserve, inherit; <doc> <a>{<b xmlns:p=\"http://example.com/\"/>}</a> <a><b xmlns:p=\"http://example.com/\"/></a> </doc>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-1.xq"),
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
                "<doc><a><b/></a><a><b xmlns:p=\"http://example.com/\"/></a></doc>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-CopyNamespacesProlog-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "copy-namespaces lt copy-namespaces",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-2.xq"),
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

'K2-CopyNamespacesProlog-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "namespace lt namespace",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-3.xq"),
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

'K2-CopyNamespacesProlog-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare copy-namespaces preserve, no-inherit; <e xmlns=\"http://example.com/\"> { <b/> } </e>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e xmlns=\"http://example.com/\"><b/></e>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-CopyNamespacesProlog-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare copy-namespaces no-preserve, no-inherit; <e xmlns:appearsUnused=\"http://example.com/\"> { <b> <appearsUnused:c/> </b> } </e>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-5.xq"),
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
                "<e xmlns:appearsUnused=\"http://example.com/\"><b><appearsUnused:c xmlns:appearsUnused=\"http://example.com/\"/></b></e>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-CopyNamespacesProlog-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace ns = \"http://example.com/\"; <e xmlns:appearsUnused=\"http://example.com/\"> { <b> <appearsUnused:c/> </b> } </e>/(for $n in (., b, b/ns:c), $i in in-scope-prefixes($n) order by $i return ($i, '|'))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-6.xq"),
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
                "appearsUnused | appearsUnused | appearsUnused | xml | xml | xml |"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-CopyNamespacesProlog-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare copy-namespaces no-preserve, no-inherit; <e> { <b> <c xmlns:unused=\"http://example.com\"/> </b> } </e>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<e><b><c/></b></e>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-CopyNamespacesProlog-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare copy-namespaces no-preserve,inherit; <a> { <b>{()}</b> } </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<a><b/></a>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-CopyNamespacesProlog-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare copy-namespaces preserve, no-inherit; \n"
        "         declare variable $e1 := <e1 xmlns:namespace1=\"http://www.namespace1.com\"/>; \n"
        "         declare variable $e2 := <e2 xmlns:namespace2=\"http://www.namespace2.com\">{$e1}</e2>; \n"
        "         for $n in <e3 xmlns:namespace3=\"http://www.namespace3.com\">{$e2}</e3>/e2/e1, \n"
        "             $ps in in-scope-prefixes($n) \n"
        "         order by $ps \n"
        "         return $ps, '|', \n"
        "         for $n in <e3 xmlns:namespace3=\"http://www.namespace3.com\">{<e2 xmlns:namespace2=\"http://www.namespace2.com\">{<e1 xmlns:namespace1=\"http://www.namespace1.com\"/>}</e2>}</e3>/e2/e1, \n"
        "             $ps in in-scope-prefixes($n) \n"
        "         order by $ps \n"
        "         return $ps\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-CopyNamespacesProlog-9.xq"),
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
                "namespace1 xml | namespace1 namespace2 namespace3 xml"
            )
        of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
