-module('prod_InstanceofExpr_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([suite/0]).
-export([init_per_suite/1]).
-export([end_per_suite/1]).
-export(['instanceof1'/1]).
-export(['instanceof2'/1]).
-export(['instanceof3'/1]).
-export(['instanceof4'/1]).
-export(['instanceof5'/1]).
-export(['instanceof6'/1]).
-export(['instanceof7'/1]).
-export(['instanceof8'/1]).
-export(['instanceof9'/1]).
-export(['instanceof10'/1]).
-export(['instanceof11'/1]).
-export(['instanceof12'/1]).
-export(['instanceof13'/1]).
-export(['instanceof14'/1]).
-export(['instanceof15'/1]).
-export(['instanceof16'/1]).
-export(['instanceof17'/1]).
-export(['instanceof18'/1]).
-export(['instanceof19'/1]).
-export(['instanceof20'/1]).
-export(['instanceof21'/1]).
-export(['instanceof22'/1]).
-export(['instanceof23'/1]).
-export(['instanceof24'/1]).
-export(['instanceof25'/1]).
-export(['instanceof26'/1]).
-export(['instanceof27'/1]).
-export(['instanceof28'/1]).
-export(['instanceof29'/1]).
-export(['instanceof30'/1]).
-export(['instanceof31'/1]).
-export(['instanceof32'/1]).
-export(['instanceof33'/1]).
-export(['instanceof34'/1]).
-export(['instanceof35'/1]).
-export(['instanceof36'/1]).
-export(['instanceof37'/1]).
-export(['instanceof38'/1]).
-export(['instanceof39'/1]).
-export(['instanceof40'/1]).
-export(['instanceof41'/1]).
-export(['instanceof42'/1]).
-export(['instanceof43'/1]).
-export(['instanceof44'/1]).
-export(['instanceof45'/1]).
-export(['instanceof46'/1]).
-export(['instanceof47'/1]).
-export(['instanceof48'/1]).
-export(['instanceof49'/1]).
-export(['instanceof50'/1]).
-export(['instanceof51'/1]).
-export(['instanceof52'/1]).
-export(['instanceof53'/1]).
-export(['instanceof54'/1]).
-export(['instanceof55'/1]).
-export(['instanceof56'/1]).
-export(['instanceof57'/1]).
-export(['instanceof58'/1]).
-export(['instanceof59'/1]).
-export(['instanceof60'/1]).
-export(['instanceof61'/1]).
-export(['instanceof62'/1]).
-export(['instanceof63'/1]).
-export(['instanceof64'/1]).
-export(['instanceof65'/1]).
-export(['instanceof66'/1]).
-export(['instanceof67'/1]).
-export(['instanceof68'/1]).
-export(['instanceof69'/1]).
-export(['instanceof70'/1]).
-export(['instanceof71'/1]).
-export(['instanceof72'/1]).
-export(['instanceof73'/1]).
-export(['instanceof74'/1]).
-export(['instanceof75'/1]).
-export(['instanceof76'/1]).
-export(['instanceof77'/1]).
-export(['instanceof78'/1]).
-export(['instanceof79'/1]).
-export(['instanceof80'/1]).
-export(['instanceof81'/1]).
-export(['instanceof82'/1]).
-export(['instanceof83'/1]).
-export(['instanceof84'/1]).
-export(['instanceof85'/1]).
-export(['instanceof86'/1]).
-export(['instanceof87'/1]).
-export(['instanceof88'/1]).
-export(['instanceof89'/1]).
-export(['instanceof90'/1]).
-export(['instanceof91'/1]).
-export(['instanceof92'/1]).
-export(['instanceof93'/1]).
-export(['instanceof94'/1]).
-export(['instanceof95'/1]).
-export(['instanceof96'/1]).
-export(['instanceof97'/1]).
-export(['instanceof98'/1]).
-export(['instanceof99'/1]).
-export(['instanceof100'/1]).
-export(['instanceof101'/1]).
-export(['instanceof102'/1]).
-export(['instanceof103'/1]).
-export(['instanceof104'/1]).
-export(['instanceof105'/1]).
-export(['instanceof106'/1]).
-export(['instanceof107'/1]).
-export(['instanceof108'/1]).
-export(['instanceof109'/1]).
-export(['instanceof110'/1]).
-export(['instanceof111'/1]).
-export(['instanceof112'/1]).
-export(['instanceof113'/1]).
-export(['instanceof114'/1]).
-export(['instanceof115'/1]).
-export(['instanceof116'/1]).
-export(['instanceof117'/1]).
-export(['instanceof118'/1]).
-export(['instanceof119'/1]).
-export(['instanceof120'/1]).
-export(['instanceof121'/1]).
-export(['instanceof122'/1]).
-export(['instanceof123'/1]).
-export(['instanceof124'/1]).
-export(['instanceof125'/1]).
-export(['instanceof126'/1]).
-export(['instanceof127'/1]).
-export(['instanceof128'/1]).
-export(['instanceof129'/1]).
-export(['instanceof130'/1]).
-export(['instanceof131'/1]).
-export(['instanceof132'/1]).
-export(['instanceof133'/1]).
-export(['instanceof134'/1]).
-export(['instanceof135'/1]).
-export(['instanceof136'/1]).
-export(['instanceof137'/1]).
-export(['instanceof138'/1]).
-export(['instanceof139'/1]).
-export(['instanceof140'/1]).
-export(['instanceof141'/1]).
-export(['K-SeqExprInstanceOf-1'/1]).
-export(['K-SeqExprInstanceOf-2'/1]).
-export(['K-SeqExprInstanceOf-3'/1]).
-export(['K-SeqExprInstanceOf-4'/1]).
-export(['K-SeqExprInstanceOf-5'/1]).
-export(['K-SeqExprInstanceOf-6'/1]).
-export(['K-SeqExprInstanceOf-7'/1]).
-export(['K-SeqExprInstanceOf-8'/1]).
-export(['K-SeqExprInstanceOf-9'/1]).
-export(['K-SeqExprInstanceOf-10'/1]).
-export(['K-SeqExprInstanceOf-11'/1]).
-export(['K-SeqExprInstanceOf-12'/1]).
-export(['K-SeqExprInstanceOf-13'/1]).
-export(['K-SeqExprInstanceOf-14'/1]).
-export(['K-SeqExprInstanceOf-15'/1]).
-export(['K-SeqExprInstanceOf-16'/1]).
-export(['K-SeqExprInstanceOf-17'/1]).
-export(['K-SeqExprInstanceOf-18'/1]).
-export(['K-SeqExprInstanceOf-19'/1]).
-export(['K-SeqExprInstanceOf-20'/1]).
-export(['K-SeqExprInstanceOf-21'/1]).
-export(['K-SeqExprInstanceOf-22'/1]).
-export(['K-SeqExprInstanceOf-23'/1]).
-export(['K-SeqExprInstanceOf-24'/1]).
-export(['K-SeqExprInstanceOf-25'/1]).
-export(['K-SeqExprInstanceOf-26'/1]).
-export(['K-SeqExprInstanceOf-27'/1]).
-export(['K-SeqExprInstanceOf-28'/1]).
-export(['K-SeqExprInstanceOf-29'/1]).
-export(['K-SeqExprInstanceOf-30'/1]).
-export(['K-SeqExprInstanceOf-31'/1]).
-export(['K-SeqExprInstanceOf-32'/1]).
-export(['K-SeqExprInstanceOf-33'/1]).
-export(['K-SeqExprInstanceOf-34'/1]).
-export(['K-SeqExprInstanceOf-35'/1]).
-export(['K-SeqExprInstanceOf-36'/1]).
-export(['K-SeqExprInstanceOf-37'/1]).
-export(['K-SeqExprInstanceOf-38'/1]).
-export(['K-SeqExprInstanceOf-39'/1]).
-export(['K-SeqExprInstanceOf-40'/1]).
-export(['K-SeqExprInstanceOf-41'/1]).
-export(['K-SeqExprInstanceOf-42'/1]).
-export(['K-SeqExprInstanceOf-43'/1]).
-export(['K-SeqExprInstanceOf-44'/1]).
-export(['K-SeqExprInstanceOf-45'/1]).
-export(['K-SeqExprInstanceOf-46'/1]).
-export(['K-SeqExprInstanceOf-47'/1]).
-export(['K-SeqExprInstanceOf-48'/1]).
-export(['K-SeqExprInstanceOf-49'/1]).
-export(['K-SeqExprInstanceOf-50'/1]).
-export(['K-SeqExprInstanceOf-51'/1]).
-export(['K-SeqExprInstanceOf-52'/1]).
-export(['K-SeqExprInstanceOf-53'/1]).
-export(['K-SeqExprInstanceOf-54'/1]).
-export(['K-SeqExprInstanceOf-55'/1]).
-export(['K-SeqExprInstanceOf-56'/1]).
-export(['K-SeqExprInstanceOf-57'/1]).
-export(['K-SeqExprInstanceOf-58'/1]).
-export(['K-SeqExprInstanceOf-59'/1]).
-export(['K-SeqExprInstanceOf-60'/1]).
-export(['K-SeqExprInstanceOf-61'/1]).
-export(['K-SeqExprInstanceOf-62'/1]).
-export(['K-SeqExprInstanceOf-63'/1]).
-export(['K-SeqExprInstanceOf-64'/1]).
-export(['K-SeqExprInstanceOf-65'/1]).
-export(['K-SeqExprInstanceOf-66'/1]).
-export(['K2-SeqExprInstanceOf-1'/1]).
-export(['K2-SeqExprInstanceOf-2'/1]).
-export(['K2-SeqExprInstanceOf-3'/1]).
-export(['K2-SeqExprInstanceOf-4'/1]).
-export(['K2-SeqExprInstanceOf-5'/1]).
-export(['K2-SeqExprInstanceOf-6'/1]).
-export(['K2-SeqExprInstanceOf-7'/1]).
-export(['K2-SeqExprInstanceOf-8'/1]).
-export(['K2-SeqExprInstanceOf-9'/1]).
-export(['K2-SeqExprInstanceOf-10'/1]).
-export(['K2-SeqExprInstanceOf-11'/1]).
-export(['K2-SeqExprInstanceOf-12'/1]).
-export(['K2-SeqExprInstanceOf-13'/1]).
-export(['K2-SeqExprInstanceOf-14'/1]).
-export(['K2-SeqExprInstanceOf-15'/1]).
-export(['K2-SeqExprInstanceOf-16'/1]).
-export(['K2-SeqExprInstanceOf-17'/1]).
-export(['K2-SeqExprInstanceOf-18'/1]).
-export(['K2-SeqExprInstanceOf-19'/1]).
-export(['K2-SeqExprInstanceOf-20'/1]).
-export(['K2-SeqExprInstanceOf-21'/1]).
-export(['K2-SeqExprInstanceOf-22'/1]).
-export(['K2-SeqExprInstanceOf-23'/1]).
-export(['K2-SeqExprInstanceOf-24'/1]).
-export(['K2-SeqExprInstanceOf-25'/1]).
-export(['K2-SeqExprInstanceOf-26'/1]).
-export(['K2-SeqExprInstanceOf-27'/1]).
-export(['K2-SeqExprInstanceOf-28'/1]).
-export(['K2-SeqExprInstanceOf-29'/1]).
-export(['K2-SeqExprInstanceOf-30'/1]).
-export(['K2-SeqExprInstanceOf-31'/1]).
-export(['K2-SeqExprInstanceOf-32'/1]).
-export(['K2-SeqExprInstanceOf-33'/1]).
-export(['K2-SeqExprInstanceOf-34'/1]).
-export(['K2-SeqExprInstanceOf-35'/1]).
-export(['K2-SeqExprInstanceOf-36'/1]).
-export(['K2-SeqExprInstanceOf-37'/1]).
-export(['K2-SeqExprInstanceOf-38'/1]).
-export(['K2-SeqExprInstanceOf-39'/1]).
-export(['K2-SeqExprInstanceOf-40'/1]).
-export(['K2-SeqExprInstanceOf-41'/1]).
-export(['K2-SeqExprInstanceOf-42'/1]).
-export(['K2-SeqExprInstanceOf-43'/1]).
-export(['K2-SeqExprInstanceOf-44'/1]).
-export(['K2-SeqExprInstanceOf-45'/1]).
-export(['K2-SeqExprInstanceOf-46'/1]).
-export(['K2-SeqExprInstanceOf-47'/1]).
-export(['K2-SeqExprInstanceOf-48'/1]).
-export(['K2-SeqExprInstanceOf-49'/1]).
-export(['K2-SeqExprInstanceOf-50'/1]).
-export(['K2-SeqExprInstanceOf-51'/1]).
-export(['K2-SeqExprInstanceOf-52'/1]).
-export(['K2-SeqExprInstanceOf-53'/1]).
-export(['K2-SeqExprInstanceOf-54'/1]).
-export(['K2-SeqExprInstanceOf-55'/1]).
-export(['K2-SeqExprInstanceOf-56'/1]).
-export(['K2-SeqExprInstanceOf-57'/1]).
-export(['K2-SeqExprInstanceOf-58'/1]).
-export(['K2-SeqExprInstanceOf-59'/1]).
-export(['K2-SeqExprInstanceOf-60'/1]).
-export(['K2-SeqExprInstanceOf-61'/1]).
-export(['K2-SeqExprInstanceOf-62'/1]).
-export(['K2-SeqExprInstanceOf-63'/1]).
-export(['K2-SeqExprInstanceOf-64'/1]).
-export(['K2-SeqExprInstanceOf-65'/1]).
-export(['K2-SeqExprInstanceOf-66'/1]).
-export(['K2-SeqExprInstanceOf-67'/1]).
-export(['K2-SeqExprInstanceOf-68'/1]).
-export(['K2-SeqExprInstanceOf-69'/1]).
-export(['K2-SeqExprInstanceOf-70'/1]).
-export(['K2-SeqExprInstanceOf-71'/1]).
-export(['K2-SeqExprInstanceOf-72'/1]).
-export(['K2-SeqExprInstanceOf-73'/1]).
-export(['K2-SeqExprInstanceOf-74'/1]).
-export(['K2-SeqExprInstanceOf-75'/1]).
-export(['K2-SeqExprInstanceOf-76'/1]).
-export(['K2-SeqExprInstanceOf-77'/1]).
-export(['K2-SeqExprInstanceOf-78'/1]).
-export(['K2-SeqExprInstanceOf-79'/1]).
-export(['K2-SeqExprInstanceOf-80'/1]).
-export(['K2-SeqExprInstanceOf-81'/1]).
-export(['K2-SeqExprInstanceOf-82'/1]).
-export(['K2-SeqExprInstanceOf-83'/1]).
-export(['K2-SeqExprInstanceOf-84'/1]).
-export(['K2-SeqExprInstanceOf-85'/1]).
-export(['K2-SeqExprInstanceOf-86'/1]).
-export(['K2-SeqExprInstanceOf-87'/1]).
-export(['K2-SeqExprInstanceOf-88'/1]).
-export(['K2-SeqExprInstanceOf-89'/1]).
-export(['K2-SeqExprInstanceOf-90'/1]).
-export(['K2-SeqExprInstanceOf-91'/1]).
-export(['K2-SeqExprInstanceOf-92'/1]).
-export(['K2-SeqExprInstanceOf-93'/1]).
-export(['K2-SeqExprInstanceOf-94'/1]).
-export(['K2-SeqExprInstanceOf-95'/1]).
-export(['K2-SeqExprInstanceOf-96'/1]).
-export(['K2-SeqExprInstanceOf-97'/1]).
-export(['K2-SeqExprInstanceOf-98'/1]).
-export(['K2-SeqExprInstanceOf-99'/1]).
-export(['K2-SeqExprInstanceOf-100'/1]).
-export(['cbcl-instance-of-001'/1]).
suite() ->[{timetrap,{seconds,5}}].
end_per_suite(_Config) -> erlang:erase().
init_per_suite(Config) -> ok
,Config.
all() -> [
   'instanceof1',
   'instanceof2',
   'instanceof3',
   'instanceof4',
   'instanceof5',
   'instanceof6',
   'instanceof7',
   'instanceof8',
   'instanceof9',
   'instanceof10',
   'instanceof11',
   'instanceof12',
   'instanceof13',
   'instanceof14',
   'instanceof15',
   'instanceof16',
   'instanceof17',
   'instanceof18',
   'instanceof19',
   'instanceof20',
   'instanceof21',
   'instanceof22',
   'instanceof23',
   'instanceof24',
   'instanceof25',
   'instanceof26',
   'instanceof27',
   'instanceof28',
   'instanceof29',
   'instanceof30',
   'instanceof31',
   'instanceof32',
   'instanceof33',
   'instanceof34',
   'instanceof35',
   'instanceof36',
   'instanceof37',
   'instanceof38',
   'instanceof39',
   'instanceof40',
   'instanceof41',
   'instanceof42',
   'instanceof43',
   'instanceof44',
   'instanceof45',
   'instanceof46',
   'instanceof47',
   'instanceof48',
   'instanceof49',
   'instanceof50',
   'instanceof51',
   'instanceof52',
   'instanceof53',
   'instanceof54',
   'instanceof55',
   'instanceof56',
   'instanceof57',
   'instanceof58',
   'instanceof59',
   'instanceof60',
   'instanceof61',
   'instanceof62',
   'instanceof63',
   'instanceof64',
   'instanceof65',
   'instanceof66',
   'instanceof67',
   'instanceof68',
   'instanceof69',
   'instanceof70',
   'instanceof71',
   'instanceof72',
   'instanceof73',
   'instanceof74',
   'instanceof75',
   'instanceof76',
   'instanceof77',
   'instanceof78',
   'instanceof79',
   'instanceof80',
   'instanceof81',
   'instanceof82',
   'instanceof83',
   'instanceof84',
   'instanceof85',
   'instanceof86',
   'instanceof87',
   'instanceof88',
   'instanceof89',
   'instanceof90',
   'instanceof91',
   'instanceof92',
   'instanceof93',
   'instanceof94',
   'instanceof95',
   'instanceof96',
   'instanceof97',
   'instanceof98',
   'instanceof99',
   'instanceof100',
   'instanceof101',
   'instanceof102',
   'instanceof103',
   'instanceof104',
   'instanceof105',
   'instanceof106',
   'instanceof107',
   'instanceof108',
   'instanceof109',
   'instanceof110',
   'instanceof111',
   'instanceof112',
   'instanceof113',
   'instanceof114',
   'instanceof115',
   'instanceof116',
   'instanceof117',
   'instanceof118',
   'instanceof119',
   'instanceof120',
   'instanceof121',
   'instanceof122',
   'instanceof123',
   'instanceof124',
   'instanceof125',
   'instanceof126',
   'instanceof127',
   'instanceof128',
   'instanceof129',
   'instanceof130',
   'instanceof131',
   'instanceof132',
   'instanceof133',
   'instanceof134',
   'instanceof135',
   'instanceof136',
   'instanceof137',
   'instanceof138',
   'instanceof139',
   'instanceof140',
   'instanceof141',
   'K-SeqExprInstanceOf-1',
   'K-SeqExprInstanceOf-2',
   'K-SeqExprInstanceOf-3',
   'K-SeqExprInstanceOf-4',
   'K-SeqExprInstanceOf-5',
   'K-SeqExprInstanceOf-6',
   'K-SeqExprInstanceOf-7',
   'K-SeqExprInstanceOf-8',
   'K-SeqExprInstanceOf-9',
   'K-SeqExprInstanceOf-10',
   'K-SeqExprInstanceOf-11',
   'K-SeqExprInstanceOf-12',
   'K-SeqExprInstanceOf-13',
   'K-SeqExprInstanceOf-14',
   'K-SeqExprInstanceOf-15',
   'K-SeqExprInstanceOf-16',
   'K-SeqExprInstanceOf-17',
   'K-SeqExprInstanceOf-18',
   'K-SeqExprInstanceOf-19',
   'K-SeqExprInstanceOf-20',
   'K-SeqExprInstanceOf-21',
   'K-SeqExprInstanceOf-22',
   'K-SeqExprInstanceOf-23',
   'K-SeqExprInstanceOf-24',
   'K-SeqExprInstanceOf-25',
   'K-SeqExprInstanceOf-26',
   'K-SeqExprInstanceOf-27',
   'K-SeqExprInstanceOf-28',
   'K-SeqExprInstanceOf-29',
   'K-SeqExprInstanceOf-30',
   'K-SeqExprInstanceOf-31',
   'K-SeqExprInstanceOf-32',
   'K-SeqExprInstanceOf-33',
   'K-SeqExprInstanceOf-34',
   'K-SeqExprInstanceOf-35',
   'K-SeqExprInstanceOf-36',
   'K-SeqExprInstanceOf-37',
   'K-SeqExprInstanceOf-38',
   'K-SeqExprInstanceOf-39',
   'K-SeqExprInstanceOf-40',
   'K-SeqExprInstanceOf-41',
   'K-SeqExprInstanceOf-42',
   'K-SeqExprInstanceOf-43',
   'K-SeqExprInstanceOf-44',
   'K-SeqExprInstanceOf-45',
   'K-SeqExprInstanceOf-46',
   'K-SeqExprInstanceOf-47',
   'K-SeqExprInstanceOf-48',
   'K-SeqExprInstanceOf-49',
   'K-SeqExprInstanceOf-50',
   'K-SeqExprInstanceOf-51',
   'K-SeqExprInstanceOf-52',
   'K-SeqExprInstanceOf-53',
   'K-SeqExprInstanceOf-54',
   'K-SeqExprInstanceOf-55',
   'K-SeqExprInstanceOf-56',
   'K-SeqExprInstanceOf-57',
   'K-SeqExprInstanceOf-58',
   'K-SeqExprInstanceOf-59',
   'K-SeqExprInstanceOf-60',
   'K-SeqExprInstanceOf-61',
   'K-SeqExprInstanceOf-62',
   'K-SeqExprInstanceOf-63',
   'K-SeqExprInstanceOf-64',
   'K-SeqExprInstanceOf-65',
   'K-SeqExprInstanceOf-66',
   'K2-SeqExprInstanceOf-1',
   'K2-SeqExprInstanceOf-2',
   'K2-SeqExprInstanceOf-3',
   'K2-SeqExprInstanceOf-4',
   'K2-SeqExprInstanceOf-5',
   'K2-SeqExprInstanceOf-6',
   'K2-SeqExprInstanceOf-7',
   'K2-SeqExprInstanceOf-8',
   'K2-SeqExprInstanceOf-9',
   'K2-SeqExprInstanceOf-10',
   'K2-SeqExprInstanceOf-11',
   'K2-SeqExprInstanceOf-12',
   'K2-SeqExprInstanceOf-13',
   'K2-SeqExprInstanceOf-14',
   'K2-SeqExprInstanceOf-15',
   'K2-SeqExprInstanceOf-16',
   'K2-SeqExprInstanceOf-17',
   'K2-SeqExprInstanceOf-18',
   'K2-SeqExprInstanceOf-19',
   'K2-SeqExprInstanceOf-20',
   'K2-SeqExprInstanceOf-21',
   'K2-SeqExprInstanceOf-22',
   'K2-SeqExprInstanceOf-23',
   'K2-SeqExprInstanceOf-24',
   'K2-SeqExprInstanceOf-25',
   'K2-SeqExprInstanceOf-26',
   'K2-SeqExprInstanceOf-27',
   'K2-SeqExprInstanceOf-28',
   'K2-SeqExprInstanceOf-29',
   'K2-SeqExprInstanceOf-30',
   'K2-SeqExprInstanceOf-31',
   'K2-SeqExprInstanceOf-32',
   'K2-SeqExprInstanceOf-33',
   'K2-SeqExprInstanceOf-34',
   'K2-SeqExprInstanceOf-35',
   'K2-SeqExprInstanceOf-36',
   'K2-SeqExprInstanceOf-37',
   'K2-SeqExprInstanceOf-38',
   'K2-SeqExprInstanceOf-39',
   'K2-SeqExprInstanceOf-40',
   'K2-SeqExprInstanceOf-41',
   'K2-SeqExprInstanceOf-42',
   'K2-SeqExprInstanceOf-43',
   'K2-SeqExprInstanceOf-44',
   'K2-SeqExprInstanceOf-45',
   'K2-SeqExprInstanceOf-46',
   'K2-SeqExprInstanceOf-47',
   'K2-SeqExprInstanceOf-48',
   'K2-SeqExprInstanceOf-49',
   'K2-SeqExprInstanceOf-50',
   'K2-SeqExprInstanceOf-51',
   'K2-SeqExprInstanceOf-52',
   'K2-SeqExprInstanceOf-53',
   'K2-SeqExprInstanceOf-54',
   'K2-SeqExprInstanceOf-55',
   'K2-SeqExprInstanceOf-56',
   'K2-SeqExprInstanceOf-57',
   'K2-SeqExprInstanceOf-58',
   'K2-SeqExprInstanceOf-59',
   'K2-SeqExprInstanceOf-60',
   'K2-SeqExprInstanceOf-61',
   'K2-SeqExprInstanceOf-62',
   'K2-SeqExprInstanceOf-63',
   'K2-SeqExprInstanceOf-64',
   'K2-SeqExprInstanceOf-65',
   'K2-SeqExprInstanceOf-66',
   'K2-SeqExprInstanceOf-67',
   'K2-SeqExprInstanceOf-68',
   'K2-SeqExprInstanceOf-69',
   'K2-SeqExprInstanceOf-70',
   'K2-SeqExprInstanceOf-71',
   'K2-SeqExprInstanceOf-72',
   'K2-SeqExprInstanceOf-73',
   'K2-SeqExprInstanceOf-74',
   'K2-SeqExprInstanceOf-75',
   'K2-SeqExprInstanceOf-76',
   'K2-SeqExprInstanceOf-77',
   'K2-SeqExprInstanceOf-78',
   'K2-SeqExprInstanceOf-79',
   'K2-SeqExprInstanceOf-80',
   'K2-SeqExprInstanceOf-81',
   'K2-SeqExprInstanceOf-82',
   'K2-SeqExprInstanceOf-83',
   'K2-SeqExprInstanceOf-84',
   'K2-SeqExprInstanceOf-85',
   'K2-SeqExprInstanceOf-86',
   'K2-SeqExprInstanceOf-87',
   'K2-SeqExprInstanceOf-88',
   'K2-SeqExprInstanceOf-89',
   'K2-SeqExprInstanceOf-90',
   'K2-SeqExprInstanceOf-91',
   'K2-SeqExprInstanceOf-92',
   'K2-SeqExprInstanceOf-93',
   'K2-SeqExprInstanceOf-94',
   'K2-SeqExprInstanceOf-95',
   'K2-SeqExprInstanceOf-96',
   'K2-SeqExprInstanceOf-97',
   'K2-SeqExprInstanceOf-98',
   'K2-SeqExprInstanceOf-99',
   'K2-SeqExprInstanceOf-100',
   'cbcl-instance-of-001'].
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
environment('ListUnionTypes') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/ValidateExpr/listunion.xsd","http://www.w3.org/XQueryTest/ListUnionTypes"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
];
environment('union-List-defined-Types') ->
[{sources, []},
{schemas, [{"file:///C:/git/zadean/xqerl/test/QT3_1_0/prod/SchemaImport/unionListDefined.xsd","http://www.w3.org/XQueryTest/unionListDefined"}]},
{collections, []},
{'static-base-uri', []},
{params, []},
{namespaces, []},
{resources, []},
{modules, []}
].
'instanceof1'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof2'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof3'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof4'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof5'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof6'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof7'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof8'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof9'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof10'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof11'(_Config) ->
   Qry = "xs:dateTime(\"2002-04-02T12:00:00Z\") instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof12'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof13'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof14'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof15'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof16'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof17'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof18'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof19'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof20'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof21'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof22'(_Config) ->
   Qry = "xs:time(\"13:20:10.5Z\") instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof23'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof24'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof25'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof26'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof27'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof28'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof29'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof30'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof31'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof32'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof33'(_Config) ->
   Qry = "xs:date(\"2000-01-01+05:00\") instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof34'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof35'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof36'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof37'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof38'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof39'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof40'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof41'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof42'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof43'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof44'(_Config) ->
   Qry = "xs:boolean(\"true\") instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof45'(_Config) ->
   Qry = "1267.43233E12 instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof46'(_Config) ->
   Qry = "1267.43233E12 instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof47'(_Config) ->
   Qry = "1267.43233E12 instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof48'(_Config) ->
   Qry = "1267.43233E12 instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof49'(_Config) ->
   Qry = "1267.43233E12 instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof50'(_Config) ->
   Qry = "1267.43233E12 instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof51'(_Config) ->
   Qry = "1267.43233E12 instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof52'(_Config) ->
   Qry = "1267.43233E12 instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof53'(_Config) ->
   Qry = "1267.43233E12 instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof54'(_Config) ->
   Qry = "1267.43233E12 instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof55'(_Config) ->
   Qry = "1267.43233E12 instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof56'(_Config) ->
   Qry = "1267.43233E12 instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof57'(_Config) ->
   Qry = "1267.43233E12 instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof58'(_Config) ->
   Qry = "1267.43233E12 instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof59'(_Config) ->
   Qry = "1267.43233E12 instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof60'(_Config) ->
   Qry = "1267.43233E12 instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof61'(_Config) ->
   Qry = "1267.43233E12 instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof62'(_Config) ->
   Qry = "1267.43233E12 instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof63'(_Config) ->
   Qry = "1267.43233E12 instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof64'(_Config) ->
   Qry = "1267.43233E12 instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof65'(_Config) ->
   Qry = "1267.43233E12 instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof66'(_Config) ->
   Qry = "1267.43233E12 instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof67'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof68'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof69'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof70'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof71'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof72'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof73'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof74'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof75'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof76'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof77'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com\") instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof78'(_Config) ->
   Qry = "\"A String Function\" instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof79'(_Config) ->
   Qry = "\"A String Function\" instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof80'(_Config) ->
   Qry = "\"A String Function\" instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof81'(_Config) ->
   Qry = "\"A String Function\" instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof82'(_Config) ->
   Qry = "\"A String Function\" instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof83'(_Config) ->
   Qry = "\"A String Function\" instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof84'(_Config) ->
   Qry = "\"A String Function\" instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof85'(_Config) ->
   Qry = "\"A String Function\" instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof86'(_Config) ->
   Qry = "\"A String Function\" instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof87'(_Config) ->
   Qry = "\"A String Function\" instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof88'(_Config) ->
   Qry = "\"A String Function\" instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof89'(_Config) ->
   Qry = "12678967.543233 instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof90'(_Config) ->
   Qry = "12678967.543233 instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof91'(_Config) ->
   Qry = "12678967.543233 instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof92'(_Config) ->
   Qry = "12678967.543233 instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof93'(_Config) ->
   Qry = "12678967.543233 instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof94'(_Config) ->
   Qry = "12678967.543233 instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof95'(_Config) ->
   Qry = "12678967.543233 instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof96'(_Config) ->
   Qry = "12678967.543233 instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof97'(_Config) ->
   Qry = "12678967.543233 instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof98'(_Config) ->
   Qry = "12678967.543233 instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof99'(_Config) ->
   Qry = "12678967.543233 instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof100'(_Config) ->
   Qry = "12678967543233 instance of xs:dateTime",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof101'(_Config) ->
   Qry = "12678967543233 instance of xs:time",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof102'(_Config) ->
   Qry = "12678967543233 instance of xs:date",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof103'(_Config) ->
   Qry = "12678967543233 instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof104'(_Config) ->
   Qry = "12678967543233 instance of xs:float",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof105'(_Config) ->
   Qry = "12678967543233 instance of xs:double",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof106'(_Config) ->
   Qry = "12678967543233 instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof107'(_Config) ->
   Qry = "12678967543233 instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof108'(_Config) ->
   Qry = "12678967543233 instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof109'(_Config) ->
   Qry = "12678967543233 instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof110'(_Config) ->
   Qry = "12678967543233 instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof111'(_Config) ->
   Qry = "xs:NMTOKEN('abc') instance of xs:NMTOKENS",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'instanceof112'(_Config) ->
   {skip,"schemaImport"}.
