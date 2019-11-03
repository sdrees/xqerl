-module('fn_path_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['path001'/1]).
-export(['path002'/1]).
-export(['path003'/1]).
-export(['path004'/1]).
-export(['path005'/1]).
-export(['path006'/1]).
-export(['path007'/1]).
-export(['path008'/1]).
-export(['path009'/1]).
-export(['path010'/1]).
-export(['path011'/1]).
-export(['path012'/1]).
-export(['path013'/1]).
-export(['path014'/1]).
-export(['path015'/1]).
-export(['path016'/1]).
-export(['path017'/1]).
-export(['path018'/1]).
-export(['path019'/1]).
-export(['path020'/1]).
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
   __BaseDir = filename:join(TD, "fn"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}
   ].
groups() -> [
   {group_0, [parallel], [
    'path001', 
    'path002', 
    'path003', 
    'path004', 
    'path005', 
    'path006', 
    'path007', 
    'path008', 
    'path009', 
    'path010', 
    'path011', 
    'path012', 
    'path013', 
    'path014', 
    'path015', 
    'path016', 
    'path017', 
    'path018', 
    'path019', 
    'path020']}].
environment('works-mod',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "../docs/works-mod.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
]; 
environment('pathdata',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "path/pathdata.xml"), ".",[]}]}, 
{collections, []}, 
{'static-base-uri', []}, 
{params, []}, 
{vars, []}, 
{namespaces, []},
{schemas, []}, 
{resources, []}, 
{modules, []}
].
'path001'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path001.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path002'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(/*)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path002.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path003'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path((//*:all-of)[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path003.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path004'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(//*[@name=\"fn-absintg1args-1\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path004.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[4]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path005'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path((//@idref)[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path005.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}link[1]/@idref") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path006'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path((//*:source)[3]/@xml:id)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path006.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}environment[3]/Q{http://www.w3.org/2010/09/qt-fots-catalog}source[1]/@Q{http://www.w3.org/XML/1998/namespace}id") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path007'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path((//comment())[2])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path007.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[2]/Q{http://www.w3.org/2010/09/qt-fots-catalog}description[1]/comment()[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path008'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(//text()[.='2147483647'][1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path008.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[3]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}assert-eq[1]/text()[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path009'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(//processing-instruction()[1])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path009.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/processing-instruction(xml-stylesheet)[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path010'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(//p)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path010.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{}p[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path011'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'path012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'path013'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"spec:XP30+, feature:namespace-axis"}. 
'path014'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
        import module namespace copy=\"http://www.w3.org/QT3/copy\";
        fn:path(copy:copy((//employee)[1])/pnum)
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('works-mod',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "id/copy.xq"), <<"Q{http://www.w3.org/QT3/copy}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path014.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "Q{http://www.w3.org/2005/xpath-functions}root()/Q{}pnum[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(/)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path016'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(attribute name {\"fred\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path016.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "Q{http://www.w3.org/2005/xpath-functions}root()") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path017'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(text{\"fred\"})", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path017.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "Q{http://www.w3.org/2005/xpath-functions}root()") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path018'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(<a b=\"c\"/>/@b)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path018.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "Q{http://www.w3.org/2005/xpath-functions}root()/@b") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path019'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "fn:path(<a><b/><b/></a>/(b[2]))", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path019.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "Q{http://www.w3.org/2005/xpath-functions}root()/Q{}b[2]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'path020'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "(//*:all-of)[1] ! fn:path()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('pathdata',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "path020.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_string_value(Res, "/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-set[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}test-case[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}result[1]/Q{http://www.w3.org/2010/09/qt-fots-catalog}all-of[1]") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_type(Res,"xs:string") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.