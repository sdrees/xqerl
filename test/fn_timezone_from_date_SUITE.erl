-module('fn_timezone_from_date_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['fn-timezone-from-date-1'/1]).
-export(['fn-timezone-from-date-2'/1]).
-export(['fn-timezone-from-date-3'/1]).
-export(['fn-timezone-from-date-4'/1]).
-export(['fn-timezone-from-date-5'/1]).
-export(['fn-timezone-from-date-6'/1]).
-export(['fn-timezone-from-date-7'/1]).
-export(['fn-timezone-from-date-8'/1]).
-export(['fn-timezone-from-date-9'/1]).
-export(['fn-timezone-from-date-10'/1]).
-export(['fn-timezone-from-date-11'/1]).
-export(['fn-timezone-from-date-12'/1]).
-export(['fn-timezone-from-date-13'/1]).
-export(['fn-timezone-from-date-14'/1]).
-export(['fn-timezone-from-date-15'/1]).
-export(['fn-timezone-from-date-16'/1]).
-export(['fn-timezone-from-date-17'/1]).
-export(['fn-timezone-from-date-18'/1]).
-export(['fn-timezone-from-date-19'/1]).
-export(['fn-timezone-from-date-20'/1]).
-export(['K-TimezoneFromDateFunc-1'/1]).
-export(['K-TimezoneFromDateFunc-2'/1]).
-export(['K-TimezoneFromDateFunc-3'/1]).
-export(['K-TimezoneFromDateFunc-4'/1]).
-export(['K-TimezoneFromDateFunc-5'/1]).
-export(['K-TimezoneFromDateFunc-6'/1]).
-export(['K-TimezoneFromDateFunc-7'/1]).
-export(['cbcl-timezone-from-date-001'/1]).
-export(['cbcl-timezone-from-date-002'/1]).
-export(['cbcl-timezone-from-date-003'/1]).
-export(['cbcl-timezone-from-date-004'/1]).
-export(['cbcl-timezone-from-date-005'/1]).
-export(['cbcl-timezone-from-date-006'/1]).
-export(['cbcl-timezone-from-date-007'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'fn-timezone-from-date-1',
   'fn-timezone-from-date-2',
   'fn-timezone-from-date-3',
   'fn-timezone-from-date-4',
   'fn-timezone-from-date-5',
   'fn-timezone-from-date-6',
   'fn-timezone-from-date-7',
   'fn-timezone-from-date-8',
   'fn-timezone-from-date-9',
   'fn-timezone-from-date-10',
   'fn-timezone-from-date-11',
   'fn-timezone-from-date-12',
   'fn-timezone-from-date-13',
   'fn-timezone-from-date-14',
   'fn-timezone-from-date-15',
   'fn-timezone-from-date-16',
   'fn-timezone-from-date-17',
   'fn-timezone-from-date-18',
   'fn-timezone-from-date-19',
   'fn-timezone-from-date-20',
   'K-TimezoneFromDateFunc-1',
   'K-TimezoneFromDateFunc-2',
   'K-TimezoneFromDateFunc-3',
   'K-TimezoneFromDateFunc-4',
   'K-TimezoneFromDateFunc-5',
   'K-TimezoneFromDateFunc-6',
   'K-TimezoneFromDateFunc-7',
   'cbcl-timezone-from-date-001',
   'cbcl-timezone-from-date-002',
   'cbcl-timezone-from-date-003',
   'cbcl-timezone-from-date-004',
   'cbcl-timezone-from-date-005',
   'cbcl-timezone-from-date-006',
   'cbcl-timezone-from-date-007'].
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
].
'fn-timezone-from-date-1'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1999-05-31-05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -PT5H\n      ",
   case xqerl_test:string_value(Res) of
             "-PT5H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-2'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"2000-06-12Z\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-3'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1999-12-31+05:00\")) lt fn:timezone-from-date(xs:date(\"1999-12-31+06:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-4'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1999-12-31+01:00\")) le fn:timezone-from-date(xs:date(\"1999-12-31+01:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-5'(_Config) ->
   Qry = "fn:count(fn:timezone-from-date(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         0\n      ",
   case xqerl_test:string_value(Res) of
             "0" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-6'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1999-05-31+00:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-7'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1999-12-31-00:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-8'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-01+08:00\")) + fn:timezone-from-date(xs:date(\"1970-01-01+03:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT11H\n      ",
   case xqerl_test:string_value(Res) of
             "PT11H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-9'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-01+09:00\")) - fn:timezone-from-date(xs:date(\"1970-01-01+10:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -PT1H\n      ",
   case xqerl_test:string_value(Res) of
             "-PT1H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-10'(_Config) ->
   Qry = "fn:not(fn:string(fn:timezone-from-date(xs:date(\"1970-01-03+02:00\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-11'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-02+10:00\")) div fn:timezone-from-date(xs:date(\"1970-01-01+05:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         2\n      ",
   case xqerl_test:string_value(Res) of
             "2" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-12'(_Config) ->
   Qry = "fn:number(fn:timezone-from-date(xs:date(\"1970-01-02+10:00\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         NaN\n      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-13'(_Config) ->
   Qry = "fn:boolean(fn:string(fn:timezone-from-date(xs:date(\"1970-01-02+10:00\"))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-14'(_Config) ->
   Qry = "fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'fn-timezone-from-date-15'(_Config) ->
   Qry = "fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\"))) and fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-16'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-02+10:00\")) eq fn:timezone-from-date(xs:date(\"1970-01-01+10:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-17'(_Config) ->
   Qry = "fn:month-from-date(xs:date(\"1970-01-01+05:00\")) ne fn:month-from-date(xs:date(\"1970-01-03+03:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-18'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-01+04:00\")) le fn:timezone-from-date(xs:date(\"1970-01-02+02:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-19'(_Config) ->
   Qry = "fn:timezone-from-date(xs:date(\"1970-01-03+02:00\")) ge fn:timezone-from-date(xs:date(\"1970-01-01+01:00\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'fn-timezone-from-date-20'(_Config) ->
   Qry = "fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\"))) or fn:string(fn:timezone-from-date(xs:date(\"1970-01-01Z\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimezoneFromDateFunc-1'(_Config) ->
   Qry = "timezone-from-date()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TimezoneFromDateFunc-2'(_Config) ->
   Qry = "timezone-from-date((), \"Wrong param\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0017" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0017'}) end.
'K-TimezoneFromDateFunc-3'(_Config) ->
   Qry = "empty(timezone-from-date(()))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimezoneFromDateFunc-4'(_Config) ->
   Qry = "timezone-from-date(()) instance of xs:dayTimeDuration?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimezoneFromDateFunc-5'(_Config) ->
   Qry = "timezone-from-date(xs:date(\"2004-10-12Z\")) eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimezoneFromDateFunc-6'(_Config) ->
   Qry = "timezone-from-date(xs:date(\"2004-10-12-08:23\")) eq xs:dayTimeDuration(\"-PT8H23M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-TimezoneFromDateFunc-7'(_Config) ->
   Qry = "empty(timezone-from-date(xs:date(\"2004-10-12\")))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-timezone-from-date-001'(_Config) ->
   Qry = "\n      timezone-from-date(adjust-date-to-timezone(xs:date(\"1997-01-01\"))) = implicit-timezone()\n   ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-timezone-from-date-002'(_Config) ->
   Qry = "\n        declare function local:timezone($arg as xs:integer) { if ($arg gt 0) then xs:dayTimeDuration(concat('PT', $arg, 'H')) else if ($arg lt 0) then xs:dayTimeDuration(concat('-PT', -$arg, 'H')) else xs:dayTimeDuration('PT0H') };\n        timezone-from-date( adjust-date-to-timezone( fn:current-date(), local:timezone(15)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0003" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0003'}) end.
'cbcl-timezone-from-date-003'(_Config) ->
   Qry = "\n        declare function local:timezone($arg as xs:integer) { if ($arg gt 0) then xs:dayTimeDuration(concat('PT', $arg, 'H')) else if ($arg lt 0) then xs:dayTimeDuration(concat('-PT', -$arg, 'H')) else xs:dayTimeDuration('PT0H') };\n        timezone-from-date( adjust-date-to-timezone( fn:current-date(), local:timezone(14)))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT14H\n      ",
   case xqerl_test:string_value(Res) of
             "PT14H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-timezone-from-date-004'(_Config) ->
   Qry = "\n        declare function local:timezone($arg as xs:integer) { if ($arg gt 0) then xs:dayTimeDuration(concat('PT', $arg, 'H')) else if ($arg lt 0) then xs:dayTimeDuration(concat('-PT', -$arg, 'H')) else xs:dayTimeDuration('PT0H') };\n        timezone-from-date( adjust-date-to-timezone( fn:current-date(), timezone-from-date( adjust-date-to-timezone( xs:date('1970-01-01'), local:timezone(-12)))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -PT12H\n      ",
   case xqerl_test:string_value(Res) of
             "-PT12H" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-timezone-from-date-005'(_Config) ->
   Qry = "\n        declare function local:date($arg as xs:boolean) { if ($arg) then xs:date('1970-01-01Z') else fn:current-date() };\n        timezone-from-date( adjust-date-to-timezone( xs:date('2008-08-01'), timezone-from-date(local:date(true()))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-timezone-from-date-006'(_Config) ->
   Qry = "\n        declare function local:dateTime($arg as xs:boolean) { if ($arg) then xs:dateTime('1970-01-01T00:00:00Z') else fn:current-dateTime() };\n        timezone-from-date( adjust-date-to-timezone( xs:date('2008-08-01'), timezone-from-dateTime(local:dateTime(true()))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-timezone-from-date-007'(_Config) ->
   Qry = "\n        declare function local:time($arg as xs:boolean) { if ($arg) then xs:time('12:00:00Z') else fn:current-time() };\n        timezone-from-date( adjust-date-to-timezone( xs:date('2008-08-01'), timezone-from-time(local:time(true()))))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
