-module('app_UseCaseXMP_SUITE').

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

-export(['xmp-queries-results-q1'/1]).
-export(['xmp-queries-results-q2'/1]).
-export(['xmp-queries-results-q3'/1]).
-export(['xmp-queries-results-q4'/1]).
-export(['xmp-queries-results-q5'/1]).
-export(['xmp-queries-results-q6'/1]).
-export(['xmp-queries-results-q7'/1]).
-export(['xmp-queries-results-q8'/1]).
-export(['xmp-queries-results-q9'/1]).
-export(['xmp-queries-results-q10'/1]).
-export(['xmp-queries-results-q11'/1]).
-export(['xmp-queries-results-q12'/1]).

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
    __BaseDir = filename:join(TD, "app"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'xmp-queries-results-q1',
            'xmp-queries-results-q2',
            'xmp-queries-results-q3',
            'xmp-queries-results-q4',
            'xmp-queries-results-q5',
            'xmp-queries-results-q6',
            'xmp-queries-results-q7',
            'xmp-queries-results-q8',
            'xmp-queries-results-q9',
            'xmp-queries-results-q10',
            'xmp-queries-results-q11',
            'xmp-queries-results-q12'
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
environment('bib-and-reviews', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "../docs/bib.xml"), "$bib", []},
            {filename:join(__BaseDir, "../docs/reviews.xml"), "$reviews", []}
        ]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('books', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/books.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('prices', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../docs/prices.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'xmp-queries-results-q1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<bib> { \n"
        "      		for $b in /bib/book \n"
        "      		where $b/publisher = \"Addison-Wesley\" and $b/@year > 1991 \n"
        "      		return <book year=\"{ $b/@year }\">{ $b/title }</book> } \n"
        "      	</bib>",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q1.xq"),
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
                "<bib><book year=\"1994\"><title>TCP/IP Illustrated</title></book><book year=\"1992\"><title>Advanced Programming in the Unix environment</title></book></bib>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<results> { \n"
        "      		for $b in /bib/book, $t in $b/title, $a in $b/author \n"
        "      		return <result> { $t } { $a } </result> } \n"
        "      	</results>",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q2.xq"),
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
                "<results><result><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author></result><result><title>Data on the Web</title><author><last>Buneman</last><first>Peter</first></author></result><result><title>Data on the Web</title><author><last>Suciu</last><first>Dan</first></author></result></results>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<results> { \n"
        "      		for $b in /bib/book \n"
        "      		return <result> { $b/title } { $b/author } </result> } \n"
        "      	</results>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q3.xq"),
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
                "<results><result><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></result><result><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author></result><result><title>The Economics of Technology and Content for Digital TV</title></result></results>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<results> { \n"
        "      		let $a := //author \n"
        "      		for $last in distinct-values($a/last), $first in distinct-values($a[last=$last]/first) \n"
        "      		order by $last, $first \n"
        "      		return <result> \n"
        "      				<author> <last>{ $last }</last> <first>{ $first }</first> </author> \n"
        "      				{ for $b in /bib/book \n"
        "      					where some $ba in $b/author satisfies ($ba/last = $last and $ba/first=$first) \n"
        "      					return $b/title } \n"
        "      			   </result> } \n"
        "      	</results>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q4.xq"),
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
                "<results><result><author><last>Abiteboul</last><first>Serge</first></author><title>Data on the Web</title></result><result><author><last>Buneman</last><first>Peter</first></author><title>Data on the Web</title></result><result><author><last>Stevens</last><first>W.</first></author><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title></result><result><author><last>Suciu</last><first>Dan</first></author><title>Data on the Web</title></result></results>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "<books-with-prices> { \n"
        "        for $b in $bib//book, $a in $reviews//entry \n"
        "        where $b/title = $a/title \n"
        "        return <book-with-prices> { $b/title } <price-bstore2>{ $a/price/text() }</price-bstore2> <price-bstore1>{ $b/price/text() }</price-bstore1> </book-with-prices> } </books-with-prices>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib-and-reviews', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q5.xq"),
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
                "<books-with-prices><book-with-prices><title>TCP/IP Illustrated</title><price-bstore2>65.95</price-bstore2><price-bstore1>65.95</price-bstore1></book-with-prices><book-with-prices><title>Advanced Programming in the Unix environment</title><price-bstore2>65.95</price-bstore2><price-bstore1>65.95</price-bstore1></book-with-prices><book-with-prices><title>Data on the Web</title><price-bstore2>34.95</price-bstore2><price-bstore1>39.95</price-bstore1></book-with-prices></books-with-prices>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<bib> { \n"
        "      		for $b in //book \n"
        "      		where count($b/author) > 0 \n"
        "      		return <book> \n"
        "      			{ $b/title } \n"
        "      			{ for $a in $b/author[position()<=2] return $a } \n"
        "      			{ if (count($b/author) > 2) then <et-al/> else () } \n"
        "      			</book> } \n"
        "      	</bib>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q6.xq"),
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
                "<bib><book><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><et-al/></book></bib>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<bib> { \n"
        "      		for $b in //book \n"
        "      		where $b/publisher = \"Addison-Wesley\" and $b/@year > 1991 \n"
        "      		order by exactly-one($b/title) \n"
        "      		return <book> { $b/@year } { $b/title } </book> } \n"
        "      	</bib>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q7.xq"),
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
                "<bib><book year=\"1992\"><title>Advanced Programming in the Unix environment</title></book><book year=\"1994\"><title>TCP/IP Illustrated</title></book></bib>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	for $b in //book \n"
        "      	let $e := $b/*[contains(string(.), \"Suciu\") and ends-with(local-name(.), \"or\")] \n"
        "      	where exists($e) \n"
        "      	return <book> { $b/title } { $e } </book>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q8.xq"),
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
                "<book><title>Data on the Web</title><author><last>Suciu</last><first>Dan</first></author></book>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<results> { \n"
        "      		for $t in //(chapter | section)/title \n"
        "      		where contains(exactly-one($t/text()), \"XML\") \n"
        "      		return $t } \n"
        "      	</results>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('books', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q9.xq"),
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
                "<results><title>XML</title><title>XML and Semistructured Data</title></results>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<results> { \n"
        "      		let $doc := (/) \n"
        "      		for $t in distinct-values($doc//book/title) \n"
        "      		let $p := $doc//book[title = $t]/price \n"
        "      		return <minprice title=\"{ $t }\"> <price>{ min($p) }</price> </minprice> } \n"
        "      	</results>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('prices', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q10.xq"),
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
                "<results><minprice title=\"Advanced Programming in the Unix environment\"><price>65.95</price></minprice><minprice title=\"TCP/IP Illustrated\"><price>65.95</price></minprice><minprice title=\"Data on the Web\"><price>34.95</price></minprice></results>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<bib> { \n"
        "      		for $b in //book[author] \n"
        "      		return <book> \n"
        "      			{ $b/title } { $b/author } </book> } \n"
        "      			{ for $b in //book[editor] \n"
        "      				return <reference> { $b/title } {$b/editor/affiliation} </reference> } \n"
        "      	</bib>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q11.xq"),
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
                "<bib><book><title>TCP/IP Illustrated</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Advanced Programming in the Unix environment</title><author><last>Stevens</last><first>W.</first></author></book><book><title>Data on the Web</title><author><last>Abiteboul</last><first>Serge</first></author><author><last>Buneman</last><first>Peter</first></author><author><last>Suciu</last><first>Dan</first></author></book><reference><title>The Economics of Technology and Content for Digital TV</title><affiliation>CITI</affiliation></reference></bib>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'xmp-queries-results-q12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      	<bib> { \n"
        "      		for $book1 in //book, $book2 in //book \n"
        "      		let $aut1 := \n"
        "      			for $a in $book1/author \n"
        "      			order by exactly-one($a/last), exactly-one($a/first) \n"
        "      			return $a \n"
        "      		let $aut2 := \n"
        "      			for $a in $book2/author \n"
        "      			order by exactly-one($a/last), exactly-one($a/first) \n"
        "      			return $a \n"
        "      		where $book1 << $book2 and not($book1/title = $book2/title) and deep-equal($aut1, $aut2) \n"
        "      		return <book-pair> { $book1/title } { $book2/title } </book-pair> } \n"
        "      	</bib>\n"
        "      ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bib', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "xmp-queries-results-q12.xq"),
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
                "<bib><book-pair><title>TCP/IP Illustrated</title><title>Advanced Programming in the Unix environment</title></book-pair></bib>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
