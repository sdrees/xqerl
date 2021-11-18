-module('prod_DefaultNamespaceDecl_SUITE').

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

-export(['default_namespace-001'/1]).
-export(['default_namespace-002'/1]).
-export(['default_namespace-003'/1]).
-export(['default_namespace-004'/1]).
-export(['default_namespace-005'/1]).
-export(['default_namespace-006'/1]).
-export(['default_namespace-007'/1]).
-export(['default_namespace-008'/1]).
-export(['default_namespace-009'/1]).
-export(['default_namespace-010'/1]).
-export(['default_namespace-011'/1]).
-export(['default_namespace-012'/1]).
-export(['default_namespace-013'/1]).
-export(['default_namespace-014'/1]).
-export(['default_namespace-015'/1]).
-export(['default_namespace-016'/1]).
-export(['default_namespace-017'/1]).
-export(['default_namespace-018'/1]).
-export(['default_namespace-019'/1]).
-export(['default_namespace-020'/1]).
-export(['default_namespace-021'/1]).
-export(['default_namespace-022'/1]).
-export(['defaultnamespacedeclerr-1'/1]).
-export(['defaultnamespacedeclerr-2'/1]).
-export(['defaultnamespacedeclerr-3'/1]).
-export(['defaultnamespacedeclerr-4'/1]).
-export(['defaultnamespacedeclerr-5'/1]).
-export(['defaultnamespacedeclerr-6'/1]).
-export(['defaultnamespacedeclerr-7'/1]).
-export(['defaultnamespacedeclerr-8'/1]).
-export(['K-DefaultNamespaceProlog-1'/1]).
-export(['K-DefaultNamespaceProlog-2'/1]).
-export(['K-DefaultNamespaceProlog-3'/1]).
-export(['K-DefaultNamespaceProlog-4'/1]).
-export(['K-DefaultNamespaceProlog-5'/1]).
-export(['K-DefaultNamespaceProlog-6'/1]).
-export(['K-DefaultNamespaceProlog-7'/1]).
-export(['K-DefaultNamespaceProlog-8'/1]).
-export(['K-DefaultNamespaceProlog-9'/1]).
-export(['K-DefaultNamespaceProlog-10'/1]).
-export(['K-DefaultNamespaceProlog-11'/1]).
-export(['K2-DefaultNamespaceProlog-1'/1]).
-export(['K2-DefaultNamespaceProlog-2'/1]).
-export(['K2-DefaultNamespaceProlog-3'/1]).
-export(['K2-DefaultNamespaceProlog-4'/1]).
-export(['K2-DefaultNamespaceProlog-5'/1]).
-export(['K2-DefaultNamespaceProlog-6'/1]).
-export(['K2-DefaultNamespaceProlog-7'/1]).
-export(['K2-DefaultNamespaceProlog-8'/1]).
-export(['K2-DefaultNamespaceProlog-9'/1]).
-export(['K2-DefaultNamespaceProlog-10'/1]).
-export(['K2-DefaultNamespaceProlog-11'/1]).
-export(['K2-DefaultNamespaceProlog-12'/1]).
-export(['K2-DefaultNamespaceProlog-12a'/1]).
-export(['K2-DefaultNamespaceProlog-13'/1]).
-export(['K2-DefaultNamespaceProlog-14'/1]).
-export(['K2-DefaultNamespaceProlog-15'/1]).
-export(['K2-DefaultNamespaceProlog-16'/1]).
-export(['K2-DefaultNamespaceProlog-17'/1]).
-export(['K2-DefaultNamespaceProlog-18'/1]).

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
        {group, group_2}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'default_namespace-001',
            'default_namespace-002',
            'default_namespace-003',
            'default_namespace-004',
            'default_namespace-005',
            'default_namespace-006',
            'default_namespace-007',
            'default_namespace-008',
            'default_namespace-009',
            'default_namespace-010',
            'default_namespace-011',
            'default_namespace-012',
            'default_namespace-013',
            'default_namespace-014',
            'default_namespace-015',
            'default_namespace-016',
            'default_namespace-017',
            'default_namespace-018',
            'default_namespace-019',
            'default_namespace-020',
            'default_namespace-021',
            'default_namespace-022',
            'defaultnamespacedeclerr-1'
        ]},
        {group_1, [parallel], [
            'defaultnamespacedeclerr-2',
            'defaultnamespacedeclerr-3',
            'defaultnamespacedeclerr-4',
            'defaultnamespacedeclerr-5',
            'defaultnamespacedeclerr-6',
            'defaultnamespacedeclerr-7',
            'defaultnamespacedeclerr-8',
            'K-DefaultNamespaceProlog-1',
            'K-DefaultNamespaceProlog-2',
            'K-DefaultNamespaceProlog-3',
            'K-DefaultNamespaceProlog-4',
            'K-DefaultNamespaceProlog-5',
            'K-DefaultNamespaceProlog-6',
            'K-DefaultNamespaceProlog-7',
            'K-DefaultNamespaceProlog-8',
            'K-DefaultNamespaceProlog-9',
            'K-DefaultNamespaceProlog-10',
            'K-DefaultNamespaceProlog-11',
            'K2-DefaultNamespaceProlog-1',
            'K2-DefaultNamespaceProlog-2',
            'K2-DefaultNamespaceProlog-3',
            'K2-DefaultNamespaceProlog-4',
            'K2-DefaultNamespaceProlog-5',
            'K2-DefaultNamespaceProlog-6'
        ]},
        {group_2, [parallel], [
            'K2-DefaultNamespaceProlog-7',
            'K2-DefaultNamespaceProlog-8',
            'K2-DefaultNamespaceProlog-9',
            'K2-DefaultNamespaceProlog-10',
            'K2-DefaultNamespaceProlog-11',
            'K2-DefaultNamespaceProlog-12',
            'K2-DefaultNamespaceProlog-12a',
            'K2-DefaultNamespaceProlog-13',
            'K2-DefaultNamespaceProlog-14',
            'K2-DefaultNamespaceProlog-15',
            'K2-DefaultNamespaceProlog-16',
            'K2-DefaultNamespaceProlog-17',
            'K2-DefaultNamespaceProlog-18'
        ]}
    ].