'instanceof113'(_Config) ->
   {skip,"schemaImport"}.
'instanceof114'(_Config) ->
   {skip,"schemaImport"}.
'instanceof115'(_Config) ->
   {skip,"schemaImport"}.
'instanceof116'(_Config) ->
   {skip,"schemaImport"}.
'instanceof117'(_Config) ->
   {skip,"schemaImport"}.
'instanceof118'(_Config) ->
   {skip,"schemaImport"}.
'instanceof119'(_Config) ->
   {skip,"schemaImport"}.
'instanceof120'(_Config) ->
   {skip,"schemaImport"}.
'instanceof121'(_Config) ->
   Qry = "\n         name#1 instance of function(*)\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof122'(_Config) ->
   Qry = "\n         name#1 instance of function(node()?) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof123'(_Config) ->
   Qry = "\n         name#1 instance of function(node()) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof124'(_Config) ->
   Qry = "\n         name#1 instance of function(element(A)?) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof125'(_Config) ->
   Qry = "\n         name#1 instance of function(element(A)) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof126'(_Config) ->
   Qry = "\n         name#1 instance of function(element(A)) as xs:anyAtomicType\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof127'(_Config) ->
   Qry = "\n         name#1 instance of function(element(A)) as xs:string+\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof128'(_Config) ->
   Qry = "\n         name#1 instance of function(element(A)) as xs:NCName\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof129'(_Config) ->
   Qry = "\n         name#1 instance of function(node()*) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof130'(_Config) ->
   Qry = "\n         name#1 instance of function(item()) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof131'(_Config) ->
   Qry = "\n         name#0 instance of function(item()) as xs:string\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof132'(_Config) ->
   Qry = "\n         filter#2 instance of function(item()*, function(item()) as xs:boolean) as item()*\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof133'(_Config) ->
   Qry = "\n         filter#2 instance of function(item()*, function(item()*) as xs:boolean) as item()*\n       ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof134'(_Config) ->
   Qry = "\n         filter#2 instance of function(function(*), item()*) as item()*\n       ",
   Env = xqerl_test:handle_environment(environment('union-List-defined-Types')),
   Qry1 = lists:flatten(Env ++ Qry),
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n       ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'instanceof135'(_Config) ->
   {skip,"schemaImport"}.
