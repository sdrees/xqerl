-module('app_Walmsley_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         groups/0,
         suite/0]).
-export([init_per_suite/1,
         init_per_group/2,
         end_per_group/2,
         end_per_suite/1]).
-export(['d1e11215'/1]).
-export(['d1e13012'/1]).
-export(['d1e13030'/1]).
-export(['d1e13048'/1]).
-export(['d1e20420'/1]).
-export(['d1e40951'/1]).
-export(['d1e40984'/1]).
-export(['d1e41029'/1]).
-export(['d1e41041'/1]).
-export(['d1e41054'/1]).
-export(['d1e41054b'/1]).
-export(['d1e41094'/1]).
-export(['d1e41148'/1]).
-export(['d1e41173'/1]).
-export(['d1e41180'/1]).
-export(['d1e41190'/1]).
-export(['d1e41194'/1]).
-export(['d1e41194b'/1]).
-export(['d1e41213'/1]).
-export(['d1e41225'/1]).
-export(['d1e41255'/1]).
-export(['d1e41271'/1]).
-export(['d1e41301'/1]).
-export(['d1e41301a'/1]).
-export(['d1e41301b'/1]).
-export(['d1e41301c'/1]).
-export(['d1e41301d'/1]).
-export(['d1e41301e'/1]).
-export(['d1e41301f'/1]).
-export(['d1e41517'/1]).
-export(['d1e41255b'/1]).
-export(['d1e41255c'/1]).
-export(['d1e41255d'/1]).
-export(['d1e41255e'/1]).
-export(['d1e41590'/1]).
-export(['d1e41624'/1]).
-export(['d1e41628'/1]).
-export(['d1e41635'/1]).
-export(['d1e41648'/1]).
-export(['d1e41655'/1]).
-export(['d1e41659'/1]).
-export(['d1e41663'/1]).
-export(['d1e41678'/1]).
-export(['d1e41686'/1]).
-export(['d1e41709'/1]).
-export(['d1e41709b'/1]).
-export(['d1e41709c'/1]).
-export(['d1e41709d'/1]).
-export(['d1e41791'/1]).
-export(['d1e41795'/1]).
-export(['d1e41799'/1]).
-export(['d1e41803'/1]).
-export(['d1e41803b'/1]).
-export(['d1e41803c'/1]).
-export(['d1e41709e'/1]).
-export(['d1e41709f'/1]).
-export(['d1e41709g'/1]).
-export(['d1e41709h'/1]).
-export(['d1e41709i'/1]).
-export(['d1e41709j'/1]).
-export(['d1e41709k'/1]).
-export(['d1e41709l'/1]).
-export(['d1e41709m'/1]).
-export(['d1e41709n'/1]).
-export(['d1e41709o'/1]).
-export(['d1e41709p'/1]).
-export(['d1e41709q'/1]).
-export(['d1e41709r'/1]).
-export(['d1e41709s'/1]).
-export(['d1e41709t'/1]).
-export(['d1e41709u'/1]).
-export(['d1e41709v'/1]).
-export(['d1e41709w'/1]).
-export(['d1e41709x'/1]).
-export(['d1e42207'/1]).
-export(['d1e42340'/1]).
-export(['d1e42362'/1]).
-export(['d1e48503'/1]).
-export(['d1e48514'/1]).
-export(['d1e48525'/1]).
-export(['d1e48536'/1]).
-export(['d1e48547'/1]).
-export(['d1e48617'/1]).
-export(['d1e48676'/1]).
-export(['d1e48687'/1]).
-export(['d1e48698'/1]).
-export(['d1e48709'/1]).
-export(['d1e51544'/1]).
-export(['d1e51555'/1]).
-export(['d1e51565'/1]).
-export(['d1e51576'/1]).
-export(['d1e51592'/1]).
-export(['d1e51729'/1]).
-export(['d1e51740'/1]).
-export(['d1e51751'/1]).
-export(['d1e51762'/1]).
-export(['d1e51773'/1]).
-export(['d1e55090'/1]).
-export(['d1e55101'/1]).
-export(['d1e55112'/1]).
-export(['d1e55123'/1]).
-export(['d1e56387'/1]).
-export(['d1e56398'/1]).
-export(['d1e56409'/1]).
-export(['d1e56502'/1]).
-export(['d1e56513'/1]).
-export(['d1e56524'/1]).
-export(['d1e56535'/1]).
-export(['d1e56999'/1]).
-export(['d1e57060'/1]).
-export(['d1e57070'/1]).
-export(['d1e57081'/1]).
-export(['d1e57092'/1]).
-export(['d1e57103'/1]).
-export(['d1e57114'/1]).
-export(['d1e57411'/1]).
-export(['d1e57472'/1]).
-export(['d1e57482'/1]).
-export(['d1e57493'/1]).
-export(['d1e57504'/1]).
-export(['d1e57515'/1]).
-export(['d1e57526'/1]).
-export(['d1e57796'/1]).
-export(['d1e57807'/1]).
-export(['d1e57818'/1]).
-export(['d1e57961'/1]).
-export(['d1e57972'/1]).
-export(['d1e58316'/1]).
-export(['d1e58327'/1]).
-export(['d1e58338'/1]).
-export(['d1e58349'/1]).
-export(['d1e60780'/1]).
-export(['d1e60791'/1]).
-export(['d1e60802'/1]).
-export(['d1e60955'/1]).
-export(['d1e60966'/1]).
-export(['d1e60976'/1]).
-export(['d1e60986'/1]).
-export(['d1e61366'/1]).
-export(['d1e61377'/1]).
-export(['d1e61388'/1]).
-export(['d1e63192'/1]).
-export(['d1e63203'/1]).
-export(['d1e63214'/1]).
-export(['d1e63227'/1]).
-export(['d1e63488'/1]).
-export(['d1e63499'/1]).
-export(['d1e63510'/1]).
-export(['d1e63521'/1]).
-export(['d1e63532'/1]).
-export(['d1e63543'/1]).
-export(['d1e63783'/1]).
-export(['d1e63796'/1]).
-export(['d1e63807'/1]).
-export(['d1e66015'/1]).
-export(['d1e66026'/1]).
-export(['d1e66037'/1]).
-export(['d1e66048'/1]).
-export(['d1e66059'/1]).
-export(['d1e66070'/1]).
-export(['d1e66081'/1]).
-export(['d1e66092'/1]).
-export(['d1e66103'/1]).
-export(['d1e69523'/1]).
-export(['d1e69534'/1]).
-export(['d1e69545'/1]).
-export(['d1e69556'/1]).
-export(['d1e69567'/1]).
-export(['d1e69767'/1]).
-export(['d1e70867'/1]).
-export(['d1e70878'/1]).
-export(['d1e70889'/1]).
-export(['d1e71246'/1]).
-export(['d1e71254'/1]).
-export(['d1e71262'/1]).
-export(['d1e71270'/1]).
-export(['d1e71288'/1]).
-export(['d1e71531'/1]).
-export(['d1e71542'/1]).
-export(['d1e71553'/1]).
-export(['d1e71660'/1]).
-export(['d1e71671'/1]).
-export(['d1e71682'/1]).
-export(['d1e72747'/1]).
-export(['d1e72758'/1]).
-export(['d1e72769'/1]).
-export(['d1e72779'/1]).
-export(['d1e74262'/1]).
-export(['d1e74273'/1]).
-export(['d1e74283'/1]).
-export(['d1e74294'/1]).
-export(['d1e74304'/1]).
-export(['d1e74388'/1]).
-export(['d1e74399'/1]).
-export(['d1e74563'/1]).
-export(['d1e74585'/1]).
-export(['d1e74596'/1]).
-export(['d1e74610'/1]).
-export(['d1e74627'/1]).
-export(['d1e74798'/1]).
-export(['d1e74809'/1]).
-export(['d1e74820'/1]).
-export(['d1e76034'/1]).
-export(['d1e76045'/1]).
-export(['d1e76056'/1]).
-export(['d1e76067'/1]).
-export(['d1e76078'/1]).
-export(['d1e76091'/1]).
-export(['d1e76104'/1]).
-export(['d1e77397'/1]).
-export(['d1e77408'/1]).
-export(['d1e77419'/1]).
-export(['d1e78807'/1]).
-export(['d1e78807c'/1]).
-export(['d1e78807d'/1]).
-export(['d1e78807e'/1]).
-export(['d1e78807f'/1]).
-export(['d1e78807g'/1]).
-export(['d1e78807h'/1]).
-export(['d1e78807i'/1]).
-export(['d1e78807j'/1]).
-export(['d1e78807k'/1]).
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
   __BaseDir = filename:join(TD, "app"),
   [{base_dir, __BaseDir}|Config].