environment('bib', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/bib.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('bib2', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../op/union/bib2.xml"), ".", []}]},
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
    ].

'default_namespace-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare default function namespace \"http://www..oracle.com/xquery/test\"; declare function price ($b as element()) as element()* { $b/price }; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-001.xq"),
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

'default_namespace-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://www..oracle.com/xquery/test\"; \n"
        "        declare function foo($n as xs:integer) { <tr> {$n} </tr> }; \n"
        "        foo(4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<tr>4</tr>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://www..oracle.com/xquery/test\"; \n"
        "        declare function price ($i as element()) as element()? { $i/price }; \n"
        "        for $j in /bib/book return price($j)\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-003.xq"),
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
                "<price>65.95</price><price>65.95</price><price>39.95</price><price>129.95</price>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org\"; \n"
        "        declare function summary($emps as element(employee)*) as element(dept)* { \n"
        "            for $d in fn:distinct-values($emps/deptno) \n"
        "            let $e := $emps[deptno = $d] \n"
        "            return <dept> <deptno>{$d}</deptno> <headcount> {fn:count($e)} </headcount> <payroll> {fn:sum($e/salary)} </payroll> </dept> \n"
        "        }; \n"
        "        summary(//employee[location = \"Denver\"])",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-004.xq"),
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
                "<dept><deptno>1</deptno><headcount>2</headcount><payroll>130000</payroll></dept><dept><deptno>2</deptno><headcount>1</headcount><payroll>80000</payroll></dept>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function mysum($i as xs:integer, $j as xs:integer) { let $j := $i + $j return $j }; \n"
        "      	declare function invoke_mysum() { let $s := 1 for $d in (1,2,3,4,5) let $s := mysum($s, $d) return $s }; \n"
        "      	invoke_mysum()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "2 3 4 5 6") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function mysum($i as xs:integer, $j as xs:integer) { let $j := $i + $j return $j }; \n"
        "      	declare function invoke_mysum($st) { for $d in (1,2,3,4,5) let $st := mysum($d, $st) return $st }; \n"
        "      	invoke_mysum(0)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1 2 3 4 5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare variable $a := 1; \n"
        "      	declare function foo($a as xs:integer) { if ($a > 100) then $a else let $a := $a + 1 return foo($a) }; \n"
        "      	foo($a)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "101") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function fact($n as xs:integer) as xs:integer { if ($n < 2) then 1 else $n * fact($n - 1) }; \n"
        "      	declare variable $ten := fact(10); \n"
        "      	<table> { for $i in 1 to 10 return <tr> <td>10!/{$i}! = {$ten div fact($i)}</td> </tr> } </table>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-008.xq"),
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
                "<table><tr><td>10!/1! = 3628800</td></tr><tr><td>10!/2! = 1814400</td></tr><tr><td>10!/3! = 604800</td></tr><tr><td>10!/4! = 151200</td></tr><tr><td>10!/5! = 30240</td></tr><tr><td>10!/6! = 5040</td></tr><tr><td>10!/7! = 720</td></tr><tr><td>10!/8! = 90</td></tr><tr><td>10!/9! = 10</td></tr><tr><td>10!/10! = 1</td></tr></table>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function fact($n as xs:integer) as xs:integer { if ($n < 2) then 1 else $n * fact(($n)-1) }; \n"
        "      	<table> { for $i in 1 to 10 return <tr> <td>{$i}! = {fact($i)}</td> </tr> } </table>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-009.xq"),
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
                "<table><tr><td>1! = 1</td></tr><tr><td>2! = 2</td></tr><tr><td>3! = 6</td></tr><tr><td>4! = 24</td></tr><tr><td>5! = 120</td></tr><tr><td>6! = 720</td></tr><tr><td>7! = 5040</td></tr><tr><td>8! = 40320</td></tr><tr><td>9! = 362880</td></tr><tr><td>10! = 3628800</td></tr></table>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org\"; \n"
        "        declare function prnt($n as xs:integer,$n2 as xs:string, $n3 as xs:date, $n4 as xs:long, $n5 as xs:string, $n6 as xs:decimal) {\n"
        "             if ($n < 2) then 1 else fn:concat($n, \" \",$n2,\" \",$n3,\" \",$n4,\" \",$n5,\" \",$n6) \n"
        "        }; \n"
        "        <table> { <td>Value is = {prnt(4,xs:string(\"hello\"),xs:date(\"2005-02-22\"), xs:long(5),xs:string(\"well\"),xs:decimal(1.2))}</td> } </table>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-010.xq"),
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
                "<table><td>Value is = 4 hello 2005-02-22 5 well 1.2</td></table>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function fn1 ($n as xs:integer) as xs:integer { fn2($n) }; \n"
        "      	declare function fn2 ($n as xs:integer) as xs:integer { if ($n = 1) then 1 else $n + fn1($n - 1) }; \n"
        "      	fn1(4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-011.xq"),
                Qry1
            ),
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

