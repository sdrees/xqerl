-module('prod_CountClause_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['count-001'/1]).
-export(['count-002'/1]).
-export(['count-003'/1]).
-export(['count-004'/1]).
-export(['count-005'/1]).
-export(['count-006'/1]).
-export(['count-007'/1]).
-export(['count-008'/1]).
-export(['count-009'/1]).
-export(['count-010'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'count-001',
   'count-002',
   'count-003',
   'count-004',
   'count-005',
   'count-006',
   'count-007',
   'count-008',
   'count-009',
   'count-010'].
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
'count-001'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 10 \n		  count $j\n		  return \n		    <item><x>{$x}</x><j>{$j}</j></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-002'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x at $j in 1 to 10 \n		  return \n		    <item><x>{$x}</x><j>{$j}</j></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><j>1</j></item><item><x>2</x><j>2</j></item><item><x>3</x><j>3</j></item><item><x>4</x><j>4</j></item><item><x>5</x><j>5</j></item><item><x>6</x><j>6</j></item><item><x>7</x><j>7</j></item><item><x>8</x><j>8</j></item><item><x>9</x><j>9</j></item><item><x>10</x><j>10</j></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-003'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 4\n		  count $ix\n		  for $y in $x to 3\n		  count $iy \n		  return \n		    <item><x>{$x}</x><ix>{$ix}</ix><y>{$y}</y><iy>{$iy}</iy></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-004'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 4\n		  count $ix\n		  for $y allowing empty in $x to 3\n		  count $iy \n		  return \n		    <item><x>{$x}</x><ix>{$ix}</ix><y>{$y}</y><iy>{$iy}</iy></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item><item><x>4</x><ix>4</ix><y/><iy>7</iy></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item><item><x>4</x><ix>4</ix><y/><iy>7</iy></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><ix>1</ix><y>1</y><iy>1</iy></item><item><x>1</x><ix>1</ix><y>2</y><iy>2</iy></item><item><x>1</x><ix>1</ix><y>3</y><iy>3</iy></item><item><x>2</x><ix>2</ix><y>2</y><iy>4</iy></item><item><x>2</x><ix>2</ix><y>3</y><iy>5</iy></item><item><x>3</x><ix>3</ix><y>3</y><iy>6</iy></item><item><x>4</x><ix>4</ix><y/><iy>7</iy></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-005'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 5\n		  for $y in 1 to 5\n		  count $index\n		  where $index mod 3 = 0\n		  return \n		    <item><x>{$x}</x><y>{$y}</y><index>{$index}</index></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>6</index></item><item><x>2</x><y>4</y><index>9</index></item><item><x>3</x><y>2</y><index>12</index></item><item><x>3</x><y>5</y><index>15</index></item><item><x>4</x><y>3</y><index>18</index></item><item><x>5</x><y>1</y><index>21</index></item><item><x>5</x><y>4</y><index>24</index></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>6</index></item><item><x>2</x><y>4</y><index>9</index></item><item><x>3</x><y>2</y><index>12</index></item><item><x>3</x><y>5</y><index>15</index></item><item><x>4</x><y>3</y><index>18</index></item><item><x>5</x><y>1</y><index>21</index></item><item><x>5</x><y>4</y><index>24</index></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>6</index></item><item><x>2</x><y>4</y><index>9</index></item><item><x>3</x><y>2</y><index>12</index></item><item><x>3</x><y>5</y><index>15</index></item><item><x>4</x><y>3</y><index>18</index></item><item><x>5</x><y>1</y><index>21</index></item><item><x>5</x><y>4</y><index>24</index></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-006'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 5\n		  for $y in 1 to 5\n		  count $index\n		  where $index mod 3 = 0\n		  count $index2\n		  return \n		    <item><x>{$x}</x><y>{$y}</y><index2>{$index2}</index2></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><y>3</y><index2>1</index2></item><item><x>2</x><y>1</y><index2>2</index2></item><item><x>2</x><y>4</y><index2>3</index2></item><item><x>3</x><y>2</y><index2>4</index2></item><item><x>3</x><y>5</y><index2>5</index2></item><item><x>4</x><y>3</y><index2>6</index2></item><item><x>5</x><y>1</y><index2>7</index2></item><item><x>5</x><y>4</y><index2>8</index2></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><y>3</y><index2>1</index2></item><item><x>2</x><y>1</y><index2>2</index2></item><item><x>2</x><y>4</y><index2>3</index2></item><item><x>3</x><y>2</y><index2>4</index2></item><item><x>3</x><y>5</y><index2>5</index2></item><item><x>4</x><y>3</y><index2>6</index2></item><item><x>5</x><y>1</y><index2>7</index2></item><item><x>5</x><y>4</y><index2>8</index2></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><y>3</y><index2>1</index2></item><item><x>2</x><y>1</y><index2>2</index2></item><item><x>2</x><y>4</y><index2>3</index2></item><item><x>3</x><y>2</y><index2>4</index2></item><item><x>3</x><y>5</y><index2>5</index2></item><item><x>4</x><y>3</y><index2>6</index2></item><item><x>5</x><y>1</y><index2>7</index2></item><item><x>5</x><y>4</y><index2>8</index2></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-007'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 5\n		  for $y in 1 to 5\n		  count $index\n		  where $index mod 3 = 0\n		  count $index\n		  return \n		    <item><x>{$x}</x><y>{$y}</y><index>{$index}</index></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><y>3</y><index>1</index></item><item><x>2</x><y>1</y><index>2</index></item><item><x>2</x><y>4</y><index>3</index></item><item><x>3</x><y>2</y><index>4</index></item><item><x>3</x><y>5</y><index>5</index></item><item><x>4</x><y>3</y><index>6</index></item><item><x>5</x><y>1</y><index>7</index></item><item><x>5</x><y>4</y><index>8</index></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><y>3</y><index>1</index></item><item><x>2</x><y>1</y><index>2</index></item><item><x>2</x><y>4</y><index>3</index></item><item><x>3</x><y>2</y><index>4</index></item><item><x>3</x><y>5</y><index>5</index></item><item><x>4</x><y>3</y><index>6</index></item><item><x>5</x><y>1</y><index>7</index></item><item><x>5</x><y>4</y><index>8</index></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><y>3</y><index>1</index></item><item><x>2</x><y>1</y><index>2</index></item><item><x>2</x><y>4</y><index>3</index></item><item><x>3</x><y>2</y><index>4</index></item><item><x>3</x><y>5</y><index>5</index></item><item><x>4</x><y>3</y><index>6</index></item><item><x>5</x><y>1</y><index>7</index></item><item><x>5</x><y>4</y><index>8</index></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-008'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 2\n		  for $y in 1 to 3\n		  let $index := $y\n		  count $index\n		  return \n		    <item><x>{$x}</x><y>{$y}</y><index>{$index}</index></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><y>1</y><index>1</index></item><item><x>1</x><y>2</y><index>2</index></item><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>4</index></item><item><x>2</x><y>2</y><index>5</index></item><item><x>2</x><y>3</y><index>6</index></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><y>1</y><index>1</index></item><item><x>1</x><y>2</y><index>2</index></item><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>4</index></item><item><x>2</x><y>2</y><index>5</index></item><item><x>2</x><y>3</y><index>6</index></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><y>1</y><index>1</index></item><item><x>1</x><y>2</y><index>2</index></item><item><x>1</x><y>3</y><index>3</index></item><item><x>2</x><y>1</y><index>4</index></item><item><x>2</x><y>2</y><index>5</index></item><item><x>2</x><y>3</y><index>6</index></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-009'(_Config) ->
   Qry = "\n        <out>{ \n		  for $x in 1 to 4\n		  for $y in 1 to 4\n		  count $index\n		  let $remainder := $index mod 3\n		  order by $remainder, $index\n		  count $index2\n		  return \n		    <item><x>{$x}</x><y>{$y}</y><remainder>{$remainder}</remainder><index2>{$index2}</index2></item> \n		}</out>\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         <out><item><x>1</x><y>3</y><remainder>0</remainder><index2>1</index2></item><item><x>2</x><y>2</y><remainder>0</remainder><index2>2</index2></item><item><x>3</x><y>1</y><remainder>0</remainder><index2>3</index2></item><item><x>3</x><y>4</y><remainder>0</remainder><index2>4</index2></item><item><x>4</x><y>3</y><remainder>0</remainder><index2>5</index2></item><item><x>1</x><y>1</y><remainder>1</remainder><index2>6</index2></item><item><x>1</x><y>4</y><remainder>1</remainder><index2>7</index2></item><item><x>2</x><y>3</y><remainder>1</remainder><index2>8</index2></item><item><x>3</x><y>2</y><remainder>1</remainder><index2>9</index2></item><item><x>4</x><y>1</y><remainder>1</remainder><index2>10</index2></item><item><x>4</x><y>4</y><remainder>1</remainder><index2>11</index2></item><item><x>1</x><y>2</y><remainder>2</remainder><index2>12</index2></item><item><x>2</x><y>1</y><remainder>2</remainder><index2>13</index2></item><item><x>2</x><y>4</y><remainder>2</remainder><index2>14</index2></item><item><x>3</x><y>3</y><remainder>2</remainder><index2>15</index2></item><item><x>4</x><y>2</y><remainder>2</remainder><index2>16</index2></item></out>\n      ",
   case catch xqerl_node:to_xml(xqerl_test:run(case xqerl_node:to_xml(Res) of {xqError,_,_,_,_} -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x></x>"; P -> "Q{http://www.w3.org/2005/xpath-functions}deep-equal(<x>"++P++"</x>" end ++ " , " ++ "<x>"++"<out><item><x>1</x><y>3</y><remainder>0</remainder><index2>1</index2></item><item><x>2</x><y>2</y><remainder>0</remainder><index2>2</index2></item><item><x>3</x><y>1</y><remainder>0</remainder><index2>3</index2></item><item><x>3</x><y>4</y><remainder>0</remainder><index2>4</index2></item><item><x>4</x><y>3</y><remainder>0</remainder><index2>5</index2></item><item><x>1</x><y>1</y><remainder>1</remainder><index2>6</index2></item><item><x>1</x><y>4</y><remainder>1</remainder><index2>7</index2></item><item><x>2</x><y>3</y><remainder>1</remainder><index2>8</index2></item><item><x>3</x><y>2</y><remainder>1</remainder><index2>9</index2></item><item><x>4</x><y>1</y><remainder>1</remainder><index2>10</index2></item><item><x>4</x><y>4</y><remainder>1</remainder><index2>11</index2></item><item><x>1</x><y>2</y><remainder>2</remainder><index2>12</index2></item><item><x>2</x><y>1</y><remainder>2</remainder><index2>13</index2></item><item><x>2</x><y>4</y><remainder>2</remainder><index2>14</index2></item><item><x>3</x><y>3</y><remainder>2</remainder><index2>15</index2></item><item><x>4</x><y>2</y><remainder>2</remainder><index2>16</index2></item></out>"++"</x>)")) == "true" of
           true -> {comment, "assert-xml"};
           _ -> 
              case ResXml == "<out><item><x>1</x><y>3</y><remainder>0</remainder><index2>1</index2></item><item><x>2</x><y>2</y><remainder>0</remainder><index2>2</index2></item><item><x>3</x><y>1</y><remainder>0</remainder><index2>3</index2></item><item><x>3</x><y>4</y><remainder>0</remainder><index2>4</index2></item><item><x>4</x><y>3</y><remainder>0</remainder><index2>5</index2></item><item><x>1</x><y>1</y><remainder>1</remainder><index2>6</index2></item><item><x>1</x><y>4</y><remainder>1</remainder><index2>7</index2></item><item><x>2</x><y>3</y><remainder>1</remainder><index2>8</index2></item><item><x>3</x><y>2</y><remainder>1</remainder><index2>9</index2></item><item><x>4</x><y>1</y><remainder>1</remainder><index2>10</index2></item><item><x>4</x><y>4</y><remainder>1</remainder><index2>11</index2></item><item><x>1</x><y>2</y><remainder>2</remainder><index2>12</index2></item><item><x>2</x><y>1</y><remainder>2</remainder><index2>13</index2></item><item><x>2</x><y>4</y><remainder>2</remainder><index2>14</index2></item><item><x>3</x><y>3</y><remainder>2</remainder><index2>15</index2></item><item><x>4</x><y>2</y><remainder>2</remainder><index2>16</index2></item></out>" of
                 true -> {comment, "assert-xml"};
                 _ -> ct:fail({xqerl_node:to_xml(Res),Exp}) 
              end
end.
'count-010'(_Config) ->
   Qry = "\n		  for $x in 1 to 4 return\n		    for $y in 1 to 4\n		    count $index\n		    return $index\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4\n      ",
   case xqerl_test:string_value(Res) of
             "1 2 3 4 1 2 3 4 1 2 3 4 1 2 3 4" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
