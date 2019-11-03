-module('prod_ModuleImport_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['K2-ModuleProlog-1'/1]).
-export(['modules-simple'/1]).
-export(['modules-bad-ns'/1]).
-export(['module-URIs-1'/1]).
-export(['module-URIs-2'/1]).
-export(['module-URIs-3'/1]).
-export(['module-URIs-4'/1]).
-export(['module-URIs-7'/1]).
-export(['module-URIs-8'/1]).
-export(['module-URIs-9'/1]).
-export(['module-URIs-10'/1]).
-export(['module-URIs-11'/1]).
-export(['module-URIs-12'/1]).
-export(['module-URIs-13'/1]).
-export(['module-URIs-14'/1]).
-export(['module-URIs-15'/1]).
-export(['module-URIs-16'/1]).
-export(['module-URIs-17'/1]).
-export(['module-URIs-18'/1]).
-export(['module-URIs-19'/1]).
-export(['module-URIs-20'/1]).
-export(['module-URIs-21'/1]).
-export(['module-URIs-22'/1]).
-export(['module-URIs-23'/1]).
-export(['module-URIs-24'/1]).
-export(['module-URIs-25'/1]).
-export(['modules-two-import'/1]).
-export(['modules-two-import-ok'/1]).
-export(['modules-collide-var-001'/1]).
-export(['modules-collide-var-002'/1]).
-export(['modules-collide-fn-001'/1]).
-export(['modules-collide-fn-002'/1]).
-export(['modules-emptyns'/1]).
-export(['modules-circular'/1]).
-export(['modules-1'/1]).
-export(['modules-2'/1]).
-export(['modules-3'/1]).
-export(['modules-4'/1]).
-export(['modules-5'/1]).
-export(['modules-6'/1]).
-export(['modules-7'/1]).
-export(['modules-8'/1]).
-export(['modules-9'/1]).
-export(['modules-10'/1]).
-export(['modules-11'/1]).
-export(['modules-12'/1]).
-export(['modules-13'/1]).
-export(['modules-14'/1]).
-export(['modules-15'/1]).
-export(['modules-16'/1]).
-export(['modules-17'/1]).
-export(['modules-18'/1]).
-export(['modules-19'/1]).
-export(['modules-19b'/1]).
-export(['modules-20'/1]).
-export(['modules-20b'/1]).
-export(['modules-21'/1]).
-export(['modules-22'/1]).
-export(['modules-23'/1]).
-export(['modules-24'/1]).
-export(['modules-25'/1]).
-export(['modules-26'/1]).
-export(['modules-27'/1]).
-export(['modules-28'/1]).
-export(['modules-28a'/1]).
-export(['modules-29'/1]).
-export(['K-ModuleImport-1'/1]).
-export(['K-ModuleImport-2'/1]).
-export(['K-ModuleImport-3'/1]).
-export(['K2-ModuleImport-1'/1]).
-export(['errata6-001'/1]).
-export(['errata6-002'/1]).
-export(['errata6-003'/1]).
-export(['errata6-004'/1]).
-export(['errata6-005'/1]).
-export(['errata6-006'/1]).
-export(['errata6-007'/1]).
-export(['errata8-001'/1]).
-export(['errata8-001a'/1]).
-export(['errata8-002'/1]).
-export(['errata8-002a'/1]).
-export(['errata8-003'/1]).
-export(['modules-pub-priv-1'/1]).
-export(['modules-pub-priv-2'/1]).
-export(['modules-pub-priv-3'/1]).
-export(['modules-pub-priv-4'/1]).
-export(['modules-pub-priv-5'/1]).
-export(['modules-pub-priv-6'/1]).
-export(['modules-pub-priv-7'/1]).
-export(['modules-pub-priv-8'/1]).
-export(['modules-pub-priv-9'/1]).
-export(['modules-pub-priv-10'/1]).
-export(['modules-pub-priv-11'/1]).
-export(['modules-pub-priv-12'/1]).
-export(['modules-pub-priv-13'/1]).
-export(['modules-pub-priv-14'/1]).
-export(['modules-pub-priv-15'/1]).
-export(['modules-pub-priv-16'/1]).
-export(['modules-pub-priv-17'/1]).
-export(['modules-pub-priv-18'/1]).
-export(['modules-pub-priv-19'/1]).
-export(['modules-pub-priv-20'/1]).
-export(['modules-pub-priv-21'/1]).
-export(['modules-pub-priv-22'/1]).
-export(['modules-pub-priv-23'/1]).
-export(['modules-pub-priv-24'/1]).
-export(['modules-pub-priv-25'/1]).
-export(['modules-pub-priv-26'/1]).
-export(['modules-pub-priv-27'/1]).
-export(['modules-pub-priv-28'/1]).
-export(['modules-pub-priv-29'/1]).
-export(['modules-pub-priv-30'/1]).
-export(['modules-pub-priv-31'/1]).
-export(['modules-pub-priv-32'/1]).
-export(['modules-pub-priv-33'/1]).
-export(['modules-pub-priv-34'/1]).
-export(['modules-pub-priv-35'/1]).
-export(['modules-pub-priv-36'/1]).
-export(['modules-pub-priv-37'/1]).
-export(['modules-pub-priv-38'/1]).
-export(['cbcl-module-001'/1]).
-export(['cbcl-module-002'/1]).
-export(['cbcl-module-003'/1]).
-export(['cbcl-module-004'/1]).
suite() -> [{timetrap,{seconds, 180}}].
init_per_group(_, Config) ->  Config.
end_per_group(_, _Config) -> 
   xqerl_code_server:unload(all).
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "prod"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [], [
    'K2-ModuleProlog-1', 
    'modules-simple', 
    'modules-bad-ns', 
    'module-URIs-1', 
    'module-URIs-2', 
    'module-URIs-3', 
    'module-URIs-4', 
    'module-URIs-7', 
    'module-URIs-8', 
    'module-URIs-9', 
    'module-URIs-10', 
    'module-URIs-11', 
    'module-URIs-12', 
    'module-URIs-13', 
    'module-URIs-14', 
    'module-URIs-15', 
    'module-URIs-16', 
    'module-URIs-17', 
    'module-URIs-18', 
    'module-URIs-19', 
    'module-URIs-20', 
    'module-URIs-21', 
    'module-URIs-22', 
    'module-URIs-23', 
    'module-URIs-24', 
    'module-URIs-25', 
    'modules-two-import', 
    'modules-two-import-ok', 
    'modules-collide-var-001', 
    'modules-collide-var-002', 
    'modules-collide-fn-001', 
    'modules-collide-fn-002', 
    'modules-emptyns', 
    'modules-circular', 
    'modules-1', 
    'modules-2', 
    'modules-3', 
    'modules-4', 
    'modules-5', 
    'modules-6', 
    'modules-7', 
    'modules-8', 
    'modules-9', 
    'modules-10', 
    'modules-11', 
    'modules-12', 
    'modules-13', 
    'modules-14', 
    'modules-15', 
    'modules-16', 
    'modules-17', 
    'modules-18', 
    'modules-19', 
    'modules-19b', 
    'modules-20', 
    'modules-20b', 
    'modules-21', 
    'modules-22', 
    'modules-23', 
    'modules-24', 
    'modules-25', 
    'modules-26', 
    'modules-27', 
    'modules-28', 
    'modules-28a', 
    'modules-29', 
    'K-ModuleImport-1', 
    'K-ModuleImport-2', 
    'K-ModuleImport-3', 
    'K2-ModuleImport-1', 
    'errata6-001', 
    'errata6-002', 
    'errata6-003', 
    'errata6-004', 
    'errata6-005', 
    'errata6-006', 
    'errata6-007', 
    'errata8-001', 
    'errata8-001a', 
    'errata8-002', 
    'errata8-002a', 
    'errata8-003', 
    'modules-pub-priv-1', 
    'modules-pub-priv-2', 
    'modules-pub-priv-3', 
    'modules-pub-priv-4', 
    'modules-pub-priv-5', 
    'modules-pub-priv-6', 
    'modules-pub-priv-7', 
    'modules-pub-priv-8', 
    'modules-pub-priv-9', 
    'modules-pub-priv-10', 
    'modules-pub-priv-11', 
    'modules-pub-priv-12', 
    'modules-pub-priv-13', 
    'modules-pub-priv-14', 
    'modules-pub-priv-15', 
    'modules-pub-priv-16', 
    'modules-pub-priv-17', 
    'modules-pub-priv-18', 
    'modules-pub-priv-19', 
    'modules-pub-priv-20', 
    'modules-pub-priv-21', 
    'modules-pub-priv-22', 
    'modules-pub-priv-23', 
    'modules-pub-priv-24', 
    'modules-pub-priv-25', 
    'modules-pub-priv-26', 
    'modules-pub-priv-27', 
    'modules-pub-priv-28', 
    'modules-pub-priv-29', 
    'modules-pub-priv-30', 
    'modules-pub-priv-31', 
    'modules-pub-priv-32', 
    'modules-pub-priv-33', 
    'modules-pub-priv-34', 
    'modules-pub-priv-35', 
    'modules-pub-priv-36', 
    'modules-pub-priv-37', 
    'modules-pub-priv-38', 
    'cbcl-module-001', 
    'cbcl-module-002', 
    'cbcl-module-003', 
    'cbcl-module-004']}].
