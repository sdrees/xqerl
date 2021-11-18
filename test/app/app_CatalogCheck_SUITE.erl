-module('app_CatalogCheck_SUITE').

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

-export(['Catalog001'/1]).
-export(['Catalog002'/1]).
-export(['Catalog003'/1]).
-export(['Catalog004'/1]).
-export(['Catalog005'/1]).
-export(['Catalog006'/1]).
-export(['Catalog007'/1]).
-export(['Catalog008'/1]).
-export(['Catalog009'/1]).
-export(['Catalog010'/1]).
-export(['Catalog011'/1]).
-export(['Catalog012'/1]).
-export(['Catalog013'/1]).
-export(['Catalog014'/1]).

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
            'Catalog001',
            'Catalog002',
            'Catalog003',
            'Catalog004',
            'Catalog005',
            'Catalog006',
            'Catalog007',
            'Catalog008',
            'Catalog009',
            'Catalog010',
            'Catalog011',
            'Catalog012',
            'Catalog013',
            'Catalog014'
        ]}
    ].

environment('catalog', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../catalog.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "../catalog-schema.xsd"),
                "http://www.w3.org/2010/09/qt-fots-catalog"}
        ]},
        {resources, []},
        {modules, []}
    ].

'Catalog001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation, feature:schemaImport"}.

'Catalog003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.

'Catalog014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaValidation"}.