'instanceof136'(_Config) ->
   {skip,"schemaImport"}.
'instanceof137'(_Config) ->
   {skip,"schemaImport"}.
'instanceof138'(_Config) ->
   {skip,"schemaImport"}.
'instanceof139'(_Config) ->
   {skip,"schemaImport"}.
'instanceof140'(_Config) ->
   {skip,"schemaImport"}.
'instanceof141'(_Config) ->
   {skip,"schemaImport"}.
'K-SeqExprInstanceOf-1'(_Config) ->
   Qry = "1 instance of item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-2'(_Config) ->
   Qry = "1 instance of item()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-3'(_Config) ->
   Qry = "1 instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-4'(_Config) ->
   Qry = "1 instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-5'(_Config) ->
   Qry = "1 instance of xs:integer?",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-6'(_Config) ->
   Qry = "1 instance of xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-7'(_Config) ->
   Qry = "1 instance of xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-8'(_Config) ->
   Qry = "false() instance of xs:boolean",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-9'(_Config) ->
   Qry = "false() instance of xs:anyAtomicType",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-10'(_Config) ->
   Qry = "\"a string\" instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-11'(_Config) ->
   Qry = "not(\"false\" instance of xs:boolean)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-12'(_Config) ->
   Qry = "1.1 instance of xs:decimal",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-13'(_Config) ->
   Qry = "not(1.1 instance of xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-14'(_Config) ->
   Qry = "xs:anyURI(\"http://www.example.com/\") instance of xs:anyURI",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-15'(_Config) ->
   Qry = "not(xs:anyURI(\"http://www.example.com/\") instance of xs:string)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-16'(_Config) ->
   Qry = "not(\"a string\" instance of xs:untypedAtomic)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-17'(_Config) ->
   Qry = "(1, 2, 3, 4, 5) instance of xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-18'(_Config) ->
   Qry = "not((1, 2, 3, 4, 5) instance of xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-19'(_Config) ->
   Qry = "not((1, 2, 3, 4, 5) instance of xs:integer?)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-20'(_Config) ->
   Qry = "(1, 2, 3, 4, 5) instance of xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-21'(_Config) ->
   Qry = "(1, 2, 3, 4, 5) instance of item()+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-22'(_Config) ->
   Qry = "not((1, 2, \"a string\", 4, 5) instance of xs:integer*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-23'(_Config) ->
   Qry = "not((1, 2, 1.1, 4, 5) instance of xs:integer*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-24'(_Config) ->
   Qry = "not((1, 2, \"a string\", 4, 5) instance of xs:string*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-25'(_Config) ->
   Qry = "(1, 2, \"a string\", 4, 5) instance of xs:anyAtomicType*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-26'(_Config) ->
   Qry = "(1, 2, count(\"one\"), 4, 5) instance of xs:integer+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-27'(_Config) ->
   Qry = "not(1 instance of text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-28'(_Config) ->
   Qry = "not(1 instance of node())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-29'(_Config) ->
   Qry = "not(1 instance of element())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-30'(_Config) ->
   Qry = "not(1 instance of processing-instruction())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-31'(_Config) ->
   Qry = "not(1 instance of comment())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-32'(_Config) ->
   Qry = "not(1 instance of text())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-33'(_Config) ->
   Qry = "not(1 instance of node())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-34'(_Config) ->
   Qry = "not(1 instance of element())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-35'(_Config) ->
   Qry = "not(1 instance of processing-instruction())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-36'(_Config) ->
   Qry = "not(1 instance of comment())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-37'(_Config) ->
   Qry = "not(1 instance of empty-sequence())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-38'(_Config) ->
   Qry = "not( (1, 2, 3) instance of empty-sequence())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-39'(_Config) ->
   Qry = "() instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-40'(_Config) ->
   Qry = "() instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-41'(_Config) ->
   Qry = "(((()))) instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-42'(_Config) ->
   Qry = "((), (), ()) instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-43'(_Config) ->
   Qry = "((), \"xs:string\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-44'(_Config) ->
   Qry = "(\"xs:string\", (), \"xs:string\") instance of xs:string+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-45'(_Config) ->
   Qry = "(1.1, (), 1) instance of xs:decimal+",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-46'(_Config) ->
   Qry = "not(\"a string\" instance of xs:NOTATION)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-47'(_Config) ->
   Qry = "not(\"a string\" instance of xs:QName)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-48'(_Config) ->
   Qry = "1.1 instance of xs:decimal and not(1.1 instance of xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-49'(_Config) ->
   Qry = "3 instance of prefixDoesNotExist:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0081" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0081'}) end.
