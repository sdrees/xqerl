-module('method_json_SUITE').
-include_lib("common_test/include/ct.hrl").
-export([all/0,
         suite/0]).
-export([init_per_suite/1,
         end_per_suite/1]).
-export(['Serialization-json-1'/1]).
-export(['Serialization-json-2'/1]).
-export(['Serialization-json-3'/1]).
-export(['Serialization-json-4'/1]).
-export(['Serialization-json-5'/1]).
-export(['Serialization-json-6'/1]).
-export(['Serialization-json-7'/1]).
-export(['Serialization-json-8'/1]).
-export(['Serialization-json-9'/1]).
-export(['Serialization-json-10'/1]).
-export(['Serialization-json-11'/1]).
-export(['Serialization-json-12'/1]).
-export(['Serialization-json-13'/1]).
-export(['Serialization-json-14'/1]).
-export(['Serialization-json-15'/1]).
-export(['Serialization-json-16'/1]).
-export(['Serialization-json-17'/1]).
-export(['Serialization-json-18'/1]).
-export(['Serialization-json-19'/1]).
-export(['Serialization-json-20'/1]).
-export(['Serialization-json-21'/1]).
-export(['Serialization-json-22'/1]).
-export(['Serialization-json-23'/1]).
-export(['Serialization-json-24'/1]).
-export(['Serialization-json-25'/1]).
-export(['Serialization-json-26'/1]).
-export(['Serialization-json-27'/1]).
-export(['Serialization-json-28'/1]).
-export(['Serialization-json-29'/1]).
-export(['Serialization-json-30'/1]).
-export(['Serialization-json-31'/1]).
-export(['Serialization-json-32'/1]).
-export(['Serialization-json-33'/1]).
-export(['Serialization-json-34'/1]).
-export(['Serialization-json-35'/1]).
-export(['Serialization-json-36'/1]).
-export(['Serialization-json-37'/1]).
-export(['Serialization-json-38'/1]).
-export(['Serialization-json-39'/1]).
-export(['Serialization-json-40'/1]).
-export(['Serialization-json-41'/1]).
-export(['Serialization-json-42'/1]).
-export(['Serialization-json-43'/1]).
-export(['Serialization-json-44'/1]).
-export(['Serialization-json-45'/1]).
-export(['Serialization-json-46'/1]).
-export(['Serialization-json-47'/1]).
-export(['Serialization-json-48'/1]).
-export(['Serialization-json-49'/1]).
-export(['Serialization-json-50'/1]).
-export(['Serialization-json-51'/1]).
-export(['Serialization-json-52'/1]).
-export(['Serialization-json-53'/1]).
-export(['Serialization-json-54'/1]).
-export(['Serialization-json-55'/1]).
-export(['Serialization-json-56'/1]).
-export(['Serialization-json-57'/1]).
-export(['Serialization-json-58'/1]).
-export(['Serialization-json-59'/1]).
-export(['Serialization-json-60'/1]).
-export(['Serialization-json-61'/1]).
-export(['Serialization-json-62'/1]).
-export(['Serialization-json-63'/1]).
-export(['Serialization-json-64'/1]).
-export(['Serialization-json-65'/1]).
-export(['Serialization-json-66'/1]).
-export(['Serialization-json-67'/1]).
-export(['Serialization-json-68'/1]).
-export(['Serialization-json-69'/1]).
-export(['Serialization-json-70'/1]).
-export(['Serialization-json-71'/1]).
-export(['Serialization-json-72'/1]).
-export(['Serialization-json-73'/1]).
-export(['Serialization-json-74'/1]).
suite() -> [{timetrap,{seconds, 5}}].
end_per_suite(_Config) -> 
   ct:timetrap({seconds,60}), 
   xqerl_code_server:unload(all).
init_per_suite(Config) -> 
   {ok,_} = application:ensure_all_started(xqerl),
   DD = filename:dirname(filename:dirname(?config(data_dir, Config))),
   TD = filename:join(DD, "QT3-test-suite"),
   __BaseDir = filename:join(TD, "ser"),
   [{base_dir, __BaseDir}|Config].
