-module('prod_AxisStep_static_typing_SUITE').

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

-export(['ST-Axes001'/1]).
-export(['ST-Axes002'/1]).
-export(['ST-Axes003'/1]).
-export(['ST-Axes004'/1]).
-export(['ST-Axes005'/1]).
-export(['ST-Axes006'/1]).
-export(['ST-Axes007'/1]).
-export(['ST-Axes008'/1]).
-export(['ST-Axes009'/1]).
-export(['ST-Axes010'/1]).
-export(['ST-Axes011'/1]).
-export(['ST-Axes012'/1]).
-export(['ST-Axes013'/1]).
-export(['ST-Axes014'/1]).
-export(['ST-Axes015'/1]).

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
        {group, group_0}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'ST-Axes001',
            'ST-Axes002',
            'ST-Axes003',
            'ST-Axes004',
            'ST-Axes005',
            'ST-Axes006',
            'ST-Axes007',
            'ST-Axes008',
            'ST-Axes009',
            'ST-Axes010',
            'ST-Axes011',
            'ST-Axes012',
            'ST-Axes013',
            'ST-Axes014',
            'ST-Axes015'
        ]}
    ].

environment('TopMany', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TopMany.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('TreeCompass', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/TreeCompass.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('Tree1Text', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "AxisStep/Tree1Text.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ].

'ST-Axes001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.

'ST-Axes015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:staticTyping"}.