'K-SeqExprInstanceOf-50'(_Config) ->
   Qry = "3 instance of xs:doesNotExist",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'K-SeqExprInstanceOf-51'(_Config) ->
   Qry = "3 instance of xs:qname",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'K-SeqExprInstanceOf-52'(_Config) ->
   Qry = "3 instance of none",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'K-SeqExprInstanceOf-53'(_Config) ->
   Qry = "3 instance of void",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'XPST0051'}) end.
'K-SeqExprInstanceOf-54'(_Config) ->
   Qry = "3 instance of none()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-55'(_Config) ->
   Qry = "3 instance of void()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0051") orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "XPST0003") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-56'(_Config) ->
   Qry = "error() instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-57'(_Config) ->
   Qry = "error() instance of xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-58'(_Config) ->
   Qry = "error() instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-59'(_Config) ->
   Qry = "(error(), 1) instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',false}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-60'(_Config) ->
   Qry = "(1, error()) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqExprInstanceOf-61'(_Config) ->
   Qry = "(error(), 1) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   if is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000" -> {comment, "Correct error"};
           true -> ct:fail({Res, 'FOER0000'}) end.
'K-SeqExprInstanceOf-62'(_Config) ->
   Qry = "(1, error()) instance of xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-63'(_Config) ->
   Qry = "(error(), 1) instance of xs:integer*",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n            \n            \n         \n      ",
 case (xqerl_seq2:singleton_value(Res) == {xqAtomicValue,'xs:boolean',true}) orelse (is_tuple(Res) andalso element(1,Res) == 'xqError' andalso element(4,element(2,Res)) == "FOER0000") of true -> {comment, "any-of"};
   Q -> ct:fail(['any-of', {Res,Exp,Q}]) end.