all() -> [
'Serialization-json-1', 
'Serialization-json-2', 
'Serialization-json-3', 
'Serialization-json-4', 
'Serialization-json-5', 
'Serialization-json-6', 
'Serialization-json-7', 
'Serialization-json-8', 
'Serialization-json-9', 
'Serialization-json-10', 
'Serialization-json-11', 
'Serialization-json-12', 
'Serialization-json-13', 
'Serialization-json-14', 
'Serialization-json-15', 
'Serialization-json-16', 
'Serialization-json-17', 
'Serialization-json-18', 
'Serialization-json-19', 
'Serialization-json-20', 
'Serialization-json-21', 
'Serialization-json-22', 
'Serialization-json-23', 
'Serialization-json-24', 
'Serialization-json-25', 
'Serialization-json-26', 
'Serialization-json-27', 
'Serialization-json-28', 
'Serialization-json-29', 
'Serialization-json-30', 
'Serialization-json-31', 
'Serialization-json-32', 
'Serialization-json-33', 
'Serialization-json-34', 
'Serialization-json-35', 
'Serialization-json-36', 
'Serialization-json-37', 
'Serialization-json-38', 
'Serialization-json-39', 
'Serialization-json-40', 
'Serialization-json-41', 
'Serialization-json-42', 
'Serialization-json-43', 
'Serialization-json-44', 
'Serialization-json-45', 
'Serialization-json-46', 
'Serialization-json-47', 
'Serialization-json-48', 
'Serialization-json-49', 
'Serialization-json-50', 
'Serialization-json-51', 
'Serialization-json-52', 
'Serialization-json-53', 
'Serialization-json-54', 
'Serialization-json-55', 
'Serialization-json-56', 
'Serialization-json-57', 
'Serialization-json-58', 
'Serialization-json-59', 
'Serialization-json-60', 
'Serialization-json-61', 
'Serialization-json-62', 
'Serialization-json-63', 
'Serialization-json-64', 
'Serialization-json-65', 
'Serialization-json-66', 
'Serialization-json-67', 
'Serialization-json-68', 
'Serialization-json-69', 
'Serialization-json-70', 
'Serialization-json-71', 
'Serialization-json-72', 
'Serialization-json-73', 
'Serialization-json-74'
].