'default_namespace-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function fn1 ($n as xs:integer) as xs:integer { fn2($n) }; \n"
        "      	declare function fn2 ($n as xs:integer) as xs:integer { if ($n = 1) then 1 else $n + fn1($n - 1) }; \n"
        "      	fn1(4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-012.xq"),
                Qry1
            ),
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

'default_namespace-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function foo2($i as xs:string) as xs:string {foo($i)}; \n"
        "      	declare function foo($i as xs:string) as xs:string {$i}; \n"
        "      	foo2(\"abc\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-013.xq"),
                Qry1
            ),
            xqerl:run(Mod)
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

'default_namespace-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function odd($x as xs:integer) as xs:boolean {if ($x = 0) then fn:false() else even($x - 1)}; \n"
        "      	declare function even($x as xs:integer) as xs:boolean {if ($x = 0) then fn:true() else odd($x - 1)}; \n"
        "      	even(4)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-014.xq"),
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

'default_namespace-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function odd($x as xs:integer) as xs:boolean {if ($x = 0) then fn:false() else even($x - 1)}; \n"
        "      	declare function even($x as xs:integer) as xs:boolean {if ($x = 0) then fn:true() else odd($x - 1)}; \n"
        "      	even(3)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-015.xq"),
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

'default_namespace-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org\"; \n"
        "        declare function title($a_book as element()) as element()* { for $i in $a_book return $i/title }; \n"
        "        /bib/book/(title(.))",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib2', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-016.xq"),
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
                "<title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title><title>Data on the Web</title><title>The Economics of Technology and Content for Digital TV</title>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org\"; \n"
        "        declare default element namespace \"http://www.example.com/filesystem\"; \n"
        "        declare variable $v as xs:integer := 100; \n"
        "        declare function udf1 ($CUSTNO as xs:integer) { <empty> {$CUSTNO*$v} </empty> }; \n"
        "        udf1(10)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-017.xq"),
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
                "<empty xmlns=\"http://www.example.com/filesystem\">1000</empty>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org\"; \n"
        "        declare default element namespace \"http://www.example.com/filesystem\"; \n"
        "        declare function udf1 () { <empty> {10*10} </empty> }; \n"
        "        udf1 ()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-018.xq"),
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
                "<empty xmlns=\"http://www.example.com/filesystem\">100</empty>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org\"; \n"
        "        declare default element namespace \"http://www.example.com/def\"; \n"
        "        declare namespace test=\"http://www.example.com/test\"; \n"
        "        declare namespace test2=\"http://www.example.com/test2\"; \n"
        "        declare function test:udf1() { <empty> {10*10} </empty> }; \n"
        "        declare function test2:udf1() { <empty/> }; \n"
        "        <A> {test:udf1()} {test2:udf1()} </A>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-019.xq"),
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
                "<A xmlns=\"http://www.example.com/def\"><empty>100</empty><empty/></A>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	declare default function namespace \"http://example.org\"; \n"
        "      	declare function price () as xs:integer+ { 100 }; \n"
        "      	declare function price ($z as xs:integer) as xs:integer+ { $z }; \n"
        "      	declare function price ($x as xs:integer, $y as xs:integer) as xs:integer+ { $x, $y }; \n"
        "      	declare function price ($x as xs:integer, $y as xs:integer, $z as xs:integer) as xs:integer+ { $x+$y+$z }; \n"
        "      	price(), price(1), price(2,3), price(4,5,6)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-020.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "100 1 2 3 15") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"http:/www.oracle.com/xquery\"; \n"
        "        declare variable $x := 7.5; \n"
        "        $x + 2",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-021.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "9.5") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'default_namespace-022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"http://www.example.com/test\"; \n"
        "        <test/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "default_namespace-022.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_xml(Res, "<test xmlns=\"http://www.example.com/test\"/>") of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"http://example.org/names\"; \n"
        "        declare default element namespace \"http://someexample.org/names\"; \n"
        "        \"abc\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0066") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0066 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://example.org/names\"; \n"
        "        declare default function namespace \"http://someexample.org/names\"; \n"
        "        \"abc\"",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0066") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0066 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"http://www.w3.org/XML/1998/namespace\";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0070") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://www.w3.org/XML/1998/namespace\";\n"
        "        declare function go() {3};\n"
        "        go()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0070") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"http://www.w3.org/2000/xmlns/\";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0070") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http://www.w3.org/2000/xmlns/\";\n"
        "        declare function go() {3};\n"
        "        go()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0070") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default element namespace \"http&#x3a;//www.w3.org/2000/xmlns/\";\n"
        "        <a/>\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0070") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'defaultnamespacedeclerr-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare default function namespace \"http&#x3a;//www.w3.org/2000/xmlns/\";\n"
        "        declare function go() {3};\n"
        "        go()\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "defaultnamespacedeclerr-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0070") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-DefaultNamespaceProlog-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare(:..:)default(:..:)element(:..:)namespace(:..:)'http://example.com/'(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-1.xq"),
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