'K-SeqExprInstanceOf-64'(_Config) ->
   Qry = "not(((10)div(3)) instance of xs:integer)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-65'(_Config) ->
   Qry = "((10)idiv(3)) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K-SeqExprInstanceOf-66'(_Config) ->
   Qry = "((10)mod(3)) instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-1'(_Config) ->
   Qry = "<e/> instance of element()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-2'(_Config) ->
   Qry = "<e/> instance of element(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-3'(_Config) ->
   Qry = "<e/> instance of element(e)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-4'(_Config) ->
   Qry = "<e/> instance of element(name)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-5'(_Config) ->
   Qry = "<e/> instance of attribute()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-6'(_Config) ->
   Qry = "<e/> instance of attribute(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-7'(_Config) ->
   Qry = "<e/> instance of attribute(e)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-8'(_Config) ->
   Qry = "attribute e{\"content\"} instance of attribute(e)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-9'(_Config) ->
   Qry = "attribute e{\"content\"} instance of attribute()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-10'(_Config) ->
   Qry = "attribute e{\"content\"} instance of attribute(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-11'(_Config) ->
   Qry = "attribute e{\"content\"} instance of element(e)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-12'(_Config) ->
   Qry = "attribute e{\"content\"} instance of element()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-13'(_Config) ->
   Qry = "attribute e{\"content\"} instance of element(*)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-14'(_Config) ->
   Qry = "attribute e{\"content\"} instance of attribute(name)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-15'(_Config) ->
   Qry = "xs:nonPositiveInteger(0) instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-16'(_Config) ->
   Qry = "xs:negativeInteger(-1) instance of xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-17'(_Config) ->
   Qry = "xs:long(0) instance of xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-18'(_Config) ->
   Qry = "xs:int(0) instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-19'(_Config) ->
   Qry = "xs:short(0) instance of xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-20'(_Config) ->
   Qry = "xs:byte(0) instance of xs:byte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-21'(_Config) ->
   Qry = "xs:nonNegativeInteger(0) instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-22'(_Config) ->
   Qry = "xs:nonNegativeInteger(0) instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-23'(_Config) ->
   Qry = "xs:unsignedLong(0) instance of xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-24'(_Config) ->
   Qry = "xs:unsignedInt(0) instance of xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-25'(_Config) ->
   Qry = "xs:unsignedShort(0) instance of xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-26'(_Config) ->
   Qry = "xs:unsignedByte(0) instance of xs:unsignedByte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-27'(_Config) ->
   Qry = "xs:positiveInteger(1) instance of xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-28'(_Config) ->
   Qry = "xs:normalizedString(\"NCName\") instance of xs:normalizedString",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-29'(_Config) ->
   Qry = "xs:token(\"NCName\") instance of xs:token",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-30'(_Config) ->
   Qry = "xs:language(\"NCName\") instance of xs:language",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-31'(_Config) ->
   Qry = "xs:NMTOKEN(\"NCName\") instance of xs:NMTOKEN",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-32'(_Config) ->
   Qry = "xs:Name(\"NCName\") instance of xs:Name",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-33'(_Config) ->
   Qry = "xs:NCName(\"NCName\") instance of xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-34'(_Config) ->
   Qry = "xs:ID(\"NCName\") instance of xs:ID",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-35'(_Config) ->
   Qry = "xs:IDREF(\"NCName\") instance of xs:IDREF",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-36'(_Config) ->
   Qry = "xs:ENTITY(\"NCName\") instance of xs:ENTITY",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-37'(_Config) ->
   Qry = "xs:normalizedString(\"ncname\") instance of xs:string",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-38'(_Config) ->
   Qry = "xs:token(\"ncname\") instance of xs:normalizedString",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-39'(_Config) ->
   Qry = "xs:language(\"ncname\") instance of xs:token",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-40'(_Config) ->
   Qry = "xs:NMTOKEN(\"ncname\") instance of xs:token",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-41'(_Config) ->
   Qry = "xs:Name(\"ncname\") instance of xs:token",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-42'(_Config) ->
   Qry = "xs:NCName(\"ncname\") instance of xs:Name",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-43'(_Config) ->
   Qry = "xs:ID(\"ncname\") instance of xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-44'(_Config) ->
   Qry = "xs:IDREF(\"ncname\") instance of xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-45'(_Config) ->
   Qry = "xs:ENTITY(\"ncname\") instance of xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-46'(_Config) ->
   Qry = "xs:nonPositiveInteger(\"0\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-47'(_Config) ->
   Qry = "xs:negativeInteger(\"-1\") instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-48'(_Config) ->
   Qry = "xs:long(\"0\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-49'(_Config) ->
   Qry = "xs:int(\"0\") instance of xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-50'(_Config) ->
   Qry = "xs:short(\"0\") instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-51'(_Config) ->
   Qry = "xs:byte(\"0\") instance of xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-52'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"0\") instance of xs:integer",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-53'(_Config) ->
   Qry = "xs:unsignedLong(\"0\") instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-54'(_Config) ->
   Qry = "xs:unsignedInt(\"0\") instance of xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-55'(_Config) ->
   Qry = "xs:unsignedShort(\"0\") instance of xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-56'(_Config) ->
   Qry = "xs:unsignedByte(\"0\") instance of xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-57'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-58'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"1\") instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-59'(_Config) ->
   Qry = "xs:nonNegativeInteger(\"1\") instance of xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-60'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") instance of xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-61'(_Config) ->
   Qry = "xs:positiveInteger(\"1\") instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-62'(_Config) ->
   Qry = "xs:long(\"1\") instance of xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-63'(_Config) ->
   Qry = "xs:long(\"1\") instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-64'(_Config) ->
   Qry = "xs:long(\"1\") instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-65'(_Config) ->
   Qry = "xs:long(\"1\") instance of xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-66'(_Config) ->
   Qry = "xs:token(\"ncname\") instance of xs:NCName",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-67'(_Config) ->
   Qry = "xs:ID(\"ncname\") instance of xs:IDREF",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-68'(_Config) ->
   Qry = "xs:ENTITY(\"ncname\") instance of xs:IDREF",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-69'(_Config) ->
   Qry = "xs:language(\"ncname\") instance of xs:NMTOKEN",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-70'(_Config) ->
   Qry = "xs:Name(\"ncname\") instance of xs:language",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-71'(_Config) ->
   Qry = "xs:normalizedString(\"ncname\") instance of xs:token",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',false} -> {comment, "assert-false"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-72'(_Config) ->
   Qry = "<e a=\"\"/>/attribute::a instance of attribute(a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-73'(_Config) ->
   Qry = "<e a=\"\"/>/@a instance of attribute(a)",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-74'(_Config) ->
   Qry = "xs:byte(xs:double(\"1\")) instance of xs:byte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-75'(_Config) ->
   Qry = "xs:nonPositiveInteger(xs:double(\"0\")) instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-76'(_Config) ->
   Qry = "xs:negativeInteger(xs:double(\"-4\")) instance of xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-77'(_Config) ->
   Qry = "xs:long(xs:double(\"-4\")) instance of xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-78'(_Config) ->
   Qry = "xs:int(xs:double(\"-4\")) instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-79'(_Config) ->
   Qry = "xs:short(xs:double(\"-4\")) instance of xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-80'(_Config) ->
   Qry = "xs:nonNegativeInteger(xs:double(\"4\")) instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-81'(_Config) ->
   Qry = "xs:unsignedLong(xs:double(\"4\")) instance of xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-82'(_Config) ->
   Qry = "xs:unsignedInt(xs:double(\"4\")) instance of xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-83'(_Config) ->
   Qry = "xs:unsignedShort(xs:double(\"4\")) instance of xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-84'(_Config) ->
   Qry = "xs:unsignedByte(xs:double(\"4\")) instance of xs:unsignedByte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-85'(_Config) ->
   Qry = "xs:positiveInteger(xs:double(\"4\")) instance of xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-86'(_Config) ->
   Qry = "xs:byte(xs:float(\"1\")) instance of xs:byte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-87'(_Config) ->
   Qry = "xs:nonPositiveInteger(xs:float(\"0\")) instance of xs:nonPositiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-88'(_Config) ->
   Qry = "xs:negativeInteger(xs:float(\"-4\")) instance of xs:negativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-89'(_Config) ->
   Qry = "xs:long(xs:float(\"-4\")) instance of xs:long",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-90'(_Config) ->
   Qry = "xs:int(xs:float(\"-4\")) instance of xs:int",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-91'(_Config) ->
   Qry = "xs:short(xs:float(\"-4\")) instance of xs:short",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-92'(_Config) ->
   Qry = "xs:nonNegativeInteger(xs:float(\"4\")) instance of xs:nonNegativeInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-93'(_Config) ->
   Qry = "xs:unsignedLong(xs:float(\"4\")) instance of xs:unsignedLong",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-94'(_Config) ->
   Qry = "xs:unsignedInt(xs:float(\"4\")) instance of xs:unsignedInt",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-95'(_Config) ->
   Qry = "xs:unsignedShort(xs:float(\"4\")) instance of xs:unsignedShort",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-96'(_Config) ->
   Qry = "xs:unsignedByte(xs:float(\"4\")) instance of xs:unsignedByte",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-97'(_Config) ->
   Qry = "xs:positiveInteger(xs:float(\"4\")) instance of xs:positiveInteger",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-98'(_Config) ->
   Qry = "node-name(text {\"\"}) instance of empty-sequence()",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         \n      ",
   case xqerl_seq2:singleton_value(Res) of {xqAtomicValue,'xs:boolean',true} -> {comment, "assert-true"};
           _ -> ct:fail({Res,Exp}) end.
'K2-SeqExprInstanceOf-99'(_Config) ->
   Qry = "<e attr=\"\"/>/(@attr instance of attribute(), @* instance of attribute())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true true\n      ",
   case xqerl_test:string_value(Res) of
             "true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'K2-SeqExprInstanceOf-100'(_Config) ->
   Qry = "<a><b/></a>/(b instance of element(), * instance of element())",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true true\n      ",
   case xqerl_test:string_value(Res) of
             "true true" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
'cbcl-instance-of-001'(_Config) ->
   Qry = "\n        for $x in (xs:integer(1), xs:decimal(1)) return (((($x + 1) * 2) - 1) instance of xs:integer)\n      ",
   Qry1 = Qry,
   Res = xqerl:run(Qry1),
   ResXml = xqerl_node:to_xml(Res),
   Options = [{'result',Res}],
   Exp = "\n         true false\n      ",
   case xqerl_test:string_value(Res) of
             "true false" -> {comment, "assert-string-value"};
             _ -> ct:fail({xqerl_test:string_value(Res),Exp}) end.
