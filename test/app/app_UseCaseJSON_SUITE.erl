-module('app_UseCaseJSON_SUITE').

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

-export(['UseCaseJSON-001'/1]).
-export(['UseCaseJSON-002'/1]).
-export(['UseCaseJSON-003'/1]).
-export(['UseCaseJSON-004'/1]).
-export(['UseCaseJSON-005'/1]).
-export(['UseCaseJSON-006'/1]).
-export(['UseCaseJSON-007'/1]).
-export(['UseCaseJSON-008'/1]).
-export(['UseCaseJSON-009'/1]).
-export(['UseCaseJSON-010'/1]).
-export(['UseCaseJSON-011'/1]).
-export(['UseCaseJSON-012'/1]).
-export(['UseCaseJSON-014'/1]).

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
            'UseCaseJSON-001',
            'UseCaseJSON-002',
            'UseCaseJSON-003',
            'UseCaseJSON-004',
            'UseCaseJSON-005',
            'UseCaseJSON-006',
            'UseCaseJSON-007',
            'UseCaseJSON-008',
            'UseCaseJSON-009',
            'UseCaseJSON-010',
            'UseCaseJSON-011',
            'UseCaseJSON-012',
            'UseCaseJSON-014'
        ]}
    ].

environment('mildred.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/mildred.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "mildred.json"))}
        ]},
        {modules, []}
    ];
environment('employees.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/employees.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "employees.json"))}
        ]},
        {modules, []}
    ];
environment('bookinfo.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/bookinfo.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "bookinfo.json"))}
        ]},
        {modules, []}
    ];
environment('users.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/users.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "users.json"))}
        ]},
        {modules, []}
    ];
environment('sales.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/stores.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "stores.json"))},
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/products.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "products.json"))},
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/sales.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "sales.json"))}
        ]},
        {modules, []}
    ];
environment('satellites.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/map", "map"}]},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/satellites.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "satellites.json"))}
        ]},
        {modules, []}
    ];
environment('colors.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/colors.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "colors.json"))}
        ]},
        {modules, []}
    ];
environment('incoming.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/2005/xpath-functions/map", "map"}]},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/incoming.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "incoming.json"))}
        ]},
        {modules, []}
    ];
environment('table.json', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, [
            {"application/json", filename:join(__BaseDir, "UseCaseJSON/table.json"),
                xqldb_lib:filename_to_uri(filename:join(__BaseDir, "table.json"))}
        ]},
        {modules, []}
    ];
environment('Wikipedia-Origami.xml', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "UseCaseJSON/Wikipedia-Origami.xml"), ".",
                "http://www.w3.org/2010/09/qt-fots-catalog/UseCaseJSON/Wikipedia-Origami.xml"}
        ]},
        {collections, []},
        {'static-base-uri', [{"http://www.w3.org/2010/09/qt-fots-catalog/UseCaseJSON/"}]},
        {params, []},
        {vars, [{"uri", "xs:string", "'Wikipedia-Origami.xml'"}]},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'UseCaseJSON-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "json-doc(\"mildred.json\")?phone?*[?type = 'mobile']?number",
    {Env, Opts} = xqerl_test:handle_environment(environment('mildred.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-001.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "07356 740756") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";\n"
        "        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "        let $input := json-doc('employees.json')\n"
        "				for $k in map:keys($input)\n"
        "				return \n"
        "				  <department name=\"{$k}\">{\n"
        "				    let $array := $input($k)\n"
        "				    for $i in 1 to array:size($array)\n"
        "				    let $emp := $array($i)\n"
        "				    return\n"
        "				      <employee>\n"
        "				        <firstName>{ $emp('firstName') }</firstName>\n"
        "				        <lastName>{ $emp('lastName') }</lastName>\n"
        "				        <age>{ $emp('age') }</age>\n"
        "				      </employee>\n"
        "				  }</department>		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('employees.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-002.xq"), Qry1),
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
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<department name=\"accounting\"><employee><firstName>John</firstName><lastName>Doe</lastName><age>23</age></employee><employee><firstName>Mary</firstName><lastName>Smith</lastName><age>32</age></employee></department><department name=\"sales\"><employee><firstName>Sally</firstName><lastName>Green</lastName><age>27</age></employee><employee><firstName>Jim</firstName><lastName>Galley</lastName><age>41</age></employee></department>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_xml(
                            Res,
                            "<department name=\"sales\"><employee><firstName>Sally</firstName><lastName>Green</lastName><age>27</age></employee><employee><firstName>Jim</firstName><lastName>Galley</lastName><age>41</age></employee></department><department name=\"accounting\"><employee><firstName>John</firstName><lastName>Doe</lastName><age>23</age></employee><employee><firstName>Mary</firstName><lastName>Smith</lastName><age>32</age></employee></department>"
                        )
                    of
                        true -> {comment, "XML Deep equal"};
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

