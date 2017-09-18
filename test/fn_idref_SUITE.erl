-module('fn_idref_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-idref-1'/1]).
-export(['fn-idref-2'/1]).
-export(['fn-idref-3'/1]).
-export(['fn-idref-4'/1]).
-export(['fn-idref-dtd-5'/1]).
-export(['fn-idref-dtd-6'/1]).
-export(['fn-idref-dtd-7'/1]).
-export(['fn-idref-dtd-8'/1]).
-export(['fn-idref-dtd-9'/1]).
-export(['fn-idref-dtd-10'/1]).
-export(['fn-idref-dtd-11'/1]).
-export(['fn-idref-dtd-12'/1]).
-export(['fn-idref-dtd-13'/1]).
-export(['fn-idref-dtd-14'/1]).
-export(['fn-idref-dtd-15'/1]).
-export(['fn-idref-dtd-16'/1]).
-export(['fn-idref-dtd-17'/1]).
-export(['fn-idref-dtd-18'/1]).
-export(['fn-idref-dtd-19'/1]).
-export(['fn-idref-dtd-20'/1]).
-export(['fn-idref-dtd-21'/1]).
-export(['fn-idref-22'/1]).
-export(['fn-idref-dtd-23'/1]).
-export(['fn-idref-dtd-24'/1]).
-export(['fn-idref-dtd-25'/1]).
-export(['K2-SeqIDREFFunc-1'/1]).
-export(['K2-SeqIDREFFunc-2'/1]).
-export(['K2-SeqIDREFFunc-3'/1]).
-export(['cbcl-idref-001'/1]).
-export(['cbcl-idref-002'/1]).
-export(['cbcl-idref-003'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
, try  xqerl:compile("C:/git/zadean/xqerl/test/QT3_1_0/fn/id/copy.xq") catch _:_ -> ok end,Config.
all() -> [
   'fn-idref-1',
   'fn-idref-2',
   'fn-idref-3',
   'fn-idref-4',
   'fn-idref-dtd-5',
   'fn-idref-dtd-6',
   'fn-idref-dtd-7',
   'fn-idref-dtd-8',
   'fn-idref-dtd-9',
   'fn-idref-dtd-10',
   'fn-idref-dtd-11',
   'fn-idref-dtd-12',
   'fn-idref-dtd-13',
   'fn-idref-dtd-14',
   'fn-idref-dtd-15',
   'fn-idref-dtd-16',
   'fn-idref-dtd-17',
   'fn-idref-dtd-18',
   'fn-idref-dtd-19',
   'fn-idref-dtd-20',
   'fn-idref-dtd-21',
   'fn-idref-22',
   'fn-idref-dtd-23',
   'fn-idref-dtd-24',
   'fn-idref-dtd-25',
   'K2-SeqIDREFFunc-1',
   'K2-SeqIDREFFunc-2',
   'K2-SeqIDREFFunc-3',
   'cbcl-idref-001',
   'cbcl-idref-002',
   'cbcl-idref-003'].
environment('empty') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('atomic') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/XQueryTest","atomic"}]},
{resources, []},
{modules, []}
];
environment('atomic-xq') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xml",".","http://www.w3.org/fots/docs/atomic.xml"}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/atomic.xsd","http://www.w3.org/XQueryTest"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-mod') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works-mod.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('works-and-staff') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/works.xml","$works",""},
{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/staff.xml","$staff",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('auction') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/auction.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/AuctionWatch","ma"},
{"http://www.w3.org/1999/xlink","xlink"},
{"http://www.example.com/auctioneers#anyzone","anyzone"},
{"http://www.example.com/auctioneers#eachbay","eachbay"},
{"http://www.example.com/auctioneers#yabadoo","yabadoo"}]},
{resources, []},
{modules, []}
];
environment('qname') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-source.xml",".",""}]},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/docs/QName-schema.xsd","http://www.example.com/QNameXSD"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.example.com/QNameXSD",""}]},
{resources, []},
{modules, []}
];
environment('math') ->
[{sources, []},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, [{"http://www.w3.org/2005/xpath-functions/math","math"}]},
{resources, []},
{modules, []}
];
environment('id-idref-dtd') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/fn/id/iddtd.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('functx_book') ->
[{sources, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/app/FunctxFn/functx_book.xml",".",""}]},
{schemas, []},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'fn-idref-1'(_Config) ->
   Qry = "fn:idref(\"argument 1\", / ,\"Argument 3\")",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'fn-idref-2'(_Config) ->
   Qry = "(1 to 10)[fn:idref(\"argument1\")]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-idref-3'(_Config) ->
   Qry = "fn:idref(\"argument1\", \"A\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'fn-idref-4'(_Config) ->
   Qry = "\n        import module namespace copy=\"http://www.w3.org/QT3/copy\";\n        let $var := copy:copy(/*) return fn:idref(\"argument1\", $var)\n      ",
   Env = xqerl_test:handle_environment(environment('works-mod')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODC0001" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODC0001'}) end.
'fn-idref-dtd-5'(_Config) ->
   Qry = "fn:idref(\"id1\",/IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-6'(_Config) ->
   Qry = "fn:idref(\"nomatchingid\", /IDS[1])",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:is_sequence(Res) andalso xqerl_seq2:is_empty(Res) of true -> {comment, "Is empty"};
           Q -> ct:fail({Res,Exp,Q}) end.
'fn-idref-dtd-7'(_Config) ->
   Qry = "fn:idref(\"id4\", /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-4\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-8'(_Config) ->
   Qry = "<results>{fn:idref((\"id1\", \"id2\"), /IDS[1])}</results>",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XQDY0025" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XQDY0025'}) end.
'fn-idref-dtd-9'(_Config) ->
   Qry = "fn:idref((\"id1\", \"nomatching\"), /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-10'(_Config) ->
   Qry = "fn:count(fn:idref(\"nomatching1 nomatching2\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
 Tst = xqerl:run("0"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-idref-dtd-11'(_Config) ->
   Qry = "fn:count(fn:idref(\"\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-12'(_Config) ->
   Qry = "fn:node-name(fn:idref(\"id2\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         anIdRef\n      ",
   case xqerl_test:string_value(Res) of
             "anIdRef" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-13'(_Config) ->
   Qry = "(fn:idref(\"id1\", /IDS[1])) is (fn:idref(\"id1\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-idref-dtd-14'(_Config) ->
   Qry = "(fn:idref(\"id1\", /IDS[1])) is (fn:idref(\"id2\", /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-idref-dtd-15'(_Config) ->
   Qry = "count(fn:idref((\"id1\",\"id1\"), /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-idref-dtd-16'(_Config) ->
   Qry = "count(fn:idref((\"id1\",\"ID1\"), /IDS[1]))",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
 Tst = xqerl:run("1"),
  ResVal = xqerl_types:value(Res),
  TstVal = xqerl_types:value(Tst),
  if ResVal == TstVal -> {comment, "assert-eq"};
    true -> ct:fail({Res,Exp}) end.
'fn-idref-dtd-17'(_Config) ->
   Qry = "fn:idref(fn:lower-case(\"ID1\"), /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-18'(_Config) ->
   Qry = "fn:idref(fn:upper-case(\"id5\"), /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-6\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-6" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-19'(_Config) ->
   Qry = "fn:idref(fn:concat(\"i\",\"d1\"), /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-20'(_Config) ->
   Qry = "fn:idref(xs:string(\"id1\"), /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-dtd-21'(_Config) ->
   Qry = "fn:idref(fn:string-join((\"id\",\"1\"),\"\"), /IDS[1])/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-idref-22'(_Config) ->
   Qry = "fn:idref(\"argument1\",.)",
   Env = xqerl_test:handle_environment(environment('empty')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPDY0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPDY0002'}) end.
'fn-idref-dtd-23'(_Config) ->
   Qry = "declare ordering ordered;  \n        <results>{fn:idref(\"id4\", /IDS[1])}</results>",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <results anIdRef=\"id4\"/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<results anIdRef=\"id4\"/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<results anIdRef=\"id4\"/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-idref-dtd-24'(_Config) ->
   Qry = "<results>{fn:idref(\"language\", /)}</results>",
   Env = xqerl_test:handle_environment(environment('functx_book')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <results refs='context language'/>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<results refs='context language'/>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<results refs='context language'/>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'fn-idref-dtd-25'(_Config) ->
   Qry = "fn:idref(\"id1\")/name(..)",
   Env = xqerl_test:handle_environment(environment('id-idref-dtd')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         elementwithidrefattr-1\n      ",
   case xqerl_test:string_value(Res) of
             "elementwithidrefattr-1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-SeqIDREFFunc-1'(_Config) ->
   Qry = "idref((), ())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqIDREFFunc-2'(_Config) ->
   Qry = "(1, 2, 3)[idref(\"ncname\", .)]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'K2-SeqIDREFFunc-3'(_Config) ->
   Qry = "(1, 2, 3)[idref(\"ncname\")]",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-idref-001'(_Config) ->
   Qry = "\n      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; \n      	let $doc := document { <root /> } return fn:empty( fn:idref( local:generate(0), $doc) )\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-idref-002'(_Config) ->
   Qry = "\n      	let $doc := document { <root /> } return fn:empty( fn:idref( (), $doc) )\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0005") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'cbcl-idref-003'(_Config) ->
   Qry = "\n      	declare function local:generate($arg as xs:integer?) as xs:string* { if ($arg = 0) then () else 'id1', 'id2' }; \n      	let $doc := document { <root /> } return fn:empty( $doc/fn:idref( local:generate(0)) )\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