environment('simple-schema',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ModuleImport/simple.xsd"),"http://www.w3.org/XQueryTest/simple"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('attribute-schema',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "ModuleImport/attribute.xsd"),"http://www.w3.org/XQueryTest/sample"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('complexData',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../fn/data/complexData.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../fn/data/complexData.xsd"),"http://www.cbcl.co.uk/XQueryTest/complexData"}]}, 
{resources, []}, 
{modules, []}
]; 
environment('user-defined-types',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, [{filename:join(__BaseDir, "../docs/userdefined.xsd"),"http://www.w3.org/XQueryTest/userDefinedTypes"}]}, 
{resources, []}, 
{modules, []}
].
'K2-ModuleProlog-1'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "module namespace example = \"http://example.com/\"; \"an expression\"", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ModuleProlog-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-simple'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-simple.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-bad-ns'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test2=\"http://www.w3.org/TestModules/test2\";
        <result>{test2:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-bad-ns.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0059 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-1'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"  http://www.w3.org/TestModules/test \";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-1.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-2'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"&#x20;&#x9;&#xA;&#xD;http://www.w3.org/TestModules/test&#x20;&#x9;&#xA;&#xD;\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-2.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-3'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/Test&#x20;&#x20;&#x20;&#x20;Modules/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris2-lib.xq"), <<"Q{http://www.w3.org/Test Modules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-3.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-4'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test/../../TestModules/./test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-urisi1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-4.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0059") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0059 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-7'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules./test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris3-lib.xq"), <<"Q{http://www.w3.org/TestModules./test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-7.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-8'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/.TestModules/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris4-lib.xq"), <<"Q{http://www.w3.org/.TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-8.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-9'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules../test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris5-lib.xq"), <<"Q{http://www.w3.org/TestModules../test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-9.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-10'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/..TestModules/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris6-lib.xq"), <<"Q{http://www.w3.org/..TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-10.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-11'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/&#xd0a4;/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris7-lib.xq"), <<"Q{http://www.w3.org/TestModules/키/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-11.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-12'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/&#x3c;&#x3d;&#x3e;&#x40;/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris8-lib.xq"), <<"Q{http://www.w3.org/TestModules/<=>@/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-12.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-13'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"urn:example:animal:ferret:nose\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris9-lib.xq"), <<"Q{urn:example:animal:ferret:nose}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-13.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-14'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"ftp://www.w3.org/TestModules/test;type=A\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris10-lib.xq"), <<"Q{ftp://www.w3.org/TestModules/test;type=A}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-14.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-15'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test?hello=world\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris11-lib.xq"), <<"Q{http://www.w3.org/TestModules/test?hello=world}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-15.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-16'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org/TestModules/test#world\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris12-lib.xq"), <<"Q{http://www.w3.org/TestModules/test#world}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-16.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-17'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"ftp://www.w3.org/TestModules/test;type=A?hello=world&amp;q#world\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris13-lib.xq"), <<"Q{ftp://www.w3.org/TestModules/test;type=A?hello=world&q#world}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-17.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-18'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"#1\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris14-lib.xq"), <<"Q{#1}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-18.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-19'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http:test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris15-lib.xq"), <<"Q{http:test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-19.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-20'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"ftp://user@www.w3.org/TestModules/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris16-lib.xq"), <<"Q{ftp://user@www.w3.org/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-20.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-21'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]/TestModules/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris17-lib.xq"), <<"Q{http://[2001:0db8:85a3:0000:0000:8a2e:0370:7334]/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-21.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-22'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"http://www.w3.org:7334/TestModules/test\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris18-lib.xq"), <<"Q{http://www.w3.org:7334/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-22.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-23'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"mailto:jane.doe@w3c.org\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris19-lib.xq"), <<"Q{mailto:jane.doe@w3c.org}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-23.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-24'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"fax:+1-234-567-890\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris20-lib.xq"), <<"Q{fax:+1-234-567-890}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-24.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'module-URIs-25'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test=\"ldap://[2001:db8::7]/c=GB?objectClass?one\";
        <result>{test:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-uris21-lib.xq"), <<"Q{ldap://[2001:db8::7]/c=GB?objectClass?one}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "module-URIs-25.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-two-import'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        import module namespace test2=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-two-import.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0047") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0047 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-two-import-ok'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-two-import-ok.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<result>ok</result>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-collide-var-001'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1collide1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-collide-var-001.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-collide-var-002'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare variable $test1:flag := 1; 
        <result>{test1:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-collide-var-002.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0049") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0049 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-collide-fn-001'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1collide2-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-collide-fn-001.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0034 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-collide-fn-002'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare function test1:ok () { \"ok\" }; 
        <result>{test1:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-collide-fn-002.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0034") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0034 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-emptyns'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1= \"\"; 
        <result>ok</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/emptyns-lib.xq"), <<"Q{}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-emptyns.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0088 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-circular'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        <result>{test1:ok()}</result>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1c1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test2c1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-circular.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-1'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        <foo:anElement>some Content</foo:anElement>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/moduleDefs-lib.xq"), <<"Q{http://www.w3.org/TestModules/defs}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-1.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-2'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        declare namespace foo = \"http://example.org\"; 
        <foo:anElement>some Content</foo:anElement>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/moduleDefs-lib.xq"), <<"Q{http://www.w3.org/TestModules/defs}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-2.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<foo:anElement xmlns:foo=\"http://example.org\">some Content</foo:anElement>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-3'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $test1:flag + 1 return $var
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/moduleDefs-lib.xq"), <<"Q{http://www.w3.org/TestModules/defs}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-3.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0081") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0081 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-4'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $defs:var1+ 1 return $var
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/moduleDefs-lib.xq"), <<"Q{http://www.w3.org/TestModules/defs}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-4.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-5'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/defs\"; 
        let $var := $defs:var2 + 1 return $var
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/moduleDefs-lib.xq"), <<"Q{http://www.w3.org/TestModules/defs}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-5.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-6'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare namespace foo = \"http://example.org\"; 
        declare variable $foo:flag := 3; 
        let $var := $test1:flag + $foo:flag 
        return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-6.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"4") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-7'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        let $var := fn:concat(xs:string($test1:flag),xs:string(test1:ok())) 
        return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-7.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "1ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-8'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        declare namespace foo = \"http://example.org\"; 
        declare function foo:ok () { \"ok\" }; 
        let $var := fn:concat(test1:ok(),foo:ok()) 
        return $var", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-8.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "okok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-9'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:upper-case(test1:ok())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-9.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "OK") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-10'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:lower-case(test1:ok())
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-10.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "ok") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-11'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        fn:string-length(test1:ok())", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-11.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-12'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\";
        $test1:flag + $test1:flag
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-12.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"2") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-13'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        $test1:flag - $test1:flag
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-13.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"0") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-14'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test1=\"http://www.w3.org/TestModules/test1\"; 
        xs:integer($test1:flag)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>},{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-14.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"1") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-15'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace test2=\"http://www.w3.org/TestModules/test2\"; 
        \"aaa\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test2-lib.xq"), <<"Q{http://www.w3.org/TestModules/test2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-15.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0088 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-16'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace xml=\"http://www.w3.org/TestModules/test1\"; 
        xs:string($xml:flag)
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test1}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-16.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-17'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/diffns\"; 
        \"abc\"
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/modulesdiffns-lib.xq"), <<"Q{http://www.w3.org/TestModules/diffns}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-17.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0048") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0048 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-18'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace mod1=\"http://www.w3.org/TestModules/module1\"; 
        import module namespace mod2=\"http://www.w3.org/TestModules/module2\"; 
        mod1:x(),mod2:y()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module1-lib.xq"), <<"Q{http://www.w3.org/TestModules/module1}">>},{filename:join(__BaseDir, "ModuleImport/module2-lib.xq"), <<"Q{http://www.w3.org/TestModules/module2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-18.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "x y x y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-19'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-19b'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'modules-20'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-20b'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'modules-21'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'modules-22'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-23'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-24'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'modules-25'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-26'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-27'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'modules-28'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10"}. 
'modules-28a'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs1 = \"http://www.w3.org/TestModules/defs1\"; 
        $defs1:var
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/modules-recursive1.xq"), <<"Q{http://www.w3.org/TestModules/defs1}">>},{filename:join(__BaseDir, "ModuleImport/modules-recursive2.xq"), <<"Q{http://www.w3.org/TestModules/defs2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-28a.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-29'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace xmlns=\"http://www.w3.org/TestModules/test\"; 
        xmlns:ok ()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/test1-lib.xq"), <<"Q{http://www.w3.org/TestModules/test}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-29.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQST0070") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0070 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ModuleImport-1'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "import(::)module \"\"; 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ModuleImport-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0088 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ModuleImport-2'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "import(::)module \"\" at \"http://example.com/\", \"http://example.com/2\"; 1 eq 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ModuleImport-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0088") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0088 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K-ModuleImport-3'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "import module namespace NCName := \"http://example.com/Dummy\"; 1", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ModuleImport-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPST0003") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'K2-ModuleImport-1'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "import ne import", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ModuleImport-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XPDY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPDY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'errata6-001'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'errata6-002'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'errata6-003'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'errata6-004'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'errata6-005'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'errata6-006'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'errata6-007'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport, spec:XQ10"}. 
'errata8-001'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10"}. 
'errata8-001a'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace errata8_1a=\"http://www.w3.org/TestModules/errata8_1a\"; 
        errata8_1a:fun()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/errata8-module1a.xq"), <<"Q{http://www.w3.org/TestModules/errata8_1a}">>},{filename:join(__BaseDir, "ModuleImport/errata8-module1b.xq"), <<"Q{http://www.w3.org/TestModules/errata8_1b}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "errata8-001a.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XQDY0054") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQDY0054 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'errata8-002'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XQ10"}. 
'errata8-002a'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace errata8_2a=\"http://www.w3.org/TestModules/errata8_2a\"; 
        errata8_2a:fun()", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/errata8-module2a.xq"), <<"Q{http://www.w3.org/TestModules/errata8_2a}">>},{filename:join(__BaseDir, "ModuleImport/errata8-module2b.xq"), <<"Q{http://www.w3.org/TestModules/errata8_2b}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "errata8-002a.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'errata8-003'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace errata8_3a=\"http://www.w3.org/TestModules/errata8_3a\"; 
        errata8_3a:fun()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/errata8-module3a.xq"), <<"Q{http://www.w3.org/TestModules/errata8_3a}">>},{filename:join(__BaseDir, "ModuleImport/errata8-module3b.xq"), <<"Q{http://www.w3.org/TestModules/errata8_3b}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "errata8-003.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_eq(Res,"10") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-1'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g(42)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-1.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-2'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        defs:f()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-2.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-3'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g($defs:one)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-3.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>24</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-4'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g($defs:two)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-4.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-5'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        <a>{local:inc(1)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-6'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        <a>{local:inc(1)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-7'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public variable $i := 1;
        <a>{$i+1}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-8'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private variable $i := 1;
        <a>{$i+1}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-9'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare function local:test() {
            local:inc(1)
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-10'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare function local:test() {
            local:inc(1)
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-11'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public variable $i := 1;
        
        declare function local:test() {
            $i + 1
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-12'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private variable $i := 1;
        
        declare function local:test() {
           $i + 1
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-13'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            defs:g(42)
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-13.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-14'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            defs:f()
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-14.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-15'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            $defs:one
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-15.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-16'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        declare function local:test() {
            $defs:two
        };
        <a>{local:test()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-16.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-17'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare variable $test := local:inc(1);

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-18'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private function local:inc($i as xs:integer) {
            $i + 1
        };
        
        declare variable $test := local:inc(1);

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-19'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public variable $i := 1;
        
	declare variable $test := $i + 1;

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-20'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private variable $i := 1;
        
        declare variable $test := $i + 1;

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<a>2</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-21'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := defs:g(42);

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-21.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-22'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := defs:f();

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-22.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-23'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := $defs:one;

        <a>{$test}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-23.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>1</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-24'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        declare variable $test := $defs:two;

        <a>93.7</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-24.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-25'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        <a>{defs:h(42)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-25.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-26'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 

        <a>{$defs:ninety}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-26.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>90</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-27'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv3\"; 
        <a>{defs:f(42)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>},{filename:join(__BaseDir, "ModuleImport/module-pub-priv3.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv3}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-27.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-28'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv2\"; 
        <a>{defs:fails()}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>},{filename:join(__BaseDir, "ModuleImport/module-pub-priv2.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv2}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-28.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-29'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private %public function local:foo() { () };
        local:foo()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0106 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-30'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace xq=\"http://www.w3.org/2012/xquery\";
        declare %private %xq:public function local:foo() { () };
        local:foo()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0106 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-31'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public %public function local:foo() { () };
        local:foo()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0106 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-32'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private %private function local:foo() { () };
        local:foo()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0106") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0106 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-33'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private %public variable $foo := ();
        $foo
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0116 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-34'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare namespace xq=\"http://www.w3.org/2012/xquery\";
        declare %private %xq:public variable $foo := ();
        $foo
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0116 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-35'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %private %private variable $foo := ();
        $foo
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0116 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-36'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        declare %public %public variable $foo := ();
        $foo
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"XQST0116") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XQST0116 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-37'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        defs:f#0()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-37.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0017") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'modules-pub-priv-38'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace defs=\"http://www.w3.org/TestModules/module-pub-priv\"; 
        <a>{defs:g#1(42)}</a>
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/module-pub-priv.xq"), <<"Q{http://www.w3.org/TestModules/module-pub-priv}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "modules-pub-priv-38.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_xml(Res,"<a>65</a>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-module-001'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaImport"}. 
'cbcl-module-002'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	import module namespace lib=\"http://www.xqsharp.com/test/baseuri-lib\"; 
      	declare base-uri \"http://www.example.org/wrong/\"; 
      	base-uri($lib:node/node())
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/baseuri-lib.xq"), <<"Q{http://www.xqsharp.com/test/baseuri-lib}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-module-002.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "http://www.example.org/correct/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-module-003'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   Qry = "
      	import module namespace foo=\"http://www.xqsharp.com/test/variabledeclaration\"; 
      	import module namespace bar=\"http://www.xqsharp.com/test/variablereference\"; 
      	bar:test()
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "ModuleImport/variabledeclaration-lib.xq"), <<"Q{http://www.xqsharp.com/test/variabledeclaration}">>},{filename:join(__BaseDir, "ModuleImport/variablereference-lib.xq"), <<"Q{http://www.xqsharp.com/test/variablereference}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "cbcl-module-003.xq"), Qry1),
             xqerl:run(Mod) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_error(Res,"XPST0008") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: XPST0008 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'cbcl-module-004'(Config) ->
   _ = xqerl_code_server:unload(all),
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:schemaValidation"}.