'UseCaseJSON-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "				declare function local:deep-put($input as item()*, $key as xs:string, $value as item()*) as item()* {\n"
        "				   for $i in $input return\n"
        "				     if ($i instance of map(*))\n"
        "				     then map:merge(map:for-each($i, function($k, $v) {\n"
        "				                                             if ($k eq $key) then map{$k : $value} else map{$k : local:deep-put($v, $key, $value)} }))\n"
        "				      else if ($i instance of array(*))\n"
        "				     then array{ local:deep-put($i?*, $key, $value) }\n"
        "				      else $i\n"
        "				};\n"
        "				local:deep-put(json-doc(\"bookinfo.json\"), \"first\", \"John\")		  \n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('bookinfo.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-003.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map {\"book\" : map {\"title\" : \"Data on the Web\", \"year\" : 2000, \"author\" : [map {\"last\" : \"Abiteboul\", \"first\" : \"John\"}, map {\"last\" : \"Buneman\", \"first\" : \"John\"}, map {\"last\" : \"Suciu\", \"first\" : \"John\"}], \"publisher\" : \"Morgan Kaufmann Publishers\", \"price\" : 39.95}}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $users := json-doc('users.json')?*\n"
        "        for $sarah in $users, $friend in $users\n"
        "        where $sarah?name = \"Sarah\" and $friend?name = $sarah?friends \n"
        "        return $friend?name\n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('users.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-004.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "Jim") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "        let $products := json-doc('sales.json')?*\n"
        "        return map:merge((\n"
        "          for $sales in $products\n"
        "          let $pname := $sales?product\n"
        "          group by $pname\n"
        "          return map { $pname : sum(for $s in $sales return $s?quantity) }\n"
        "        ))    \n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('sales.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-005.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map { \"broiler\" : 20, \"toaster\" : 200, \"blender\" : 250, \"socks\" : 510, \"shirt\" : 10 }"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace map=\"http://www.w3.org/2005/xpath-functions/map\";\n"
        "				array {\n"
        "				  for $store in json-doc('stores.json')?*\n"
        "				  let $state := $store?state\n"
        "				  group by $state\n"
        "				  order by $state\n"
        "				  return\n"
        "				    map {\n"
        "				      $state :  array {\n"
        "				        for $product in json-doc('products.json')?*\n"
        "				        let $category := $product?category\n"
        "				        group by $category\n"
        "				        order by $category\n"
        "				        return\n"
        "				          map {\n"
        "				            $category :  map:merge((\n"
        "				              for $sales in json-doc('sales.json')?*\n"
        "				              where $sales?(\"store number\") = $store?(\"store number\") and $sales?product = $product?name\n"
        "				              let $pname := $sales?product\n"
        "				              group by $pname\n"
        "				              order by $pname\n"
        "				              return map { $pname :  sum(for $s in $sales return $s?quantity)}\n"
        "				            ))\n"
        "				          }\n"
        "				      }\n"
        "				   }\n"
        "				}\n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('sales.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-006.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[map { \"CA\" : [ map { \"clothes\" : map { \"socks\" : 510 }}, map { \"kitchen\" : map { \"broiler\" : 20, \"toaster\" : 150 }} ] }, map { \"MA\" : [ map { \"clothes\" : map { \"shirt\" : 10 }}, map { \"kitchen\" : map { \"toaster\" : 50, \"blender\" : 250 }}]}]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $sats := json-doc(\"satellites.json\")(\"satellites\")\n"
        "        return map { \"visible\" : array { map:keys($sats)[$sats(.)(\"visible\")] }, \"invisible\" : array { map:keys($sats)[not($sats(.)(\"visible\"))] } }\n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('satellites.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-007.xq"), Qry1),
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
                    case
                        xqerl_test:assert_deep_eq(
                            Res,
                            "map { \"visible\" : [ \"AJISAI (EGS)\", \"AKARI (ASTRO-F)\" ], \"invisible\" : [ \"AAU CUBESAT\" ] }"
                        )
                    of
                        true -> {comment, "Deep equal"};
                        {false, F} -> F
                    end,
                    case
                        xqerl_test:assert_deep_eq(
                            Res,
                            "map { \"visible\" : [ \"AKARI (ASTRO-F)\" , \"AJISAI (EGS)\"], \"invisible\" : [ \"AAU CUBESAT\" ] }"
                        )
                    of
                        true -> {comment, "Deep equal"};
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

