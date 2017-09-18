-module('op_multiply_dayTimeDuration_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-multiply-dayTimeDuration2args-1'/1]).
-export(['op-multiply-dayTimeDuration2args-2'/1]).
-export(['op-multiply-dayTimeDuration2args-3'/1]).
-export(['op-multiply-dayTimeDuration2args-4'/1]).
-export(['op-multiply-dayTimeDuration2args-5'/1]).
-export(['op-multiply-dayTimeDuration-1'/1]).
-export(['op-multiply-dayTimeDuration-2'/1]).
-export(['op-multiply-dayTimeDuration-3'/1]).
-export(['op-multiply-dayTimeDuration-4'/1]).
-export(['op-multiply-dayTimeDuration-5'/1]).
-export(['op-multiply-dayTimeDuration-6'/1]).
-export(['op-multiply-dayTimeDuration-7'/1]).
-export(['op-multiply-dayTimeDuration-8'/1]).
-export(['op-multiply-dayTimeDuration-9'/1]).
-export(['op-multiply-dayTimeDuration-10'/1]).
-export(['op-multiply-dayTimeDuration-11'/1]).
-export(['op-multiply-dayTimeDuration-12'/1]).
-export(['op-multiply-dayTimeDuration-13'/1]).
-export(['op-multiply-dayTimeDuration-14'/1]).
-export(['op-multiply-dayTimeDuration-15'/1]).
-export(['op-multiply-dayTimeDuration-16'/1]).
-export(['op-multiply-dayTimeDuration-17'/1]).
-export(['op-multiply-dayTimeDuration-18'/1]).
-export(['K-DayTimeDurationMultiply-1'/1]).
-export(['K-DayTimeDurationMultiply-2'/1]).
-export(['K-DayTimeDurationMultiply-3'/1]).
-export(['K-DayTimeDurationMultiply-4'/1]).
-export(['K-DayTimeDurationMultiply-5'/1]).
-export(['K-DayTimeDurationMultiply-6'/1]).
-export(['K-DayTimeDurationMultiply-7'/1]).
-export(['K-DayTimeDurationMultiply-8'/1]).
-export(['K-DayTimeDurationMultiply-9'/1]).
-export(['cbcl-multiply-dayTimeDuration-001'/1]).
-export(['cbcl-multiply-dayTimeDuration-002'/1]).
-export(['cbcl-multiply-dayTimeDuration-003'/1]).
-export(['cbcl-multiply-dayTimeDuration-004'/1]).
-export(['cbcl-multiply-dayTimeDuration-005'/1]).
-export(['cbcl-multiply-dayTimeDuration-006'/1]).
-export(['cbcl-times-001'/1]).
-export(['cbcl-times-002'/1]).
-export(['cbcl-times-003'/1]).
-export(['cbcl-times-004'/1]).
-export(['cbcl-times-005'/1]).
-export(['cbcl-times-006'/1]).
-export(['cbcl-times-007'/1]).
-export(['cbcl-times-008'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-multiply-dayTimeDuration2args-1',
   'op-multiply-dayTimeDuration2args-2',
   'op-multiply-dayTimeDuration2args-3',
   'op-multiply-dayTimeDuration2args-4',
   'op-multiply-dayTimeDuration2args-5',
   'op-multiply-dayTimeDuration-1',
   'op-multiply-dayTimeDuration-2',
   'op-multiply-dayTimeDuration-3',
   'op-multiply-dayTimeDuration-4',
   'op-multiply-dayTimeDuration-5',
   'op-multiply-dayTimeDuration-6',
   'op-multiply-dayTimeDuration-7',
   'op-multiply-dayTimeDuration-8',
   'op-multiply-dayTimeDuration-9',
   'op-multiply-dayTimeDuration-10',
   'op-multiply-dayTimeDuration-11',
   'op-multiply-dayTimeDuration-12',
   'op-multiply-dayTimeDuration-13',
   'op-multiply-dayTimeDuration-14',
   'op-multiply-dayTimeDuration-15',
   'op-multiply-dayTimeDuration-16',
   'op-multiply-dayTimeDuration-17',
   'op-multiply-dayTimeDuration-18',
   'K-DayTimeDurationMultiply-1',
   'K-DayTimeDurationMultiply-2',
   'K-DayTimeDurationMultiply-3',
   'K-DayTimeDurationMultiply-4',
   'K-DayTimeDurationMultiply-5',
   'K-DayTimeDurationMultiply-6',
   'K-DayTimeDurationMultiply-7',
   'K-DayTimeDurationMultiply-8',
   'K-DayTimeDurationMultiply-9',
   'cbcl-multiply-dayTimeDuration-001',
   'cbcl-multiply-dayTimeDuration-002',
   'cbcl-multiply-dayTimeDuration-003',
   'cbcl-multiply-dayTimeDuration-004',
   'cbcl-multiply-dayTimeDuration-005',
   'cbcl-multiply-dayTimeDuration-006',
   'cbcl-times-001',
   'cbcl-times-002',
   'cbcl-times-003',
   'cbcl-times-004',
   'cbcl-times-005',
   'cbcl-times-006',
   'cbcl-times-007',
   'cbcl-times-008'].
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
'op-multiply-dayTimeDuration2args-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") * xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration2args-2'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P15DT11H59M59S\") * xs:double(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration2args-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P31DT23H59M59S\") * xs:double(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration2args-4'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") * xs:double(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration2args-5'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P0DT0H0M0S\") * xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"PT2H10M\") * 2.1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT4H33M\n      ",
   case xqerl_test:string_value(Res) of
             "PT4H33M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-2'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT10H11M\")) * 2.0) and fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-3'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P20DT20H10M\") * 2.0)) or fn:false()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-4'(_Config) ->
   Qry = "fn:not(fn:string(xs:dayTimeDuration(\"P11DT12H04M\") * 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-5'(_Config) ->
   Qry = "fn:boolean(fn:string(xs:dayTimeDuration(\"P05DT09H08M\") *2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-6'(_Config) ->
   Qry = "fn:number(xs:dayTimeDuration(\"P02DT06H09M\") *2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         NaN\n      ",
   case xqerl_test:string_value(Res) of
             "NaN" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-7'(_Config) ->
   Qry = "fn:string(xs:dayTimeDuration(\"P03DT04H08M\") * 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P6DT8H16M\n      ",
   case xqerl_test:string_value(Res) of
             "P6DT8H16M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-8'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P10DT01H01M\") * -2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         -P20DT2H2M\n      ",
   case xqerl_test:string_value(Res) of
             "-P20DT2H2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-9'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P01DT02H01M\") * 2.0)) and fn:string((xs:dayTimeDuration(\"P02DT03H03M\") * 2.0 ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-10'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P05DT09H02M\") * 2.0)) or fn:string((xs:dayTimeDuration(\"P05DT05H03M\") * 2.0))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-11'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P42DT10H10M\") * 2.0) div (xs:dayTimeDuration(\"P42DT10H10M\") * 2.0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-12'(_Config) ->
   Qry = "fn:string((xs:dayTimeDuration(\"P10DT08H11M\") * 2.0)) and (fn:true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-13'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P23DT11H11M\") * 2.0) eq xs:dayTimeDuration(\"P23DT11H11M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-14'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P21DT08H12M\") * 2.0) ne xs:dayTimeDuration(\"P08DT08H05M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-15'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P10DT10H01M\") * 2.0) le xs:dayTimeDuration(\"P17DT10H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-16'(_Config) ->
   Qry = "(xs:dayTimeDuration(\"P13DT09H09M\") * 2.0) ge xs:dayTimeDuration(\"P18DT02H02M\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-multiply-dayTimeDuration-17'(_Config) ->
   Qry = "fn:count(xs:dayTimeDuration(\"P13DT09H09M\") * -0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'op-multiply-dayTimeDuration-18'(_Config) ->
   Qry = "fn:count(xs:dayTimeDuration(\"P13DT09H09M\") * +0)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1\n      ",
   case xqerl_test:string_value(Res) of
             "1" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K-DayTimeDurationMultiply-1'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * 3 eq xs:dayTimeDuration(\"P9DT12H9M9.3S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationMultiply-2'(_Config) ->
   Qry = "3 * xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"P9DT12H9M9.3S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationMultiply-3'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * 0 eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationMultiply-4'(_Config) ->
   Qry = "0 * xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationMultiply-5'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"-0\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationMultiply-6'(_Config) ->
   Qry = "xs:double(\"-0\") * xs:dayTimeDuration(\"P3DT4H3M3.100S\") eq xs:dayTimeDuration(\"PT0S\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-DayTimeDurationMultiply-7'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'K-DayTimeDurationMultiply-8'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"-INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FODT0002" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FODT0002'}) end.
'K-DayTimeDurationMultiply-9'(_Config) ->
   Qry = "xs:dayTimeDuration(\"P3DT4H3M3.100S\") * xs:double(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'cbcl-multiply-dayTimeDuration-001'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) * 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-dayTimeDuration-002'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) * 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2D\n      ",
   case xqerl_test:string_value(Res) of
             "P2D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-dayTimeDuration-003'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; local:dayTimeDuration(2) * xs:double(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'cbcl-multiply-dayTimeDuration-004'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; 0 * local:dayTimeDuration(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         PT0S\n      ",
   case xqerl_test:string_value(Res) of
             "PT0S" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-dayTimeDuration-005'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; 1 * local:dayTimeDuration(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2D\n      ",
   case xqerl_test:string_value(Res) of
             "P2D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-multiply-dayTimeDuration-006'(_Config) ->
   Qry = "declare function local:dayTimeDuration($days as xs:integer) as xs:dayTimeDuration { xs:dayTimeDuration(concat(\"P\", $days, \"D\")) }; xs:double(\"NaN\") * local:dayTimeDuration(2)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOCA0005" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOCA0005'}) end.
'cbcl-times-001'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(false()) * 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2M\n      ",
   case xqerl_test:string_value(Res) of
             "P2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-times-002'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        local:f(true()) * 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-times-003'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(false()) * 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2D\n      ",
   case xqerl_test:string_value(Res) of
             "P2D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-times-004'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };\n        local:f(true()) * 2",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-times-005'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        2 * local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2M\n      ",
   case xqerl_test:string_value(Res) of
             "P2M" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-times-006'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:yearMonthDuration(\"P1M\") };\n        2 * local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
'cbcl-times-007'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };\n        2 * local:f(false())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         P2D\n      ",
   case xqerl_test:string_value(Res) of
             "P2D" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-times-008'(_Config) ->
   Qry = "\n        declare function local:f($x) { if ($x) then xs:duration(\"P1M\") else xs:dayTimeDuration(\"P1D\") };\n        2 * local:f(true())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPTY0004" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPTY0004'}) end.