all() -> [
   {group, group_0}, 
   {group, group_1}, 
   {group, group_2}, 
   {group, group_3}, 
   {group, group_4}, 
   {group, group_5}, 
   {group, group_6}, 
   {group, group_7}, 
   {group, group_8}, 
   {group, group_9}
   ].
groups() -> [
   {group_0, [parallel], [
    'd1e11215', 
    'd1e13012', 
    'd1e13030', 
    'd1e13048', 
    'd1e20420', 
    'd1e40951', 
    'd1e40984', 
    'd1e41029', 
    'd1e41041', 
    'd1e41054', 
    'd1e41054b', 
    'd1e41094', 
    'd1e41148', 
    'd1e41173', 
    'd1e41180', 
    'd1e41190', 
    'd1e41194', 
    'd1e41194b', 
    'd1e41213', 
    'd1e41225', 
    'd1e41255', 
    'd1e41271', 
    'd1e41301']}, 
   {group_1, [parallel], [
    'd1e41301a', 
    'd1e41301b', 
    'd1e41301c', 
    'd1e41301d', 
    'd1e41301e', 
    'd1e41301f', 
    'd1e41517', 
    'd1e41255b', 
    'd1e41255c', 
    'd1e41255d', 
    'd1e41255e', 
    'd1e41590', 
    'd1e41624', 
    'd1e41628', 
    'd1e41635', 
    'd1e41648', 
    'd1e41655', 
    'd1e41659', 
    'd1e41663', 
    'd1e41678', 
    'd1e41686', 
    'd1e41709', 
    'd1e41709b', 
    'd1e41709c']}, 
   {group_2, [parallel], [
    'd1e41709d', 
    'd1e41791', 
    'd1e41795', 
    'd1e41799', 
    'd1e41803', 
    'd1e41803b', 
    'd1e41803c', 
    'd1e41709e', 
    'd1e41709f', 
    'd1e41709g', 
    'd1e41709h', 
    'd1e41709i', 
    'd1e41709j', 
    'd1e41709k', 
    'd1e41709l', 
    'd1e41709m', 
    'd1e41709n', 
    'd1e41709o', 
    'd1e41709p', 
    'd1e41709q', 
    'd1e41709r', 
    'd1e41709s', 
    'd1e41709t', 
    'd1e41709u']}, 
   {group_3, [parallel], [
    'd1e41709v', 
    'd1e41709w', 
    'd1e41709x', 
    'd1e42207', 
    'd1e42340', 
    'd1e42362', 
    'd1e48503', 
    'd1e48514', 
    'd1e48525', 
    'd1e48536', 
    'd1e48547', 
    'd1e48617', 
    'd1e48676', 
    'd1e48687', 
    'd1e48698', 
    'd1e48709', 
    'd1e51544', 
    'd1e51555', 
    'd1e51565', 
    'd1e51576', 
    'd1e51592', 
    'd1e51729', 
    'd1e51740', 
    'd1e51751']}, 
   {group_4, [parallel], [
    'd1e51762', 
    'd1e51773', 
    'd1e55090', 
    'd1e55101', 
    'd1e55112', 
    'd1e55123', 
    'd1e56387', 
    'd1e56398', 
    'd1e56409', 
    'd1e56502', 
    'd1e56513', 
    'd1e56524', 
    'd1e56535', 
    'd1e56999', 
    'd1e57060', 
    'd1e57070', 
    'd1e57081', 
    'd1e57092', 
    'd1e57103', 
    'd1e57114', 
    'd1e57411', 
    'd1e57472', 
    'd1e57482', 
    'd1e57493']}, 
   {group_5, [parallel], [
    'd1e57504', 
    'd1e57515', 
    'd1e57526', 
    'd1e57796', 
    'd1e57807', 
    'd1e57818', 
    'd1e57961', 
    'd1e57972', 
    'd1e58316', 
    'd1e58327', 
    'd1e58338', 
    'd1e58349', 
    'd1e60780', 
    'd1e60791', 
    'd1e60802', 
    'd1e60955', 
    'd1e60966', 
    'd1e60976', 
    'd1e60986', 
    'd1e61366', 
    'd1e61377', 
    'd1e61388', 
    'd1e63192', 
    'd1e63203']}, 
   {group_6, [parallel], [
    'd1e63214', 
    'd1e63227', 
    'd1e63488', 
    'd1e63499', 
    'd1e63510', 
    'd1e63521', 
    'd1e63532', 
    'd1e63543', 
    'd1e63783', 
    'd1e63796', 
    'd1e63807', 
    'd1e66015', 
    'd1e66026', 
    'd1e66037', 
    'd1e66048', 
    'd1e66059', 
    'd1e66070', 
    'd1e66081', 
    'd1e66092', 
    'd1e66103', 
    'd1e69523', 
    'd1e69534', 
    'd1e69545', 
    'd1e69556']}, 
   {group_7, [parallel], [
    'd1e69567', 
    'd1e69767', 
    'd1e70867', 
    'd1e70878', 
    'd1e70889', 
    'd1e71246', 
    'd1e71254', 
    'd1e71262', 
    'd1e71270', 
    'd1e71288', 
    'd1e71531', 
    'd1e71542', 
    'd1e71553', 
    'd1e71660', 
    'd1e71671', 
    'd1e71682', 
    'd1e72747', 
    'd1e72758', 
    'd1e72769', 
    'd1e72779', 
    'd1e74262', 
    'd1e74273', 
    'd1e74283', 
    'd1e74294']}, 
   {group_8, [parallel], [
    'd1e74304', 
    'd1e74388', 
    'd1e74399', 
    'd1e74563', 
    'd1e74585', 
    'd1e74596', 
    'd1e74610', 
    'd1e74627', 
    'd1e74798', 
    'd1e74809', 
    'd1e74820', 
    'd1e76034', 
    'd1e76045', 
    'd1e76056', 
    'd1e76067', 
    'd1e76078', 
    'd1e76091', 
    'd1e76104', 
    'd1e77397', 
    'd1e77408', 
    'd1e77419', 
    'd1e78807', 
    'd1e78807c', 
    'd1e78807d']}, 
   {group_9, [parallel], [
    'd1e78807e', 
    'd1e78807f', 
    'd1e78807g', 
    'd1e78807h', 
    'd1e78807i', 
    'd1e78807j', 
    'd1e78807k']}].
