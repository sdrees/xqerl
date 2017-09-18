-module('op_numeric_greater_than_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['op-numeric-greater-thanint2args-1'/1]).
-export(['op-numeric-greater-thanint2args-2'/1]).
-export(['op-numeric-greater-thanint2args-3'/1]).
-export(['op-numeric-greater-thanint2args-4'/1]).
-export(['op-numeric-greater-thanint2args-5'/1]).
-export(['op-numeric-greater-thanintg2args-1'/1]).
-export(['op-numeric-greater-thanintg2args-2'/1]).
-export(['op-numeric-greater-thanintg2args-3'/1]).
-export(['op-numeric-greater-thanintg2args-4'/1]).
-export(['op-numeric-greater-thanintg2args-5'/1]).
-export(['op-numeric-greater-thandec2args-1'/1]).
-export(['op-numeric-greater-thandec2args-2'/1]).
-export(['op-numeric-greater-thandec2args-3'/1]).
-export(['op-numeric-greater-thandec2args-4'/1]).
-export(['op-numeric-greater-thandec2args-5'/1]).
-export(['op-numeric-greater-thandbl2args-1'/1]).
-export(['op-numeric-greater-thandbl2args-2'/1]).
-export(['op-numeric-greater-thandbl2args-3'/1]).
-export(['op-numeric-greater-thandbl2args-4'/1]).
-export(['op-numeric-greater-thandbl2args-5'/1]).
-export(['op-numeric-greater-thanflt2args-1'/1]).
-export(['op-numeric-greater-thanflt2args-2'/1]).
-export(['op-numeric-greater-thanflt2args-3'/1]).
-export(['op-numeric-greater-thanflt2args-4'/1]).
-export(['op-numeric-greater-thanflt2args-5'/1]).
-export(['op-numeric-greater-thanlng2args-1'/1]).
-export(['op-numeric-greater-thanlng2args-2'/1]).
-export(['op-numeric-greater-thanlng2args-3'/1]).
-export(['op-numeric-greater-thanlng2args-4'/1]).
-export(['op-numeric-greater-thanlng2args-5'/1]).
-export(['op-numeric-greater-thanusht2args-1'/1]).
-export(['op-numeric-greater-thanusht2args-2'/1]).
-export(['op-numeric-greater-thanusht2args-3'/1]).
-export(['op-numeric-greater-thanusht2args-4'/1]).
-export(['op-numeric-greater-thanusht2args-5'/1]).
-export(['op-numeric-greater-thannint2args-1'/1]).
-export(['op-numeric-greater-thannint2args-2'/1]).
-export(['op-numeric-greater-thannint2args-3'/1]).
-export(['op-numeric-greater-thannint2args-4'/1]).
-export(['op-numeric-greater-thannint2args-5'/1]).
-export(['op-numeric-greater-thanpint2args-1'/1]).
-export(['op-numeric-greater-thanpint2args-2'/1]).
-export(['op-numeric-greater-thanpint2args-3'/1]).
-export(['op-numeric-greater-thanpint2args-4'/1]).
-export(['op-numeric-greater-thanpint2args-5'/1]).
-export(['op-numeric-greater-thanulng2args-1'/1]).
-export(['op-numeric-greater-thanulng2args-2'/1]).
-export(['op-numeric-greater-thanulng2args-3'/1]).
-export(['op-numeric-greater-thanulng2args-4'/1]).
-export(['op-numeric-greater-thanulng2args-5'/1]).
-export(['op-numeric-greater-thannpi2args-1'/1]).
-export(['op-numeric-greater-thannpi2args-2'/1]).
-export(['op-numeric-greater-thannpi2args-3'/1]).
-export(['op-numeric-greater-thannpi2args-4'/1]).
-export(['op-numeric-greater-thannpi2args-5'/1]).
-export(['op-numeric-greater-thannni2args-1'/1]).
-export(['op-numeric-greater-thannni2args-2'/1]).
-export(['op-numeric-greater-thannni2args-3'/1]).
-export(['op-numeric-greater-thannni2args-4'/1]).
-export(['op-numeric-greater-thannni2args-5'/1]).
-export(['op-numeric-greater-thansht2args-1'/1]).
-export(['op-numeric-greater-thansht2args-2'/1]).
-export(['op-numeric-greater-thansht2args-3'/1]).
-export(['op-numeric-greater-thansht2args-4'/1]).
-export(['op-numeric-greater-thansht2args-5'/1]).
-export(['K-NumericGT-1'/1]).
-export(['K-NumericGT-2'/1]).
-export(['K-NumericGT-3'/1]).
-export(['K-NumericGT-4'/1]).
-export(['K-NumericGT-5'/1]).
-export(['K-NumericGT-6'/1]).
-export(['K-NumericGT-7'/1]).
-export(['K-NumericGT-8'/1]).
-export(['K-NumericGT-9'/1]).
-export(['K-NumericGT-10'/1]).
-export(['K-NumericGT-11'/1]).
-export(['K-NumericGT-12'/1]).
-export(['K-NumericGT-13'/1]).
-export(['K-NumericGT-14'/1]).
-export(['K-NumericGT-15'/1]).
-export(['K-NumericGT-16'/1]).
-export(['K-NumericGT-17'/1]).
-export(['K-NumericGT-18'/1]).
-export(['K-NumericGT-19'/1]).
-export(['K-NumericGT-20'/1]).
-export(['K-NumericGT-21'/1]).
-export(['K-NumericGT-22'/1]).
-export(['K-NumericGT-23'/1]).
-export(['K2-NumericGT-1'/1]).
-export(['K2-NumericGT-2'/1]).
-export(['K2-NumericGT-3'/1]).
-export(['K2-NumericGT-4'/1]).
-export(['cbcl-numeric-greater-than-001'/1]).
-export(['cbcl-numeric-greater-than-002'/1]).
-export(['cbcl-numeric-greater-than-003'/1]).
-export(['cbcl-numeric-greater-than-004'/1]).
-export(['cbcl-numeric-greater-than-005'/1]).
-export(['cbcl-numeric-greater-than-006'/1]).
-export(['cbcl-numeric-greater-than-007'/1]).
-export(['cbcl-numeric-greater-than-008'/1]).
-export(['cbcl-numeric-greater-than-009'/1]).
-export(['cbcl-numeric-greater-than-010'/1]).
-export(['cbcl-numeric-greater-than-011'/1]).
-export(['cbcl-numeric-greater-than-012'/1]).
-export(['cbcl-numeric-greater-than-013'/1]).
-export(['cbcl-numeric-greater-than-014'/1]).
-export(['cbcl-numeric-greater-than-015'/1]).
-export(['cbcl-numeric-greater-than-016'/1]).
-export(['cbcl-numeric-greater-than-017'/1]).
-export(['cbcl-numeric-greater-than-018'/1]).
-export(['cbcl-numeric-greater-than-019'/1]).
-export(['cbcl-numeric-greater-than-020'/1]).
-export(['cbcl-numeric-greater-than-021'/1]).
-export(['cbcl-numeric-greater-than-022'/1]).
-export(['cbcl-numeric-greater-than-023'/1]).
-export(['cbcl-numeric-greater-than-024'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'op-numeric-greater-thanint2args-1',
   'op-numeric-greater-thanint2args-2',
   'op-numeric-greater-thanint2args-3',
   'op-numeric-greater-thanint2args-4',
   'op-numeric-greater-thanint2args-5',
   'op-numeric-greater-thanintg2args-1',
   'op-numeric-greater-thanintg2args-2',
   'op-numeric-greater-thanintg2args-3',
   'op-numeric-greater-thanintg2args-4',
   'op-numeric-greater-thanintg2args-5',
   'op-numeric-greater-thandec2args-1',
   'op-numeric-greater-thandec2args-2',
   'op-numeric-greater-thandec2args-3',
   'op-numeric-greater-thandec2args-4',
   'op-numeric-greater-thandec2args-5',
   'op-numeric-greater-thandbl2args-1',
   'op-numeric-greater-thandbl2args-2',
   'op-numeric-greater-thandbl2args-3',
   'op-numeric-greater-thandbl2args-4',
   'op-numeric-greater-thandbl2args-5',
   'op-numeric-greater-thanflt2args-1',
   'op-numeric-greater-thanflt2args-2',
   'op-numeric-greater-thanflt2args-3',
   'op-numeric-greater-thanflt2args-4',
   'op-numeric-greater-thanflt2args-5',
   'op-numeric-greater-thanlng2args-1',
   'op-numeric-greater-thanlng2args-2',
   'op-numeric-greater-thanlng2args-3',
   'op-numeric-greater-thanlng2args-4',
   'op-numeric-greater-thanlng2args-5',
   'op-numeric-greater-thanusht2args-1',
   'op-numeric-greater-thanusht2args-2',
   'op-numeric-greater-thanusht2args-3',
   'op-numeric-greater-thanusht2args-4',
   'op-numeric-greater-thanusht2args-5',
   'op-numeric-greater-thannint2args-1',
   'op-numeric-greater-thannint2args-2',
   'op-numeric-greater-thannint2args-3',
   'op-numeric-greater-thannint2args-4',
   'op-numeric-greater-thannint2args-5',
   'op-numeric-greater-thanpint2args-1',
   'op-numeric-greater-thanpint2args-2',
   'op-numeric-greater-thanpint2args-3',
   'op-numeric-greater-thanpint2args-4',
   'op-numeric-greater-thanpint2args-5',
   'op-numeric-greater-thanulng2args-1',
   'op-numeric-greater-thanulng2args-2',
   'op-numeric-greater-thanulng2args-3',
   'op-numeric-greater-thanulng2args-4',
   'op-numeric-greater-thanulng2args-5',
   'op-numeric-greater-thannpi2args-1',
   'op-numeric-greater-thannpi2args-2',
   'op-numeric-greater-thannpi2args-3',
   'op-numeric-greater-thannpi2args-4',
   'op-numeric-greater-thannpi2args-5',
   'op-numeric-greater-thannni2args-1',
   'op-numeric-greater-thannni2args-2',
   'op-numeric-greater-thannni2args-3',
   'op-numeric-greater-thannni2args-4',
   'op-numeric-greater-thannni2args-5',
   'op-numeric-greater-thansht2args-1',
   'op-numeric-greater-thansht2args-2',
   'op-numeric-greater-thansht2args-3',
   'op-numeric-greater-thansht2args-4',
   'op-numeric-greater-thansht2args-5',
   'K-NumericGT-1',
   'K-NumericGT-2',
   'K-NumericGT-3',
   'K-NumericGT-4',
   'K-NumericGT-5',
   'K-NumericGT-6',
   'K-NumericGT-7',
   'K-NumericGT-8',
   'K-NumericGT-9',
   'K-NumericGT-10',
   'K-NumericGT-11',
   'K-NumericGT-12',
   'K-NumericGT-13',
   'K-NumericGT-14',
   'K-NumericGT-15',
   'K-NumericGT-16',
   'K-NumericGT-17',
   'K-NumericGT-18',
   'K-NumericGT-19',
   'K-NumericGT-20',
   'K-NumericGT-21',
   'K-NumericGT-22',
   'K-NumericGT-23',
   'K2-NumericGT-1',
   'K2-NumericGT-2',
   'K2-NumericGT-3',
   'K2-NumericGT-4',
   'cbcl-numeric-greater-than-001',
   'cbcl-numeric-greater-than-002',
   'cbcl-numeric-greater-than-003',
   'cbcl-numeric-greater-than-004',
   'cbcl-numeric-greater-than-005',
   'cbcl-numeric-greater-than-006',
   'cbcl-numeric-greater-than-007',
   'cbcl-numeric-greater-than-008',
   'cbcl-numeric-greater-than-009',
   'cbcl-numeric-greater-than-010',
   'cbcl-numeric-greater-than-011',
   'cbcl-numeric-greater-than-012',
   'cbcl-numeric-greater-than-013',
   'cbcl-numeric-greater-than-014',
   'cbcl-numeric-greater-than-015',
   'cbcl-numeric-greater-than-016',
   'cbcl-numeric-greater-than-017',
   'cbcl-numeric-greater-than-018',
   'cbcl-numeric-greater-than-019',
   'cbcl-numeric-greater-than-020',
   'cbcl-numeric-greater-than-021',
   'cbcl-numeric-greater-than-022',
   'cbcl-numeric-greater-than-023',
   'cbcl-numeric-greater-than-024'].
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
'op-numeric-greater-thanint2args-1'(_Config) ->
   Qry = "xs:int(\"-2147483648\") gt xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanint2args-2'(_Config) ->
   Qry = "xs:int(\"-1873914410\") gt xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanint2args-3'(_Config) ->
   Qry = "xs:int(\"2147483647\") gt xs:int(\"-2147483648\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanint2args-4'(_Config) ->
   Qry = "xs:int(\"-2147483648\") gt xs:int(\"-1873914410\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanint2args-5'(_Config) ->
   Qry = "xs:int(\"-2147483648\") gt xs:int(\"2147483647\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanintg2args-1'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") gt xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanintg2args-2'(_Config) ->
   Qry = "xs:integer(\"830993497117024304\") gt xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanintg2args-3'(_Config) ->
   Qry = "xs:integer(\"999999999999999999\") gt xs:integer(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanintg2args-4'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") gt xs:integer(\"830993497117024304\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanintg2args-5'(_Config) ->
   Qry = "xs:integer(\"-999999999999999999\") gt xs:integer(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandec2args-1'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") gt xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandec2args-2'(_Config) ->
   Qry = "xs:decimal(\"617375191608514839\") gt xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandec2args-3'(_Config) ->
   Qry = "xs:decimal(\"999999999999999999\") gt xs:decimal(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandec2args-4'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") gt xs:decimal(\"617375191608514839\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandec2args-5'(_Config) ->
   Qry = "xs:decimal(\"-999999999999999999\") gt xs:decimal(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandbl2args-1'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") gt xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandbl2args-2'(_Config) ->
   Qry = "xs:double(\"0\") gt xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandbl2args-3'(_Config) ->
   Qry = "xs:double(\"1.7976931348623157E308\") gt xs:double(\"-1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandbl2args-4'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") gt xs:double(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thandbl2args-5'(_Config) ->
   Qry = "xs:double(\"-1.7976931348623157E308\") gt xs:double(\"1.7976931348623157E308\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanflt2args-1'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") gt xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanflt2args-2'(_Config) ->
   Qry = "xs:float(\"0\") gt xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanflt2args-3'(_Config) ->
   Qry = "xs:float(\"3.4028235E38\") gt xs:float(\"-3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanflt2args-4'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") gt xs:float(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanflt2args-5'(_Config) ->
   Qry = "xs:float(\"-3.4028235E38\") gt xs:float(\"3.4028235E38\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanlng2args-1'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") gt xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanlng2args-2'(_Config) ->
   Qry = "xs:long(\"-47175562203048468\") gt xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanlng2args-3'(_Config) ->
   Qry = "xs:long(\"92233720368547758\") gt xs:long(\"-92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanlng2args-4'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") gt xs:long(\"-47175562203048468\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanlng2args-5'(_Config) ->
   Qry = "xs:long(\"-92233720368547758\") gt xs:long(\"92233720368547758\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanusht2args-1'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") gt xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanusht2args-2'(_Config) ->
   Qry = "xs:unsignedShort(\"44633\") gt xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanusht2args-3'(_Config) ->
   Qry = "xs:unsignedShort(\"65535\") gt xs:unsignedShort(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanusht2args-4'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") gt xs:unsignedShort(\"44633\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanusht2args-5'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") gt xs:unsignedShort(\"65535\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannint2args-1'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") gt xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannint2args-2'(_Config) ->
   Qry = "xs:negativeInteger(\"-297014075999096793\") gt xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannint2args-3'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") gt xs:negativeInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannint2args-4'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") gt xs:negativeInteger(\"-297014075999096793\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannint2args-5'(_Config) ->
   Qry = "xs:negativeInteger(\"-999999999999999999\") gt xs:negativeInteger(\"-1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanpint2args-1'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") gt xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanpint2args-2'(_Config) ->
   Qry = "xs:positiveInteger(\"52704602390610033\") gt xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanpint2args-3'(_Config) ->
   Qry = "xs:positiveInteger(\"999999999999999999\") gt xs:positiveInteger(\"1\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanpint2args-4'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") gt xs:positiveInteger(\"52704602390610033\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanpint2args-5'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") gt xs:positiveInteger(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanulng2args-1'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") gt xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanulng2args-2'(_Config) ->
   Qry = "xs:unsignedLong(\"130747108607674654\") gt xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanulng2args-3'(_Config) ->
   Qry = "xs:unsignedLong(\"184467440737095516\") gt xs:unsignedLong(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanulng2args-4'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") gt xs:unsignedLong(\"130747108607674654\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thanulng2args-5'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") gt xs:unsignedLong(\"184467440737095516\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannpi2args-1'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") gt xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannpi2args-2'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-475688437271870490\") gt xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannpi2args-3'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") gt xs:nonPositiveInteger(\"-999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannpi2args-4'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") gt xs:nonPositiveInteger(\"-475688437271870490\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannpi2args-5'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"-999999999999999999\") gt xs:nonPositiveInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannni2args-1'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") gt xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannni2args-2'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"303884545991464527\") gt xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannni2args-3'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"999999999999999999\") gt xs:nonNegativeInteger(\"0\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannni2args-4'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") gt xs:nonNegativeInteger(\"303884545991464527\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thannni2args-5'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") gt xs:nonNegativeInteger(\"999999999999999999\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thansht2args-1'(_Config) ->
   Qry = "xs:short(\"-32768\") gt xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thansht2args-2'(_Config) ->
   Qry = "xs:short(\"-5324\") gt xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thansht2args-3'(_Config) ->
   Qry = "xs:short(\"32767\") gt xs:short(\"-32768\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thansht2args-4'(_Config) ->
   Qry = "xs:short(\"-32768\") gt xs:short(\"-5324\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'op-numeric-greater-thansht2args-5'(_Config) ->
   Qry = "xs:short(\"-32768\") gt xs:short(\"32767\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-1'(_Config) ->
   Qry = "xs:integer(1) gt xs:integer(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-2'(_Config) ->
   Qry = "xs:integer(1) ge xs:integer(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-3'(_Config) ->
   Qry = "xs:decimal(1) gt xs:decimal(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-4'(_Config) ->
   Qry = "xs:decimal(1) ge xs:decimal(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-5'(_Config) ->
   Qry = "0 gt xs:double(\"-INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-6'(_Config) ->
   Qry = "xs:double(\"INF\") gt 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-7'(_Config) ->
   Qry = "xs:double(1) gt xs:double(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-8'(_Config) ->
   Qry = "xs:double(1) ge xs:double(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-9'(_Config) ->
   Qry = "0 gt xs:float(\"-INF\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-10'(_Config) ->
   Qry = "xs:float(\"INF\") gt 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-11'(_Config) ->
   Qry = "xs:float(1) gt xs:float(-1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-12'(_Config) ->
   Qry = "xs:float(1) ge xs:float(1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-13'(_Config) ->
   Qry = "not(xs:double(\"NaN\") gt 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-14'(_Config) ->
   Qry = "not(xs:float(\"NaN\") gt 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-15'(_Config) ->
   Qry = "not(xs:double(\"NaN\") ge 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-16'(_Config) ->
   Qry = "not(xs:float(\"NaN\") ge 1)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-17'(_Config) ->
   Qry = "not(1 gt xs:double(\"NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-18'(_Config) ->
   Qry = "not(1 gt xs:float(\"NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-19'(_Config) ->
   Qry = "not(1 ge xs:double(\"NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-20'(_Config) ->
   Qry = "not(1 ge xs:float(\"NaN\"))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-21'(_Config) ->
   Qry = "1 le count((1, 2, 3, timezone-from-time(current-time()), 4))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-22'(_Config) ->
   Qry = "count((1, 2, 3, timezone-from-time(current-time()), 4)) ge 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-NumericGT-23'(_Config) ->
   Qry = "count((1, 2, 3, timezone-from-time(current-time()), 4)) gt 0",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericGT-1'(_Config) ->
   Qry = "xs:unsignedLong(\"100\") gt xs:unsignedLong(\"18446744073709551615\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericGT-2'(_Config) ->
   Qry = "xs:unsignedLong(\"18446744073709551615\") gt xs:unsignedLong(\"100\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericGT-3'(_Config) ->
   Qry = "xs:double(\"3\") gt xs:double(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-NumericGT-4'(_Config) ->
   Qry = "xs:float(\"3\") lt xs:float(\"NaN\")",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-001'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not( local:square(1e0) gt local:square(2e0) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-002'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not( local:square(xs:float(1e0)) gt local:square(xs:float(2e0)) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-003'(_Config) ->
   Qry = "declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; not( local:square(1.0) gt local:square(2.0) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-004'(_Config) ->
   Qry = "declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; not( local:square(1) gt local:square(2) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-005'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not( local:square(1e0) le local:square(2e0) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-006'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not( local:square(xs:float(1e0)) le local:square(xs:float(2e0)) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-007'(_Config) ->
   Qry = "declare function local:square($arg as xs:decimal) as xs:decimal { $arg * $arg }; not( local:square(1.0) le local:square(2.0) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-008'(_Config) ->
   Qry = "declare function local:square($arg as xs:integer) as xs:integer { $arg * $arg }; not( local:square(1) le local:square(2) )",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-009'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not(not( local:square(1e0) gt local:square(2e0) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-010'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not(not( local:square(xs:float(1e0)) gt local:square(xs:float(2e0)) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-011'(_Config) ->
   Qry = "declare function local:square($arg as xs:double) as xs:double { $arg * $arg }; not(not( local:square(1e0) le local:square(2e0) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-012'(_Config) ->
   Qry = "declare function local:square($arg as xs:float) as xs:float { $arg * $arg }; not(not( local:square(xs:float(1e0)) le local:square(xs:float(2e0)) ))",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-013'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 1 gt 121",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-014'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 1 gt 121",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-015'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 gt $x + 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-016'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 gt 1 + $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-017'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x + 1 le 121",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-018'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return $x - 1 le 121",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-019'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 le $x + 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-020'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 le 1 + $x",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-021'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 gt $x - 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-022'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 1 + $x gt 121",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-023'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 1 + $x le 121",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'cbcl-numeric-greater-than-024'(_Config) ->
   Qry = "declare function local:factorial($arg as xs:integer) as xs:integer { if ($arg lt 1) then 1 else $arg * local:factorial($arg - 1) }; let $x := local:factorial(5) return 121 le $x - 1",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