'UseCaseJSON-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        array {\n"
        "          for $page in doc($uri)//page\n"
        "          return map {\n"
        "                  \"title\": string($page/title),\n"
        "                  \"id\" : string($page/id),\n"
        "                  \"last updated\" : string($page/revision[1]/timestamp),\n"
        "                  \"authors\" : array { for $a in $page/revision/contributor/username return string($a) }\n"
        "                 }               \n"
        "         }     \n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('Wikipedia-Origami.xml', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-008.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[map {\"title\" : \"Kawasaki's theorem\", \"id\" : \"14511776\", \"last updated\" : \"2011-06-21T20:08:56Z\", \"authors\" : [\"Some jerk on the Internet\"]}, map {\"title\" : \"Origami techniques\", \"id\" : \"193590\", \"last updated\" : \"2011-08-31T17:21:49Z\", \"authors\" : [\"Dmcq\"]}, map {\"title\" : \"Mathematics of paper folding\", \"id\" : \"232840\", \"last updated\" : \"2011-07-23T09:10:42Z\", \"authors\" : [\"Tabletop\"]}]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "   \n"
        "        declare namespace array=\"http://www.w3.org/2005/xpath-functions/array\";\n"
        "        declare variable $data := map {\n"
        "          \"color\" : \"blue\",\n"
        "          \"closed\" : true(),\n"
        "          \"points\" : [[10,10], [20,10], [20,20], [10,20]]\n"
        "        };      \n"
        "        declare variable $stroke := attribute stroke { $data(\"color\") };\n"
        "        declare variable $points := attribute points { array:flatten($data(\"points\")) };\n"
        "        if ($data(\"closed\")) then <svg><polygon>{ $stroke, $points }</polygon></svg>\n"
        "         else <svg><polyline>{ $stroke, $points }</polyline></svg>\n"
        "		  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-009.xq"), Qry1),
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
                "<svg><polygon stroke=\"blue\" points=\"10 10 20 10 20 20 10 20\"/></svg>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <html>\n"
        "				  <body>				\n"
        "				    <table>\n"
        "				      <tr> \n"
        "				         { (: Column headings :) \n"
        "				            <th> </th>,\n"
        "				            for $th in json-doc(\"table.json\")(\"col labels\")?*\n"
        "				            return <th>{ $th }</th>\n"
        "				         }\n"
        "				      </tr>\n"
        "				      {  (: Data for each row :)\n"
        "				         for $r at $i in json-doc(\"table.json\")(\"data\")?*\n"
        "				         return\n"
        "				            <tr>\n"
        "				             {\n"
        "				               <th>{ json-doc(\"table.json\")(\"row labels\")[$i] }</th>,\n"
        "				               for $c in $r?*\n"
        "				               return <td>{ $c }</td>\n"
        "				             }\n"
        "				            </tr>\n"
        "				      }\n"
        "				    </table>				\n"
        "				  </body>\n"
        "				</html>   \n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('table.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-010.xq"), Qry1),
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
                "<html><body><table><tr><th/><th>singular</th><th>plural</th></tr><tr><th>1p 2p 3p</th><td>spinne</td><td>spinnen</td></tr><tr><th/><td>spinnst</td><td>spinnt</td></tr><tr><th/><td>spinnt</td><td>spinnen</td></tr></table></body></html>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        <table>{\n"
        "          for tumbling window $w in json-doc(\"colors.json\")?*\n"
        "          start at $x when fn:true()\n"
        "          end at $y when $y - $x = 2\n"
        "          return\n"
        "            <tr>{ for $i in $w return <td>{ $i?color }</td> }</tr>\n"
        "         }</table>\n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('colors.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-011.xq"), Qry1),
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
                "<table><tr><td>Green</td><td>Pink</td><td>Lilac</td></tr><tr><td>Turquoise</td><td>Peach</td><td>Opal</td></tr><tr><td>Champagne</td></tr></table>"
            )
        of
            true -> {comment, "XML Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        let $users := [map { \"userid\" : \"W0342\", \"firstname\" : \"Walter\", \"lastname\" : \"Denisovich\" }, map { \"userid\" : \"M0535\", \"firstname\" : \"Mick\", \"lastname\" : \"Goulish\" }]?* \n"
        "        let $holdings := [map { \"userid\" : \"W0342\", \"ticker\" : \"DIS\", \"shares\" : 153212312 }, map { \"userid\" : \"M0535\", \"ticker\" : \"DIS\", \"shares\" : 10 }, map { \"userid\" : \"M0535\", \"ticker\" : \"AIG\", \"shares\" : 23412 }]?*   \n"
        "        return array {\n"
        "          for $u in $users\n"
        "          order by $u(\"userid\")\n"
        "          return map { \"userid\" : $u(\"userid\"), \n"
        "                       \"first\" :  $u(\"firstname\"), \n"
        "                       \"last\" :   $u(\"lastname\"), \n"
        "                       \"holdings\" : array {\n"
        "                          for $h in $holdings\n"
        "                          where $h(\"userid\") = $u(\"userid\")\n"
        "                          order by $h(\"ticker\")\n"
        "									        return map { \"ticker\" : $h(\"ticker\"), \"share\" : $h(\"shares\") }\n"
        "										    }\n"
        "                 }\n"
        "        }       \n"
        "		  ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "[map {\"userid\" : \"M0535\", \"first\" : \"Mick\", \"last\" : \"Goulish\", \"holdings\" : [map {\"ticker\" : \"AIG\", \"share\" : 23412}, map {\"ticker\" : \"DIS\", \"share\" : 10}]}, map {\"userid\" : \"W0342\", \"first\" : \"Walter\", \"last\" : \"Denisovich\", \"holdings\" : [map {\"ticker\" : \"DIS\", \"share\" : 153212312}]}]"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'UseCaseJSON-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "				let $feed := json-doc(\"incoming.json\")(\"feed\")\n"
        "				  , $entry := $feed(\"entry\")\n"
        "				return\n"
        "				if ($entry?*(\"app$control\")(\"yt$state\")(\"name\") = \"restricted\")\n"
        "				  then map:remove($feed, \"entry\")\n"
        "				  else $feed\n"
        "		  ",
    {Env, Opts} = xqerl_test:handle_environment(environment('incoming.json', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "UseCaseJSON-014.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "map {\"author\" : [map {\"name\" : map {\"$t\" : \"YouTube\"}, \"uri\" : map {\"$t\" : \"http://www.youtube.com/\"}}], \"category\" : [map {\"scheme\" : \"http://schemas.google.com/g/2005#kind\", \"term\" : \"http://gdata.youtube.com/schemas/2007#video\"}]}"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