'K-DefaultNamespaceProlog-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare(:..:)default(:..:)element(:..:)namespace(:..:)\"http://example.com/\"(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-2.xq"),
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

'K-DefaultNamespaceProlog-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare(:..:)default(:..:)function(:..:)namespace(:..:)'http://example.com/'(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-3.xq"),
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

'K-DefaultNamespaceProlog-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare(:..:)default(:..:)function(:..:)namespace(:..:)\"http://example.com/\"(:..:);(:..:)1(:..:)eq(:..:)1(:..:)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-4.xq"),
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

'K-DefaultNamespaceProlog-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare(:..:)default(:..:)function(:..:)namespace(:..:)\"http://example.com/\"(:..:);(:..:)boolean(1)(:..:)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-5.xq"),
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

'K-DefaultNamespaceProlog-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare function namespace \"http://example.com/\";1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-6.xq"),
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

'K-DefaultNamespaceProlog-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare element namespace \"http://example.com/\";1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-7.xq"),
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

'K-DefaultNamespaceProlog-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare default element namespace = \"http://example.com/\";1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-8.xq"),
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

'K-DefaultNamespaceProlog-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare default function namespace = \"http://example.com/\";1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-9.xq"),
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

'K-DefaultNamespaceProlog-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare default element namespace := \"http://example.com/\";1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-10.xq"),
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