environment('all',__BaseDir) ->
[{'decimal-formats', []}, 
{sources, [{filename:join(__BaseDir, "Walmsley/catalog.xml"), ".","http://www.w3.org/2010/09/qt-fots-catalog/Walmsley/catalog.xml"}, 
{filename:join(__BaseDir, "Walmsley/render.xsl"), "","http://www.w3.org/2010/09/qt-fots-catalog/Walmsley/render.xsl"}]}, 
{collections, []}, 
{'static-base-uri', [{"http://www.w3.org/2010/09/qt-fots-catalog/Walmsley/"}]}, 
{params, []}, 
{vars, []}, 
{namespaces, [{"http://www.w3.org/2005/xpath-functions/array","array"}, 
{"http://www.w3.org/2005/xpath-functions/map","map"}]},
{schemas, []}, 
{resources, [{"application/json", filename:join(__BaseDir, "Walmsley/product.json"),"http://www.w3.org/2010/09/qt-fots-catalog/Walmsley/product.json"}]}, 
{modules, []}
].
'd1e11215'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "sort(doc(\"catalog.xml\")//product/number)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e11215.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<number
         >443</number><number
         >557</number><number
         >563</number><number
         >784</number>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e13012'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 'abc'=>upper-case()", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e13012.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ABC\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e13030'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 'abc'=>substring(1,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e13030.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"ab\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e13048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "let $string := 'aa bb cc' return 
 $string=>replace('a','b')=>normalize-space()=>tokenize(\"\\s\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e13048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"bb\",\"bb\",\"cc\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e20420'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 xquery version \"3.1\" encoding \"UTF-8\"; \"inserted for testing prolog only examples\"", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e20420.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"inserted for testing prolog only examples\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e40951'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 deep-equal(map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
},map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e40951.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e40984'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
deep-equal( map {
    \"ACC\": map {
              \"name\": \"Accessories\",
              \"code\": 300 } ,
    \"WMN\": map {
              \"name\": \"Women's\",
              \"code\": 310 } ,
    \"MEN\": map {
              \"name\": \"Men's\",
              \"code\": 320 } 
    },map {
    \"ACC\": map {
              \"name\": \"Accessories\",
              \"code\": 300 } ,
    \"WMN\": map {
              \"name\": \"Women's\",
              \"code\": 310 } ,
    \"MEN\": map {
              \"name\": \"Men's\",
              \"code\": 320 } 
    })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e40984.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41029'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
deep-equal(map:merge(for $p in doc(\"catalog.xml\")//product
return map:entry(string($p/number), string($p/name))),
map {\"557\":\"Fleece Pullover\",
\"563\":\"Floppy Sun Hat\",
\"443\":\"Deluxe Travel Bag\",
\"784\":\"Cotton Dress Shirt\"})
", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41029.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41041'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
}; \"inserted for testing prolog only examples\"", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41041.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"inserted for testing prolog only examples\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41054'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 map:get($deptnames, \"ACC\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41054.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Accessories\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41054b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 $deptnames?(\"ACC\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41054b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Accessories\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41094'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
for $prod in doc(\"catalog.xml\")//product
return <product num=\"{$prod/number}\" 
                dept-name=\"{$deptnames?($prod/@dept)}\"/>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41094.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<product num=\"557\"
         dept-name=\"Women's\"/><product num=\"563\"
         dept-name=\"Accessories\"/><product num=\"443\"
         dept-name=\"Accessories\"/><product num=\"784\"
         dept-name=\"Men's\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41148'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
for $prod in doc(\"catalog.xml\")//product
return <product num=\"{$prod/number}\"
                dept-name=\"{$deptinfo?($prod/@dept)?(\"deptname\")}\"
                dept-code=\"{$deptinfo?($prod/@dept)?(\"deptnum\")}\"/>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41148.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<product num=\"557\"
         dept-name=\"Women's\" dept-code=\"310\"/><product num=\"563\"
         dept-name=\"Accessories\" dept-code=\"300\"/><product num=\"443\"
         dept-name=\"Accessories\" dept-code=\"300\"/><product num=\"784\"
         dept-name=\"Men's\" dept-code=\"320\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41173'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 $deptnames?(\"ACC\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41173.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Accessories\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41180'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 $deptnames?(\"ACC\",\"MEN\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41180.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"Accessories\",\"Men's\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41190'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 for $d in (\"ACC\",\"MEN\") return $deptnames?($d)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41190.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"Accessories\",\"Men's\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41194'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 $deptnames?(doc(\"catalog.xml\")//@dept)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41194.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"Women's\",\"Accessories\",\"Accessories\",\"Men's\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41194b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 $deptnames?*", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41194b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"Accessories\",\"Women's\",\"Men's\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41213'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $map-with-integer-keys := map{ 10:\"a\", 20:\"b\"}; $map-with-integer-keys?20", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41213.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"b\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41225'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 $deptnames?ACC", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41225.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"Accessories\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41255'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
for $prod in doc(\"catalog.xml\")//product
return <product num=\"{$prod/number}\"
                dept-name=\"{$deptinfo?($prod/@dept)?deptname}\"
                dept-code=\"{$deptinfo?($prod/@dept)?deptnum}\"/>", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41255.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<product num=\"557\"
         dept-name=\"Women's\" dept-code=\"310\"/><product num=\"563\"
         dept-name=\"Accessories\" dept-code=\"300\"/><product num=\"443\"
         dept-name=\"Accessories\" dept-code=\"300\"/><product num=\"784\"
         dept-name=\"Men's\" dept-code=\"320\"/>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41271'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
deep-equal( $deptinfo?*[?deptname = \"Accessories\"],
map { \"deptname\": \"Accessories\",
            \"deptnum\": 300 })
", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41271.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
 $deptinfo?*[?deptname = \"Accessories\"]?deptnum", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"300") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301a'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 map:size($deptnames)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301a.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 map:contains($deptnames,\"ACC\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 map:keys($deptnames)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"ACC\",\"MEN\",\"WMN\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
deep-equal(map:put($deptnames,\"SHO\",\"Shoes\"),
map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\",
  \"SHO\" : \"Shoes\"
}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
deep-equal(map:put($deptnames,\"ACC\",\"Other\"),
map {
  \"ACC\" : \"Other\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41301f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
deep-equal(map:remove($deptnames,\"ACC\"),
map {
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41301f.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41517'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptnames := map {
  \"ACC\" : \"Accessories\",
  \"WMN\" : \"Women's\",
  \"MEN\" : \"Men's\"
};
 let $f := function($k,$v) 
  {concat('Key: ',$k,', value: ',$v)}
return map:for-each($deptnames,$f)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41517.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"Key: ACC, value: Accessories\",
\"Key: WMN, value: Women's\",
\"Key: MEN, value: Men's\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41255b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
$deptinfo instance of map(xs:string,map(xs:string,xs:anyAtomicType)) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41255b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41255c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
$deptinfo instance of function(*) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41255c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41255d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
$deptinfo instance of function(xs:anyAtomicType) as item()* ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41255d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41255e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $deptinfo := map {
  \"ACC\": map {
            \"deptname\": \"Accessories\",
            \"deptnum\": 300 } ,
  \"WMN\": map {
            \"deptname\": \"Women's\",
            \"deptnum\": 310 } ,
  \"MEN\": map {
            \"deptname\": \"Men's\",
            \"deptnum\": 320 } 
};
$deptinfo instance of item() ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41255e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41590'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare function local:large-keys
  ($maparg as map(xs:integer,item()*))as xs:integer* {
   map:keys($maparg)[. > 50]
}; 
local:large-keys(map {10:\"a\",55:\"b\",60:\"c\"})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41590.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"55,60") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41624'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 [ \"a\", \"b\", \"c\" ]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41624.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ \"a\", \"b\", \"c\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41628'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array { \"a\", \"b\", \"c\" }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41628.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ \"a\", \"b\", \"c\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41635'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 [//product,( \"a\", \"b\", \"c\"),\"d\"]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41635.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"array:size($result) eq 3") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41648'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array { //product,( \"a\", \"b\", \"c\"),\"d\"}", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41648.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"array:size($result) eq 8") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41655'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare variable $myitems := 3;
 [$myitems, doc(\"catalog.xml\")//product, 
  12, xs:date('2015-01-15'), <foo>bar</foo>]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41655.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert(Res,"array:size($result) eq 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41659'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array {[\"a\", \"b\", \"c\"], \"d\" }", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41659.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[\"a\", \"b\", \"c\"], \"d\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41663'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 [[\"a\", \"b\", \"c\"], \"d\" ]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41663.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[[\"a\", \"b\", \"c\"], \"d\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41678'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 [ (\"a\", \"b\", \"c\"), \"d\" ]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41678.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ (\"a\", \"b\", \"c\"), \"d\" ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41686'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 ( [\"a\", \"b\", \"c\"], \"d\" )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41686.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\", \"b\", \"c\"], \"d\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:get($array-of-ints, 2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-ints?2", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
let $pos := 2 return $array-of-ints?($pos)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays?2?1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709d.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"d\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41791'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
 $array-of-ints?(2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41791.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41795'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
 $array-of-ints?(2,3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41795.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20,30") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41799'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
 for $i in (2,3) return $array-of-ints?($i)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41799.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20,30") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41803'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
 $array-of-ints?(1 to 2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41803.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10,20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41803b'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
 $array-of-ints?2", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41803b.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41803c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
 $array-of-ints?*", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41803c.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10,20,30") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays?2?1", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709e.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"d\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays?*", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709f.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709g'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays?*[?2 = \"b\"]", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709g.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"a\",\"b\",\"c\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709h'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:size($array-of-ints)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709h.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709i'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:head($array-of-ints)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709i.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"10") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709j'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:tail($array-of-ints)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709j.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[20,30]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709k'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:append($array-of-ints,40)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709k.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[10,20,30,40]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709l'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
 array:insert-before($array-of-ints,2,40)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709l.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[10,40,20,30]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709m'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:remove($array-of-ints,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709m.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[10,30]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709n'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:subarray($array-of-ints,2,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709n.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[20,30]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709o'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:filter($array-of-ints,function($n) {$n > 15})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709o.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[20,30]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709p'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:flatten($array-of-arrays)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709p.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a\",\"b\",\"c\",\"d\",\"e\",\"f\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709q'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:join(($array-of-ints,[\"a\",\"b\",\"c\"]))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709q.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[10,20,30,\"a\",\"b\",\"c\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709r'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:sort([6,2,-4],(),abs#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709r.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[2,-4,6]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709s'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
array:reverse($array-of-ints)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709s.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[30,20,10]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709t'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-ints instance of array(xs:integer)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709t.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709u'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays instance of array(array(xs:string))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709u.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709v'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays instance of function(*) ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709v.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709w'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays instance of function(xs:integer) as item()* ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709w.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e41709x'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare variable $array-of-ints := [10,20,30];
declare variable $array-of-arrays := [ [\"a\",\"b\",\"c\"], [\"d\",\"e\",\"f\"] ]; 
$array-of-arrays instance of item() ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e41709x.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e42207'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare function local:larger-values
  ($arrayarg as array(xs:integer))as xs:integer* {
   array:flatten($arrayarg)[. > 15]
}; 
local:larger-values([10,20,30])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e42207.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"20,30") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e42340'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
deep-equal(json-doc(\"product.json\"), map {
   \"number\": xs:double(557),
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"],
   \"is-current\": true(),
   \"other\": ()
})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e42340.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e42362'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"DIS * serialized response checked for map(*) type"}. 
'd1e48503'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
 array:append($array1,\"jkl\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48503.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",\"jkl\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48514'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
 array:append($array1,(\"jkl\",\"mno\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48514.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",(\"jkl\",\"mno\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48525'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
 array:append(array:append($array1,\"jkl\"),\"mno\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48525.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",\"jkl\",\"mno\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48536'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
 array:append($array1,[\"jkl\",\"mno\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48536.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",[\"jkl\",\"mno\"]]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48547'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
 array:append($array1,())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48547.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",()]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48617'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 let $f := upper-case#1
return apply($f,[\"a\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48617.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"A\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48676'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 apply(substring#3,[\"sometext\",2,4])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48676.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"omet\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48687'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 apply(max#1,[(1,2,3)])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48687.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48698'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 apply(concat#3,[\"a\",\"b\",\"c\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48698.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e48709'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 apply(upper-case#1,['a','b'])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e48709.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAP0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAP0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51544'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\", 3:\"third\",4:()};
declare variable $map2 := map {};
 map:contains($map1, 1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51544.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51555'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\", 3:\"third\",4:()};
declare variable $map2 := map {};
 map:contains($map1, 4)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51555.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51565'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\", 3:\"third\",4:()};
declare variable $map2 := map {};
 map:contains($map1, 9)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51565.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51576'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\", 3:\"third\",4:()};
declare variable $map2 := map {};
 map:contains($map1, \"1\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51576.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51592'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\", 3:\"third\",4:()};
declare variable $map2 := map {};
 map:contains($map2, 1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51592.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51729'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 contains-token(\"a b c\", \"c\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51729.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51740'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 contains-token(\"a b c\", \" c \")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51740.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51751'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 contains-token( (\"a b c\",\"d e f\"), \"c\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51751.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51762'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 contains-token( \"a, b, c\", \"b\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51762.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e51773'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 contains-token( \"a b c\", \"b c\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e51773.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e55090'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
deep-equal( map:entry(1,\"first\"),
map {1:\"first\"}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e55090.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e55101'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
deep-equal(  map:merge( ($map1, map:entry(3, \"third\")) ),
  map {1:\"first\", 2:\"second\", 3:\"third\"}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e55101.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e55112'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
deep-equal(
 map:merge( (map:entry(1, \"first\"), map:entry(2, \"second\")) ),
 map {1:\"first\", 2:\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e55112.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e55123'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
         deep-equal(
 map:merge(for $p in doc(\"catalog.xml\")//product
return map:entry(string($p/number), string($p/name))),
  map {\"557\":\"Fleece Pullover\", \"563\":\"Floppy Sun Hat\", \"443\":\"Deluxe Travel Bag\", \"784\":\"Cotton Dress Shirt\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e55123.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56387'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:filter([\"ab\",\"aa\",\"xy\"],starts-with#2(?,\"a\"))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56387.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ab\",\"aa\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56398'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:filter([4,5,6],function($n) {$n > 4})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56398.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[5,6]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56409'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:filter([4,5,6],function($n) {$n > 6})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56409.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56502'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:flatten([\"a\", \"b\", \"c\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56502.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56513'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:flatten( ([\"a\", \"b\"],[\"c\", \"d\"]) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56513.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\", \"d\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56524'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:flatten( ([\"a\", \"b\"],[\"c\", [\"d\"],[\"e\"]]) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56524.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\", \"d\", \"e\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56535'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:flatten( (\"a\", \"b\", \"c\") )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56535.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(\"a\", \"b\", \"c\")") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e56999'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left([1,2,3], 0, function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e56999.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57060'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left([1,2,3,4,5,6], 0, function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57060.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57070'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left([\"a\",\"b\",\"c\"], \"\", function($a, $b) { concat($a,$b) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57070.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57081'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left([\"a\",\"b\",\"c\"], \"\", function($a, $b) { concat($b,$a) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57081.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"cba\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57092'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left([\"a\",\"b\",\"c\"], \"x\", function($a, $b) { concat($a,',',$b) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57092.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"x,a,b,c\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left( [\"a\",\"b\",\"c\"], \"\", concat(?,?) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57114'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-left([], 0, function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57114.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57411'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right([1,2,3], 0, function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57411.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"6") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57472'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right([1,2,3,4,5,6], 0, function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57472.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"21") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57482'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right([\"a\",\"b\",\"c\"], \"\", function($a, $b) { concat($a,$b) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57482.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57493'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right([\"a\",\"b\",\"c\"], \"\", function($a, $b) { concat($b,$a) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57493.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"cba\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57504'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right([\"a\",\"b\",\"c\"], \"x\", function($a, $b) { concat($a,',',$b) })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57504.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"a,b,c,x\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57515'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right( [\"a\",\"b\",\"c\"], \"\", concat(?,?) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57515.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57526'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:fold-right([], 0, function($a, $b) { $a + $b })", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57526.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57796'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each( [\"a\",\"b\",\"c\"], function($x) {concat($x,\"x\")} )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57796.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ax\",\"bx\",\"cx\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57807'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each( [\"a\",\"b\",\"c\"], function($x) {$x,\"x\"} )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57807.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(\"a\",\"x\"),(\"b\",\"x\"),(\"c\",\"x\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57818'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each( [\"a\",\"b\",\"c\"], string-to-codepoints(?) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57818.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[97, 98, 99]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57961'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
 map:for-each($map1,function($k,$v) {concat($k,$v)})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57961.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(\"1first\",\"2second\")") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e57972'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
         deep-equal(
 map:merge(map:for-each($map1,function($k,$v) {map:entry($k + 1, $v)})),
 map {2:\"first\", 3:\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e57972.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e58316'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each-pair([\"a\", \"b\", \"c\"], [\"x\", \"y\", \"z\"], concat#2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e58316.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ax\", \"by\", \"cz\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e58327'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each-pair([\"a\", \"b\", \"c\"], [\"x\", \"y\", \"z\"], function($a, $b){$a, $b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e58327.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(\"a\",\"x\"), (\"b\",\"y\"), (\"c\",\"z\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e58338'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each-pair([1,2,3,4,5], [1,2,3,4,5], function($a, $b){$a * $b})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e58338.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1,4,9,16,25]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e58349'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:for-each-pair([\"a\", \"b\", \"c\", \"d\", \"e\"], [\"x\", \"y\", \"z\"], concat#2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e58349.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ax\", \"by\", \"cz\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60780'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [\"abc\", [10,20]];
 array:get($array1,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60780.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"def\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60791'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [\"abc\", [10,20]];
 array:get($array2,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60791.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[10,20]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60802'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [\"abc\", [10,20]];
 array:get($array2,3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60802.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60955'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {3:\"first\", 4:\"second\", 5:()};
 map:get($map1,3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60955.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"first\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60966'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {3:\"first\", 4:\"second\", 5:()};
 map:get($map1,5)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60966.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60976'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {3:\"first\", 4:\"second\", 5:()};
 map:get($map1,6)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60976.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e60986'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {3:\"first\", 4:\"second\", 5:()};
 map:get($map1,\"3\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e60986.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e61366'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:head([\"abc\",\"def\",\"ghi\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e61366.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e61377'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:head([\"abc\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e61377.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"\"abc\"") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e61388'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:head([])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e61388.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63192'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"ghi\",\"jkl\"];
 array:insert-before($array1,2,\"def\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63192.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",\"jkl\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63203'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"ghi\",\"jkl\"];
 array:insert-before($array1,4,\"mno\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63203.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"ghi\",\"jkl\",\"mno\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63214'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"ghi\",\"jkl\"];
 array:insert-before($array1,6,\"mno\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63214.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63227'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"ghi\",\"jkl\"];
 array:insert-before($array1,0,\"aaa\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63227.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63488'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [1,2,3];
 array:join( ($array1,$array2) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63488.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\",1,2,3]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63499'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [1,2,3];
 array:join( ($array2,$array1) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63499.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1,2,3,\"abc\",\"def\",\"ghi\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63510'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [1,2,3];
 array:join( ($array2,$array1,[4,5]) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63510.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[1,2,3,\"abc\",\"def\",\"ghi\",4,5]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63521'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [1,2,3];
 array:join( ($array1,[]) )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63521.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"def\",\"ghi\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63532'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [1,2,3];
 array:join( () )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63532.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63543'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\"];
declare variable $array2 := [1,2,3];
 array:join( [ ] )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63543.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63783'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"first\"};
declare variable $map3 := map {};
 map:keys($map1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63783.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_permutation(Res,"(1, 2)") of 
      true -> {comment, "Correct permutation"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63796'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"first\"};
declare variable $map3 := map {};
 map:keys($map2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63796.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e63807'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"first\"};
declare variable $map3 := map {};
 map:keys($map3)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e63807.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_empty(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66015'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1, $map2) ),
 map {1:\"first\", 2:\"second\", \"abc\":\"def\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66015.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66026'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map2, $map1) ),
 map {1:\"ONE\", 2:\"second\", \"abc\":\"def\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66026.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66037'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1, $map3) ),
 map {1:\"first\", 2:\"second\", \"1\":\"first\", \"2\":\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66037.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66048'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1, $map2, $map3) ),
 map {1:\"ONE\", 2:\"second\", \"abc\":\"def\", \"1\":\"first\", \"2\":\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66048.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_false(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66059'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1, map{3:\"third\"}) ),
 map {1:\"first\", 2:\"second\", 3:\"third\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66059.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66070'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1, map{2:\"second-new\"}) ),
 map {1:\"first\", 2:\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66070.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66081'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1, map:entry(2,\"second-new\")) ),
 map {1:\"first\", 2:\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66081.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66092'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( ($map1) ),
 map {1:\"first\", 2:\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66092.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e66103'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {1:\"ONE\", \"abc\":\"def\"};
declare variable $map3 := map {\"1\":\"first\", \"2\":\"second\"};
deep-equal(
 map:merge( () ),
 map {}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e66103.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e69523'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 parse-ietf-date(\"Wed, 05 Jul 2015 13:25:15 GMT\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e69523.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:dateTime(\"2015-07-05T13:25:15Z\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e69534'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 parse-ietf-date(\"Wed, 5 Jul 94 07:29 GMT\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e69534.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:dateTime(\"1994-07-05T07:29:00Z\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e69545'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 parse-ietf-date(\"Wed Jul 05 13:25:15 EST 2015\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e69545.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:dateTime(\"2015-07-05T13:25:15-05:00\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e69556'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 parse-ietf-date(\"Sunday, 05-Nov-94 08:25:15 GMT\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e69556.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:dateTime(\"1994-11-05T08:25:15Z\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e69567'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 parse-ietf-date(\"Wed, 5 Jul 2015 13:25:15 +0500\")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e69567.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_eq(Res,"xs:dateTime(\"2015-07-05T13:25:15+05:00\")") of 
      true -> {comment, "Equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e69767'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 deep-equal (
 parse-json('{
   \"number\": 557,
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\",\"black\"]
}'),
map {
   \"number\": xs:double(557),
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"]
})
", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e69767.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e70867'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
         deep-equal(
 map:put($map1, 1, \"ONE\"),
 map {1:\"ONE\", 2:\"second\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e70867.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e70878'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
         deep-equal(
 map:put($map1, 3, \"third\"),
 map {1:\"first\", 2:\"second\", 3:\"third\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e70878.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e70889'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
         deep-equal(
 map:put($map1, \"abc\", \"def\"),
 map {1:\"first\", 2:\"second\", \"abc\":\"def\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e70889.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71246'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 random-number-generator()?number", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71246.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"$result >= 0 and $result <=1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71254'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 random-number-generator()?permute(1 to 100)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71254.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:integer+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) = 100") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71262'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 for $seq in 1 to 100 return random-number-generator()?number", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71262.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) = 100") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count(distinct-values($result)) = 1") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71270'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 for $seq in 1 to 100 return random-number-generator($seq)?number", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71270.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) = 100") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71288'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 declare function local:random-sequence($length as xs:integer,
                                       $rng as map(xs:string, item())) {
  if ($length eq 0)
  then ()
  else ($rng?number, local:random-sequence($length - 1, $rng?next()))
};
local:random-sequence(5, random-number-generator())", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71288.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_type(Res,"xs:double+") of 
      true -> {comment, "Correct type"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count($result) = 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert(Res,"count(distinct-values($result)) = 5") of 
      true -> {comment, "Correct results"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71531'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:remove($array1,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71531.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\",\"ghi\",\"jkl\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71542'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:remove([\"abc\"],1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71542.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71553'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:remove($array1,5)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71553.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71660'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
deep-equal(
 map:remove($map1,2),
 map {1:\"first\"}
 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71660.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71671'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
deep-equal(
map:remove($map1,3),
map {1:\"first\", 2:\"second\"}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71671.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e71682'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
deep-equal( map:remove($map1,\"abc\"),
map {1:\"first\", 2:\"second\"}
)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e71682.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e72747'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:reverse([\"abc\",\"def\",\"ghi\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e72747.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"ghi\",\"def\",\"abc\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e72758'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:reverse([\"abc\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e72758.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"abc\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e72769'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:reverse([(\"a\",\"b\",\"c\")])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e72769.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(\"a\",\"b\",\"c\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e72779'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:reverse([ ])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e72779.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74262'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:size([1, 2, 3])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74262.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"3") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74273'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:size([\"abc\", [\"def\", \"ghi\"]])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74273.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74283'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:size([ ])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74283.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74294'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:size([[ ]])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74294.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74304'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 count([1, 2, 3])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74304.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"1") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74388'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {};
 map:size( $map1 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74388.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"2") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74399'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $map1 := map {1:\"first\", 2:\"second\"};
declare variable $map2 := map {};
 map:size( $map2 )", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74399.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"0") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74563'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 sort((6,2,4))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74563.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(2,4,6)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74585'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 sort(doc(\"catalog.xml\")//product/number/number(.))", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74585.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(xs:double(443),xs:double(557),xs:double(563),xs:double(784))") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74596'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 sort(doc(\"catalog.xml\")//product, (), function($prod) {$prod/number})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74596.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<product dept=\"ACC\">
  <number>443</number>
  <name language=\"en\">Deluxe Travel Bag</name>
 </product><product dept=\"WMN\">
  <number>557</number>
  <name language=\"en\">Fleece Pullover</name>
  <colorChoices>navy black</colorChoices>
 </product><product dept=\"ACC\">
  <number>563</number>
  <name language=\"en\">Floppy Sun Hat</name>
 </product><product dept=\"MEN\">
  <number>784</number>
  <name language=\"en\">Cotton Dress Shirt</name>
  <colorChoices>white gray</colorChoices>
  <desc>Our <i>favorite</i> shirt!</desc>
 </product>") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74610'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 sort(doc(\"catalog.xml\")//product, (), function($prod) {$prod/name, $prod/number})", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74610.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<product dept=\"MEN\">
  <number>784</number>
  <name language=\"en\">Cotton Dress Shirt</name>
  <colorChoices>white gray</colorChoices>
  <desc>Our <i>favorite</i> shirt!</desc>
 </product><product dept=\"ACC\">
  <number>443</number>
  <name language=\"en\">Deluxe Travel Bag</name>
 </product><product dept=\"WMN\">
  <number>557</number>
  <name language=\"en\">Fleece Pullover</name>
  <colorChoices>navy black</colorChoices>
 </product><product dept=\"ACC\">
  <number>563</number>
  <name language=\"en\">Floppy Sun Hat</name>
 </product>
 ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74627'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 sort((-6,-2,4),(),abs#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74627.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"(-2,4,-6)") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74798'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:sort([6,2,4])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74798.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[2,4,6]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74809'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:sort([(\"a\",\"c\",\"b\"), (\"a\",\"b\",\"f\")])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74809.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[(\"a\",\"b\",\"f\"), (\"a\",\"c\",\"b\")]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e74820'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:sort([6,2,-4],(),abs#1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e74820.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[2,-4,6]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76034'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76034.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"def\",\"ghi\",\"jkl\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76045'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,2,2)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76045.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"def\",\"ghi\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76056'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,2,1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76056.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"def\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76067'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,2,0)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76067.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76078'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,6)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76078.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76091'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,2,6)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76091.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e76104'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare variable $array1 := [\"abc\",\"def\",\"ghi\",\"jkl\"];
 array:subarray($array1,2,-1)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e76104.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0002") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0002 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e77397'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:tail([\"abc\",\"def\",\"ghi\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e77397.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[\"def\",\"ghi\"]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e77408'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:tail([\"abc\"])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e77408.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_deep_eq(Res,"[ ]") of 
      true -> {comment, "Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e77419'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 array:tail([])", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e77419.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"FOAY0001") of 
      true -> {comment, "Correct error"};
      {true, F} -> {comment, "WE: FOAY0001 " ++ binary_to_list(F)};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   {skip,"feature:fn-transform-XSLT"}. 
'd1e78807c'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 json-to-xml('{
   \"number\": 557,
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"],
   \"is-current\": true,
   \"other\": null
}')", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807c.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
            xmlns=\"http://www.w3.org/2005/xpath-functions\"><number 
            key=\"number\">557</number><string 
            key=\"name\">Fleece Pullover</string><array 
            key=\"colorChoices\"><string>navy</string><string>black</string></array><boolean 
            key=\"is-current\">true</boolean><null key=\"other\"/></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807d'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 json-to-xml('{
   \"number\": 557,
   \"name\": \"Fleece Pullover\",   
   \"name\": \"Fleece Pullover Redux\",
   \"colorChoices\": [\"navy \\u00E9\", \"black \\uFFFF\"],
   \"is-current\": true,
   \"other\": null
}',
map {
\"duplicates\": \"use-first\",
\"validate\": false(),
\"escape\": false(),
\"fallback\": function($s){\"ERROR!!\"}
})
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807d.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_xml(Res,"<map 
            xmlns=\"http://www.w3.org/2005/xpath-functions\"><number 
            key=\"number\">557</number><string 
            key=\"name\">Fleece Pullover</string><array 
            key=\"colorChoices\"><string>navy é</string><string>black ERROR!!</string></array><boolean 
            key=\"is-current\">true</boolean><null 
            key=\"other\"/></map>
         ") of 
      true -> {comment, "XML Deep equal"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807e'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         deep-equal(
 parse-json(xml-to-json(<map xmlns=\"http://www.w3.org/2005/xpath-functions\">
   <number key=\"number\">557</number>
   <string key=\"name\">Fleece Pullover</string>
   <array key=\"colorChoices\">
      <string>navy</string>
      <string>black</string>
   </array>
   <boolean key=\"is-current\">true</boolean>
   <null key=\"other\"/>
</map>,
map{\"indent\":true()})) ,
map {   \"number\": 557,
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"],
   \"is-current\": true(),
   \"other\": () }
)", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807e.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807f'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 deep-equal (
 parse-json('{
   \"number\": 557,
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\",\"black\"],
   \"is-current\": true,
   \"other\": null 
}'),
map {
   \"number\": xs:double(557),
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"],
   \"is-current\": true(),
   \"other\": () 
})
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807f.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807g'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 deep-equal (
 parse-json('{
   \"number\": 557,
   \"name\": \"Fleece Pullover\",
   \"name\": \"Fleece Pullover Redux\",
   \"colorChoices\": [\"navy \\u00E9\", \"black \\uFFFF\"],
   \"is-current\": true,
   \"other\": null
}',
map {
\"duplicates\": \"use-first\",
\"validate\": false(),
\"escape\": false(),
\"fallback\": function($s){\"ERROR!!\"}}),
map {
   \"number\": xs:double(557),
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy é\", \"black ERROR!!\"],
   \"is-current\": true(),
   \"other\": () 
})
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807g.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807h'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 deep-equal (
 parse-json(serialize(map {
   \"number\": xs:double(557),
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"],
   \"is-current\": true(),
   \"other\": () 
},
<output:serialization-parameters
   xmlns:output = \"http://www.w3.org/2010/xslt-xquery-serialization\">
  <output:method value=\"json\"/>
  <output:indent value=\"yes\"/>
</output:serialization-parameters>)),
parse-json('{
   \"number\": 557,
   \"name\": \"Fleece Pullover\",
   \"colorChoices\": [\"navy\", \"black\"],
   \"is-current\": true,
   \"other\": null 
}')
)
", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807h.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_true(Res) of 
      true -> {comment, "Empty"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807i'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace strings = \"http://datypic.com/strings\";
         let $library := load-xquery-module(\"http://datypic.com/strings\")
         let $trimFunction := $library?functions?(xs:QName(\"strings:trim\"))?1
         return $trimFunction(\"   x   y   \")", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "Walmsley/strings.xqm"), <<"Q{http://datypic.com/strings}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807i.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "x   y") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807j'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "declare namespace prod = \"http://datypic.com/prod\";
         let $library := load-xquery-module(\"http://datypic.com/prod\",
         map {\"context-item\" : doc(\"catalog.xml\")/catalog,
         \"location-hints\" : \"lib2.xqm\",
         \"variables\" : map{
         xs:QName(\"prod:label\") : \"Product Count\"}
         })
         let $prodsVariableValue := $library?variables?(xs:QName(\"prod:prods\"))
         let $countProdArity1 := $library?functions?(xs:QName(\"prod:countProds\"))?1
         return $countProdArity1($prodsVariableValue)", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "Walmsley/lib2.xqm"), <<"Q{http://datypic.com/prod}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807j.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "Product Count: 4") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'd1e78807k'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
         declare namespace prod = \"http://datypic.com/prod\";
         let $library := load-xquery-module(\"http://datypic.com/prod\",
         map {\"context-item\" : doc(\"catalog.xml\")/catalog,
         \"variables\" : map{
         xs:QName(\"prod:label\") : \"Product Count\"}
         })
         let $prodsVariableValue := $library?variables?(xs:QName(\"prod:prods\"))
         let $countProdArity2 := $library?functions?(xs:QName(\"prod:countProds\"))?2
         return $countProdArity2($prodsVariableValue, \"ACC\")
      ", 
   {Env,Opts} = xqerl_test:handle_environment(environment('all',__BaseDir)),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Hints = [{filename:join(__BaseDir, "Walmsley/lib2.xqm"), <<"Q{http://datypic.com/prod}">>}],
   LibList = xqerl_code_server:compile_files(Hints),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "d1e78807k.xq"), Qry1),
             xqerl:run(Mod,Opts) of 
                Etup when is_tuple(Etup), element(1, Etup) == xqError -> 
                   xqerl_test:combined_error(Etup, LibList);
                D -> D 
         catch _:E -> xqerl_test:combined_error(E, LibList) end,
   Out =    case xqerl_test:assert_string_value(Res, "Product Count: 2") of 
      true -> {comment, "String correct"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.