-module('prod_CastExpr_schema_SUITE').

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

-export(['qname-cast-1'/1]).
-export(['qname-cast-2'/1]).
-export(['qname-cast-3'/1]).
-export(['qname-cast-4'/1]).
-export(['notation-cast-2'/1]).
-export(['notation-cast-3'/1]).
-export(['casthcds1'/1]).
-export(['casthcds2'/1]).
-export(['casthcds3'/1]).
-export(['casthcds4'/1]).
-export(['casthcds5'/1]).
-export(['casthcds6'/1]).
-export(['casthcds7'/1]).
-export(['casthcds8'/1]).
-export(['casthcds9'/1]).
-export(['casthcds10'/1]).
-export(['casthcds11'/1]).
-export(['casthcds12'/1]).
-export(['casthcds13'/1]).
-export(['casthcds14'/1]).
-export(['casthcds15'/1]).
-export(['casthcds16'/1]).
-export(['casthcds17'/1]).
-export(['casthcds18'/1]).
-export(['casthcds19'/1]).
-export(['casthcds20'/1]).
-export(['casthcds21'/1]).
-export(['casthcds22'/1]).
-export(['casthcds23'/1]).
-export(['casthcds24'/1]).
-export(['casthcds25'/1]).
-export(['casthcds26'/1]).
-export(['casthcds27'/1]).
-export(['casthcds28'/1]).
-export(['casthcds29'/1]).
-export(['casthcds30'/1]).
-export(['casthcds31'/1]).
-export(['casthcds32'/1]).
-export(['casthcds33'/1]).
-export(['casthcds34'/1]).
-export(['casthcds35'/1]).
-export(['casthcds36'/1]).
-export(['casthcds37'/1]).
-export(['casthcds38'/1]).
-export(['casthcds39'/1]).
-export(['casthcds40'/1]).
-export(['casthcds41'/1]).
-export(['casthcds42'/1]).
-export(['user-defined-1'/1]).
-export(['user-defined-2'/1]).
-export(['user-defined-3'/1]).
-export(['user-defined-4'/1]).
-export(['user-defined-5'/1]).
-export(['user-defined-6'/1]).
-export(['user-defined-7'/1]).
-export(['user-defined-8'/1]).
-export(['user-defined-9'/1]).
-export(['user-defined-10'/1]).
-export(['CastAs-UnionType-1'/1]).
-export(['CastAs-UnionType-2'/1]).
-export(['CastAs-UnionType-3'/1]).
-export(['CastAs-UnionType-4'/1]).
-export(['CastAs-UnionType-5'/1]).
-export(['CastAs-UnionType-5a'/1]).
-export(['CastAs-UnionType-6'/1]).
-export(['CastAs-UnionType-7'/1]).
-export(['CastAs-UnionType-8'/1]).
-export(['CastAs-UnionType-9'/1]).
-export(['CastAs-UnionType-10'/1]).
-export(['CastAs-UnionType-11'/1]).
-export(['CastAs-UnionType-12'/1]).
-export(['CastAs-UnionType-13'/1]).
-export(['CastAs-UnionType-14'/1]).
-export(['CastAs-UnionType-15'/1]).
-export(['CastAs-UnionType-16'/1]).
-export(['CastAs-UnionType-17'/1]).
-export(['CastAs-UnionType-18'/1]).
-export(['CastAs-UnionType-19'/1]).
-export(['CastAs-UnionType-20'/1]).
-export(['CastAs-UnionType-21'/1]).
-export(['CastAs-UnionType-22'/1]).
-export(['CastAs-UnionType-23'/1]).
-export(['CastAs-UnionType-24'/1]).
-export(['CastAs-UnionType-25'/1]).
-export(['CastAs-UnionType-26'/1]).
-export(['CastAs-UnionType-27'/1]).
-export(['CastAs-UnionType-28'/1]).
-export(['CastAs-UnionType-29'/1]).
-export(['CastAs-UnionType-30'/1]).
-export(['CastAs-UnionType-31'/1]).
-export(['CastAs-UnionType-32'/1]).
-export(['CastAs-UnionType-33'/1]).
-export(['CastAs-UnionType-34'/1]).
-export(['CastAs-UnionType-35'/1]).
-export(['CastAs-UnionType-36'/1]).
-export(['CastAs-UnionType-37'/1]).
-export(['CastAs-UnionType-38'/1]).
-export(['CastAs-ListType-1'/1]).
-export(['CastAs-ListType-2'/1]).
-export(['CastAs-ListType-3'/1]).
-export(['CastAs-ListType-4'/1]).
-export(['CastAs-ListType-5'/1]).
-export(['CastAs-ListType-6'/1]).
-export(['CastAs-ListType-7'/1]).
-export(['CastAs-ListType-8'/1]).
-export(['CastAs-ListType-9'/1]).
-export(['CastAs-ListType-10'/1]).
-export(['CastAs-ListType-11'/1]).
-export(['CastAs-ListType-12'/1]).
-export(['CastAs-ListType-13'/1]).
-export(['CastAs-ListType-14'/1]).
-export(['CastAs-ListType-15'/1]).
-export(['CastAs-ListType-16'/1]).
-export(['CastAs-ListType-17'/1]).
-export(['CastAs-ListType-18'/1]).
-export(['CastAs-ListType-19'/1]).
-export(['CastAs-ListType-20'/1]).
-export(['CastAs-ListType-21'/1]).
-export(['CastAs-ListType-22'/1]).
-export(['CastAs-ListType-23'/1]).
-export(['CastAs-ListType-24'/1]).
-export(['CastAs-ListType-25'/1]).
-export(['CastAs-ListType-26'/1]).
-export(['CastAs-ListType-27'/1]).
-export(['CastAs-ListType-28'/1]).
-export(['CastAs-ListType-29'/1]).
-export(['CastAs-ListType-30'/1]).
-export(['CastAs-ListType-31'/1]).
-export(['CastAs-ListType-32'/1]).

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
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'qname-cast-1',
            'qname-cast-2',
            'qname-cast-3',
            'qname-cast-4',
            'notation-cast-2',
            'notation-cast-3',
            'casthcds1',
            'casthcds2',
            'casthcds3',
            'casthcds4',
            'casthcds5',
            'casthcds6',
            'casthcds7',
            'casthcds8',
            'casthcds9',
            'casthcds10',
            'casthcds11',
            'casthcds12',
            'casthcds13',
            'casthcds14',
            'casthcds15',
            'casthcds16',
            'casthcds17'
        ]},
        {group_1, [parallel], [
            'casthcds18',
            'casthcds19',
            'casthcds20',
            'casthcds21',
            'casthcds22',
            'casthcds23',
            'casthcds24',
            'casthcds25',
            'casthcds26',
            'casthcds27',
            'casthcds28',
            'casthcds29',
            'casthcds30',
            'casthcds31',
            'casthcds32',
            'casthcds33',
            'casthcds34',
            'casthcds35',
            'casthcds36',
            'casthcds37',
            'casthcds38',
            'casthcds39',
            'casthcds40',
            'casthcds41'
        ]},
        {group_2, [parallel], [
            'casthcds42',
            'user-defined-1',
            'user-defined-2',
            'user-defined-3',
            'user-defined-4',
            'user-defined-5',
            'user-defined-6',
            'user-defined-7',
            'user-defined-8',
            'user-defined-9',
            'user-defined-10',
            'CastAs-UnionType-1',
            'CastAs-UnionType-2',
            'CastAs-UnionType-3',
            'CastAs-UnionType-4',
            'CastAs-UnionType-5',
            'CastAs-UnionType-5a',
            'CastAs-UnionType-6',
            'CastAs-UnionType-7',
            'CastAs-UnionType-8',
            'CastAs-UnionType-9',
            'CastAs-UnionType-10',
            'CastAs-UnionType-11',
            'CastAs-UnionType-12'
        ]},
        {group_3, [parallel], [
            'CastAs-UnionType-13',
            'CastAs-UnionType-14',
            'CastAs-UnionType-15',
            'CastAs-UnionType-16',
            'CastAs-UnionType-17',
            'CastAs-UnionType-18',
            'CastAs-UnionType-19',
            'CastAs-UnionType-20',
            'CastAs-UnionType-21',
            'CastAs-UnionType-22',
            'CastAs-UnionType-23',
            'CastAs-UnionType-24',
            'CastAs-UnionType-25',
            'CastAs-UnionType-26',
            'CastAs-UnionType-27',
            'CastAs-UnionType-28',
            'CastAs-UnionType-29',
            'CastAs-UnionType-30',
            'CastAs-UnionType-31',
            'CastAs-UnionType-32',
            'CastAs-UnionType-33',
            'CastAs-UnionType-34',
            'CastAs-UnionType-35',
            'CastAs-UnionType-36'
        ]},
        {group_4, [parallel], [
            'CastAs-UnionType-37',
            'CastAs-UnionType-38',
            'CastAs-ListType-1',
            'CastAs-ListType-2',
            'CastAs-ListType-3',
            'CastAs-ListType-4',
            'CastAs-ListType-5',
            'CastAs-ListType-6',
            'CastAs-ListType-7',
            'CastAs-ListType-8',
            'CastAs-ListType-9',
            'CastAs-ListType-10',
            'CastAs-ListType-11',
            'CastAs-ListType-12',
            'CastAs-ListType-13',
            'CastAs-ListType-14',
            'CastAs-ListType-15',
            'CastAs-ListType-16',
            'CastAs-ListType-17',
            'CastAs-ListType-18',
            'CastAs-ListType-19',
            'CastAs-ListType-20',
            'CastAs-ListType-21',
            'CastAs-ListType-22'
        ]},
        {group_5, [parallel], [
            'CastAs-ListType-23',
            'CastAs-ListType-24',
            'CastAs-ListType-25',
            'CastAs-ListType-26',
            'CastAs-ListType-27',
            'CastAs-ListType-28',
            'CastAs-ListType-29',
            'CastAs-ListType-30',
            'CastAs-ListType-31',
            'CastAs-ListType-32'
        ]}
    ].

environment('atomic', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [
            {filename:join(__BaseDir, "../docs/atomic.xml"), ".",
                "http://www.w3.org/fots/docs/atomic.xml"}
        ]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, [{"http://www.w3.org/XQueryTest", "atomic"}]},
        {schemas, [
            {filename:join(__BaseDir, "../docs/atomic.xsd"), "http://www.w3.org/XQueryTest"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('user-defined-types', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "../docs/userdefined.xsd"),
                "http://www.w3.org/XQueryTest/userDefinedTypes"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('union-List-defined-Types', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/unionListDefined.xsd"),
                "http://www.w3.org/XQueryTest/unionListDefined"}
        ]},
        {resources, []},
        {modules, []}
    ].

'qname-cast-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qname-cast-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qname-cast-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'qname-cast-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'notation-cast-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'notation-cast-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'casthcds42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'user-defined-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-5a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-UnionType-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, feature:schemaImport"}.

'CastAs-UnionType-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, feature:schemaImport"}.

'CastAs-UnionType-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport, feature:schemaImport"}.

'CastAs-ListType-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastAs-ListType-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.