'K-DefaultNamespaceProlog-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare default function namespace := \"http://example.com/\";1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-DefaultNamespaceProlog-11.xq"),
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

'K2-DefaultNamespaceProlog-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare default element namespace \"http://example.com/defelementns\"; namespace-uri(<foo/>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/defelementns") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare default element namespace \"http://example.com/defelementns\"; namespace-uri(<foo xmlns=\"http://example.com/overriden\"/>)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "http://example.com/overriden") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "default declare default element namespace b = \"http://www.example.com/\"; empty(<e xmlns=\"http://www.example.com/\"><d xmlns=\"\"><b/></d></e>/b:d/b:b)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-3.xq"),
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

'K2-DefaultNamespaceProlog-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare default element namespace b = \"http://www.example.com/\"; empty(<e xmlns=\"http://www.example.com/\"><d xmlns=\"\"><b/></d></e>/b:d/b:b)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-4.xq"),
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
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0081") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
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

'K2-DefaultNamespaceProlog-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "declare default element namespace b = \"http://www.example.com/\"; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-5.xq"),
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

'K2-DefaultNamespaceProlog-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default element namespace \"http://example.com/\"; \n"
        "         namespace-uri-from-QName(xs:QName(\"localName\")), \n"
        "         <e xmlns=\"\"> { \" | \", namespace-uri-from-QName(xs:QName(\"localName\")) } </e>, \n"
        "         namespace-uri-from-QName(xs:QName(\"localName\"))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-6.xq"),
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
                    case xqerl_test:assert(Res, "$result[1] eq \"http://example.com/\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[2][self::e] eq \" |  \"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[3] eq \"http://example.com/\"") of
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

'K2-DefaultNamespaceProlog-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e xmlns=\"\" xmlns=\"\"/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0071") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0071 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e xmlns=\"http://www.example.com/1\" xmlns=\"http://www.example.com/2\"/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0071") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0071 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "<e xmlns:p=\"http://www.example.com/1\" xmlns:p=\"http://www.example.com/2\"/>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0071") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0071 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare namespace a = \"http://www.example.com/\"; <e xmlns:b=\"http://www.example.com/\" a:localName=\"1\" b:localName=\"2\" />",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0040") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0040 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<a xmlns=\"http://www.w3.org/2001/XMLSchema\"> {1 cast as byte} <b xmlns=\"http://www.w3.org/1999/XSL/Transform\"> {count(1)} </b> {2 cast as byte} </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-11.xq"),
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
                "<a xmlns=\"http://www.w3.org/2001/XMLSchema\">1<b xmlns=\"http://www.w3.org/1999/XSL/Transform\">1</b>2</a>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K2-DefaultNamespaceProlog-12a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<a xmlns=\"http://www.w3.org/2001/XMLSchema\"> {1 cast as byte} <b xmlns=\"http://www.w3.org/1999/XSL/Transform\"> {count(1), 2 cast as byte} </b> {2 cast as byte} </a>",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-12a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0052") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0052 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-DefaultNamespaceProlog-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $variable := 1; declare default element namespace \"http://example.com\"; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-13.xq"),
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

'K2-DefaultNamespaceProlog-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare variable $variable := 1; declare default element namespace \"http://example.com\"; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-14.xq"),
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

'K2-DefaultNamespaceProlog-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare function local:myFunc() { 1 }; declare default element namespace \"http://example.com\"; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-15.xq"),
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

'K2-DefaultNamespaceProlog-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "declare option local:myOption \"foo\"; declare default element namespace \"http://example.com\"; 1",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-16.xq"),
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

'K2-DefaultNamespaceProlog-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare default element namespace \"http://example.com/\"; \n"
        "         for $test as attribute(integer, xs:anyAtomicType) in (<e integer=\"1\"/>/@integer) \n"
        "         return data($test)\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-17.xq"),
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

'K2-DefaultNamespaceProlog-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "default eq default",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-DefaultNamespaceProlog-18.xq"),
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