'Serialization-json-1'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        [ ] 

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-1.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-2'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        map { }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-2.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\{\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-3'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
     	declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        ()

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-3.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"null"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-4'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        [(),map{\"k\":()},[()]]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-4.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[null,\\{\"k\":null\\},\\[null\\]\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-5'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        [true(), not(true())]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-5.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[true,false\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-6'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        1 eq 1

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-6.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"true"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-7'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        \"abcd\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-7.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"abcd\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-8'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [\"a\",\"b\",\"c\"]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-8.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[\"a\",\"b\",\"c\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-9'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        1234

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-9.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"1234"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-10'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [12,12.34,xs:int(\"45\"),xs:decimal(\"45.67\"),xs:unsignedShort(\"89\")]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-10.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[12,12.34,45,45.67,89\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-11'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        xs:float(\"-0\")

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-11.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"-0"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-12'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        xs:float(\"INF\")

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-12.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-13'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [xs:double(\"-INF\")]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-13.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-14'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        xs:double(\"NaN\")

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-14.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-15'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        map { \"a\" : xs:float(\"NaN\") }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-15.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0020") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-16'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        1e-5

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-16.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"0\\.00001"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-17'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [-10000000 cast as xs:double]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-17.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"-1\\.0E7"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-18'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        map { \"a\" : xs:decimal(12678967.543233) cast as xs:float }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-18.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\{\"a\":1\\.2678\\d*E7\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-19'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        \"abc\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-19.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"abc\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-20'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [xs:QName(\"abc\")]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-20.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"abc\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-21'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        map { \"a\" : xs:gYearMonth(\"1995-05\") }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-21.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\{\"a\":\"1995-05\"\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-22'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        xs:hexBinary(\"0fb7\")

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-22.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"0FB7\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-23'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        1, 2

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-23.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-24'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [(1, 2)]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-24.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-25'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        map { \"a\" : (1, 2) }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-25.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-26'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [1],[2]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-26.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0023") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-27'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        <e/>

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-27.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<e\\\\/>"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-28'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        comment {\" hello world \"}

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-28.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"<!-- hello world -->"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-29'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        array {
           text { \"a\" },
           processing-instruction {\"a\"} {\"b\"},
           comment { \"a\" },
           element {\"a\"} {\"b\"},
           document { element {\"a\"}{\"b\"} }
        }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-29.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[\"a\",\"<\\?a b\\?>\",\"<!--a-->\",\"<a>b<\\\\/a>\",\"<a>b<\\\\/a>\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-30'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        [attribute {\"a\"} {\"b\"}]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-30.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SENR0001") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-31'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:normalization-form \"NFC\";
        
        \"suc&#807;on\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-31.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"suçon\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-32'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:normalization-form \"none\";
        
        \"suc&#807;on\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-32.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"suçon\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-33'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        \"-&#x10330;-\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-33.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"-𐌰-\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-34'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-character-map.xml\";
        
        [\"abc\",\"XabcX\"]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-34.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\[\"AAABBBCCC\",\"XAAABBBCCCX\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-35'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-character-map.xml\";
        declare option output:normalization-form \"NFC\";
        
        \"|z|\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-35.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\"\\|suçon\\|\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-36'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-character-map.xml\";
        
        map { \"|y|\" : \"y\" }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-36.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"\\|\"\\|\":\"\"\"\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-37'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-character-map.xml\";
        
        map { \"w\" : 1, \"x\" : 1 }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-37.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"k\":1,\"k\":1\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-38'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-character-map.xml\";
        
        xs:QName(\"abc\")

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-38.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\"AAABBBCCC\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-39'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-character-map.xml\";
        
        [123, \"123\", xs:gDay(\"---11\")]

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-39.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\[123,\"one23\",\"---oneone\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-40'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        codepoints-to-string((9,10,13,32))

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-40.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\\\t\\\\n\\\\r "/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-41'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        map { \"\"\"\" : \"\\
\"}

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-41.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\{\"\\\\\"\":\"\\\\\\\\\\\\n\"\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-42'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:encoding \"US-ASCII\";
        
        \"&#x10330;\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-42.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\"\\\\uD800\\\\uDF30\""/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SESU0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SERE0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-43'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        \"<\"

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-43.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"<\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-44'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        text { \"<\" }

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-44.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"&lt;\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-45'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:allow-duplicate-names \"yes\";
        
        map { \"one\" : 1, xs:QName(\"one\") : 1 }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-45.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\{\"one\":1,\"one\":1\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-46'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:allow-duplicate-names \"no\";
        
        map { \"one\" : 1, xs:QName(\"one\") : 1 }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-46.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-47'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        
        map { \"on\" || \"e\" : 1, xs:QName(\"one\") : 1 }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-47.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-48'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:allow-duplicate-names \"no\";
        
        map { \"a\" : map { \"a\" : map { \"a\" : 1 } } }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-48.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\{\"a\":\\{\"a\":\\{\"a\":1\\}\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-49'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:allow-duplicate-names \"no\";
        
        map { \"1\" : map { \"1\" : map { \"1\" : 1 }, 1 : 1 } }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-49.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-50'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:allow-duplicate-names \"no\";
        
        map { \"a\": 1, \"2014-10-01\" : 1, \"b\" : 1, xs:date(\"2014-10-01\") : 1 }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-50.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-51'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:json-node-output-method \"xml\";
        
        <e>hi</e>

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-51.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"<e>hi<\\\\/e>\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-52'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:json-node-output-method \"text\";
        
        <e>hi</e>

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-52.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\"hi\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-53'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-node-serialization.xml\";
        
        <e>hi</e>

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-53.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\"hi\""/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-54'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-allow-duplicates.xml\";
        
        map { \"one\" : 1, xs:QName(\"one\") : 1 }  

      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-54.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"one\":1,\"one\":1\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-55'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:parameter-document \"json/json-allow-duplicates.xml\";
        [text { \"&#xd;\" }, \"&#xd;\"]
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-55.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\[\"&#13;\",\"\\\\r\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\[\"&#xD;\",\"\\\\r\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\[\"&#xd;\",\"\\\\r\"\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"XQST0119") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-56'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        [(),(),<e><f>a</f></e>,()]
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-56.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_serialization_match(Res,<<"\\[null,null,\"<e><f>a<\\\\/f><\\\\/e>\",null\\]"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-57'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = " 
        declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
        declare option output:method \"json\";
        declare option output:encoding \"US-ASCII\";
                
        \"&#x20ac;\"
        
      ", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-57.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:any(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\"\\\\u20AC\""/utf8>>,<<"i">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SERE0008") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_error(Res,"SESU0007") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "any-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-58'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-58.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{.*\"last\":\"Abiteboul\".*\\},\\{.*\"last\":\"Buneman\".*\\},\\{.*\"last\":\"Suciu\".*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{.*\"first\":\"Serge\".*\\},\\{.*\"first\":\"Peter\".*\\},\\{.*\"first\":\"Dan\".*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-59'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

parse-json(unparsed-text('http://xqerl.org/json/data001.json'))
", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json/data001.json"),"http://xqerl.org/json/data001.json"}]}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-59.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"title\":\"example glossary\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"title\":\"S\".*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"ID\":\"SGML\".*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"SortAs\":\"SGML\".*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"GlossTerm\":\"Standard Generalized Markup Language\".*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"Acronym\":\"SGML\".*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"Abbrev\":\"ISO 8879:1986\".*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"GlossSee\":\"markup\".*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"GlossDef\":\\{.*\"para\":\"A meta-markup language, used to create markup languages such as DocBook.\".*\\}.*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"glossary\":\\{.*\"GlossDiv\":\\{.*\"GlossList\":\\{\"GlossEntry\":\\{.*\"GlossDef\":\\{.*\"GlossSeeAlso\":\\[\"GML\",\"XML\"\\].*\\}.*\\}\\}.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-60'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

parse-json(unparsed-text('http://xqerl.org/json/data002.json'))
", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json/data002.json"),"http://xqerl.org/json/data002.json"}]}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-60.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"menu\":\\{.*\"id\":\"file\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"menu\":\\{.*\"value\":\"File\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"menu\":\\{.*\"popup\":\\{\"menuitem\":\\[\\{.*\"value\":\"New\".*\\},\\{.*\"value\":\"Open\".*\\},\\{.*\"value\":\"Close\".*\\}\\]\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"menu\":\\{.*\"popup\":\\{\"menuitem\":\\[\\{.*\"onclick\":\"CreateNewDoc\\(\\)\".*\\},\\{.*\"onclick\":\"OpenDoc\\(\\)\".*\\},\\{.*\"onclick\":\"CloseDoc\\(\\)\".*\\}\\]\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-61'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

parse-json(unparsed-text('http://xqerl.org/json/data003.json'))
", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json/data003.json"),"http://xqerl.org/json/data003.json"}]}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-61.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"widget\":\\{.*\"debug\":\"on\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"widget\":\\{.*\"window\":\\{.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"widget\":\\{.*\"image\":\\{.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"widget\":\\{.*\"text\":\\{.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"window\":\\{.*\"title\":\"Sample Konfabulator Widget\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"window\":\\{.*\"name\":\"main_window\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"window\":\\{.*\"width\":500.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"window\":\\{.*\"height\":500.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"image\":\\{.*\"src\":\"Images\\\\/Sun.png\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"image\":\\{.*\"name\":\"sun1\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"image\":\\{.*\"hOffset\":250.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"image\":\\{.*\"vOffset\":250.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"image\":\\{.*\"src\":\"Images\\\\/Sun.png\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"image\":\\{.*\"alignment\":\"center\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"data\":\"Click Here\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"size\":36.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"style\":\"bold\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"name\":\"text1\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"hOffset\":250.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"vOffset\":100.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"alignment\":\"center\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\"text\":\\{.*\"onMouseUp\":\"sun1\\.opacity = \\(sun1\\.opacity \\\\/ 100\\) \\* 90;\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-62'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

parse-json(unparsed-text('http://xqerl.org/json/data004.json'))
", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json/data004.json"),"http://xqerl.org/json/data004.json"}]}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-62.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"web-app\":\\{.*\"servlet\":\\[(\\{.*\\},){4}\\{.*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"web-app\":\\{.*\"servlet-mapping\":\\{.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"web-app\":\\{.*\"taglib\":\\{.*\\}.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-63'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

parse-json(unparsed-text('http://xqerl.org/json/data005.json'))
", 
   {Env,Opts} = xqerl_test:handle_environment([{'decimal-formats', []}, 
{sources, []}, 
{collections, []}, 
{'static-base-uri', []}, 
{'context-item', [""]}, 
{vars, []}, 
{params, []}, 
{namespaces, []}, 
{schemas, []}, 
{resources, [{"text/plain", filename:join(__BaseDir, "json/data005.json"),"http://xqerl.org/json/data005.json"}]}, 
{modules, []}
]),
   Qry1 = lists:flatten(Env ++ Qry),
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-63.xq"), Qry1),
             xqerl:run(Mod,Opts) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"menu\":\\{.*\"header\":\"SVG Viewer\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"menu\":\\{.*\"items\":\\[(\\{[^}]*\\},){2}null,((\\{[^}]*\\},){3}null,){2}(\\{[^}]*\\},){8}null,\\{\"id\":\"Help\"\\},\\{.*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-64'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        \"xml-content\": <simple>text-value</simple>,
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-64.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"xml-content\":\"<simple>text-value<\\\\/simple>\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-65'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        \"xml-content\": element simple { \"text-value\" },
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-65.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"xml-content\":\"<simple>text-value<\\\\/simple>\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-66'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        \"xml-content\": element simple { 1 + 1 },
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-66.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"xml-content\":\"<simple>2<\\\\/simple>\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-67'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            element simple { 1 + 1 },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
           }
        ],
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-67.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\"<simple>2<\\\\/simple>\",\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-68'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        <node-key>strange</node-key> : element simple { 1 + 1 },
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-68.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"strange\":\"<simple>2<\\\\/simple>\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-69'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        \"xml-content\": <complex><simple>text-value</simple></complex>,
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-69.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"xml-content\":\"<complex><simple>text-value<\\\\/simple><\\\\/complex>\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-70'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";

map {
    \"book\": map {
        \"title\": \"Data on the Web\",
        \"year\": 2000,
        \"author\": [
            map {
                \"last\": \"Abiteboul\",
                \"first\": \"Serge\"
            },
            map {
                \"last\": \"Buneman\",
                \"first\": \"Peter\"
            },
            map {
                \"last\": \"Suciu\",
                \"first\": \"Dan\"
            }
        ],
        \"xml-content\": <complex><simple>text-value</simple></complex>,
        \"publisher\": \"Morgan Kaufmann Publishers\",
        \"price\": 39.95
    }
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-70.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"title\":\"Data on the Web\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"year\":2000.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"author\":\\[\\{[^}]*\\},\\{[^}]*\\},\\{[^}]*\\}\\].*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"xml-content\":\"<complex><simple>text-value<\\\\/simple><\\\\/complex>\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"publisher\":\"Morgan Kaufmann Publishers\".*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{\"book\":\\{.*\"price\":39.95.*\\}\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-71'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
  \"string-value\": \"a string\",
  \"numeric-value\": 123.456,
  \"node-value\": element el1 { element el2 { \"simple content\" }},
  xs:integer(\"123456\"): xs:integer(\"123456\"),
  xs:date(\"2014-09-30\"): \"date-key\",
  \"array\": [
    xs:integer(\"123456\"), xs:date(\"2014-09-30\"), xs:boolean(\"true\"), xs:boolean(\"false\")
  ]
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-71.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"string-value\":\"a string\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"numeric-value\":123.456.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"node-value\":\"<el1><el2>simple content<\\\\/el2><\\\\/el1>\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"123456\":123456.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"2014-09-30\":\"date-key\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"array\":\\[123456,\"2014-09-30\",true,false\\].*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-72'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";
declare option output:allow-duplicate-names \"yes\";

map {
  \"string-value\": \"a string\",
  \"numeric-value\": 123.456,
  \"node-value\": element el1 { element el2 { \"simple content\" }},
  xs:integer(\"123456\"): xs:integer(\"123456\"),
  xs:date(\"2014-09-30\"): \"date-key\",
  \"2014-09-30\": \"string date key\",
  \"array\": [
    xs:integer(\"123456\"), xs:date(\"2014-09-30\"), xs:boolean(\"true\"), xs:boolean(\"false\")
  ]
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-72.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case lists:all(fun({comment,_}) -> true; (_) -> false end, [
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"string-value\":\"a string\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"numeric-value\":123.456.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"node-value\":\"<el1><el2>simple content<\\\\/el2><\\\\/el1>\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"123456\":123456.*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"2014-09-30\":\"date-key\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"2014-09-30\":\"string date key\".*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end, 
   case xqerl_test:assert_serialization_match(Res,<<"\\{.*\"array\":\\[123456,\"2014-09-30\",true,false\\].*\\}"/utf8>>,<<"">>) of 
      true -> {comment, "Correct serialization"};
      {false, F} -> F 
   end   ]) of 
      true -> {comment, "all-of"};
      _ -> false 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-73'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";
declare option output:allow-duplicate-names \"no\";

map {
  \"string-value\": \"a string\",
  \"numeric-value\": 123.456,
  \"node-value\": element el1 { element el2 { \"simple content\" }},
  xs:integer(\"123456\"): xs:integer(\"123456\"),
  xs:date(\"2014-09-30\"): \"date-key\",
  \"2014-09-30\": \"string date key\",
  \"array\": [
    xs:integer(\"123456\"), xs:date(\"2014-09-30\"), xs:boolean(\"true\"), xs:boolean(\"false\")
  ]
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-73.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end. 
'Serialization-json-74'(Config) ->
   __BaseDir = ?config(base_dir, Config),
   Qry = "
declare namespace output = \"http://www.w3.org/2010/xslt-xquery-serialization\";
declare option output:method  \"json\";
declare option output:indent  \"no\";
declare option output:media-type  \"text/json\";
declare option output:encoding  \"UTF-8\";
declare option output:json-node-output-method  \"xml\";

map {
  \"string-value\": \"a string\",
  \"numeric-value\": 123.456,
  \"node-value\": element el1 { element el2 { \"simple content\" }},
  xs:integer(\"123456\"): xs:integer(\"123456\"),
  xs:date(\"2014-09-30\"): \"date-key\",
  \"2014-09-30\": \"string date key\",
  \"array\": [
    xs:integer(\"123456\"), xs:date(\"2014-09-30\"), xs:boolean(\"true\"), xs:boolean(\"false\")
  ]
}
", 
   Qry1 = Qry,
   io:format("Qry1: ~p~n",[Qry1]),
   Res = try Mod = xqerl_code_server:compile(filename:join(__BaseDir, "Serialization-json-74.xq"), Qry1),
             xqerl:run(Mod) of D -> D catch _:E -> E end,
   Out =    case xqerl_test:assert_error(Res,"SERE0022") of 
      true -> {comment, "Correct error"};
      {false, F} -> F 
   end, 
   case Out of
      {comment, C} -> {comment, C};
      Err -> ct:fail(Err)
   end.