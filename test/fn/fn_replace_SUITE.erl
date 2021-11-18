-module('fn_replace_SUITE').

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

-export(['fn-replace3args-1'/1]).
-export(['fn-replace3args-2'/1]).
-export(['fn-replace3args-3'/1]).
-export(['fn-replace3args-4'/1]).
-export(['fn-replace3args-5'/1]).
-export(['fn-replace3args-6'/1]).
-export(['fn-replace3args-7'/1]).
-export(['fn-replaceErr-1'/1]).
-export(['fn-replaceErr-2'/1]).
-export(['fn-replaceErr-3'/1]).
-export(['fn-replace-1'/1]).
-export(['fn-replace-2'/1]).
-export(['fn-replace-3'/1]).
-export(['fn-replace-4'/1]).
-export(['fn-replace-5'/1]).
-export(['fn-replace-6'/1]).
-export(['fn-replace-7'/1]).
-export(['fn-replace-8'/1]).
-export(['fn-replace-9'/1]).
-export(['fn-replace-10'/1]).
-export(['fn-replace-11'/1]).
-export(['fn-replace-12'/1]).
-export(['fn-replace-13'/1]).
-export(['fn-replace-14'/1]).
-export(['fn-replace-15'/1]).
-export(['fn-replace-16'/1]).
-export(['fn-replace-17'/1]).
-export(['fn-replace-18'/1]).
-export(['fn-replace-19'/1]).
-export(['fn-replace-20'/1]).
-export(['fn-replace-21'/1]).
-export(['fn-replace-22'/1]).
-export(['fn-replace-23'/1]).
-export(['fn-replace-24'/1]).
-export(['fn-replace-25'/1]).
-export(['fn-replace-26'/1]).
-export(['fn-replace-27'/1]).
-export(['fn-replace-28'/1]).
-export(['fn-replace-29'/1]).
-export(['fn-replace-30'/1]).
-export(['fn-replace-31'/1]).
-export(['fn-replace-32'/1]).
-export(['fn-replace-33'/1]).
-export(['fn-replace-34'/1]).
-export(['fn-replace-35'/1]).
-export(['fn-replace-36'/1]).
-export(['fn-replace-37'/1]).
-export(['fn-replace-38'/1]).
-export(['fn-replace-39'/1]).
-export(['fn-replace-40'/1]).
-export(['fn-replace-41'/1]).
-export(['fn-replace-42'/1]).
-export(['fn-replace-43'/1]).
-export(['fn-replace-44'/1]).
-export(['fn-replace-45'/1]).
-export(['fn-replace-46'/1]).
-export(['fn-replace-47'/1]).
-export(['fn-replace-48'/1]).
-export(['fn-replace-49'/1]).
-export(['fn-replace-50'/1]).
-export(['fn-replace-51'/1]).
-export(['fn-replace-52'/1]).
-export(['fn-replace-53'/1]).
-export(['fn-replace-54'/1]).
-export(['fn-replace-55'/1]).
-export(['fn-replace-56'/1]).
-export(['fn-replace-57'/1]).
-export(['K-ReplaceFunc-1'/1]).
-export(['K-ReplaceFunc-2'/1]).
-export(['K-ReplaceFunc-3'/1]).
-export(['K-ReplaceFunc-4'/1]).
-export(['K-ReplaceFunc-5'/1]).
-export(['K-ReplaceFunc-6'/1]).
-export(['K-ReplaceFunc-7'/1]).
-export(['K-ReplaceFunc-8'/1]).
-export(['K-ReplaceFunc-9'/1]).
-export(['K2-ReplaceFunc-1'/1]).
-export(['K2-ReplaceFunc-2'/1]).
-export(['K2-ReplaceFunc-3'/1]).
-export(['K2-ReplaceFunc-4'/1]).
-export(['K2-ReplaceFunc-5'/1]).
-export(['K2-ReplaceFunc-6'/1]).
-export(['K2-ReplaceFunc-7'/1]).
-export(['K2-ReplaceFunc-8'/1]).
-export(['cbcl-fn-replace-001'/1]).
-export(['cbcl-fn-replace-002'/1]).
-export(['cbcl-fn-replace-003'/1]).
-export(['cbcl-fn-replace-004'/1]).
-export(['cbcl-fn-replace-005'/1]).

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
    __BaseDir = filename:join(TD, "fn"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'fn-replace3args-1',
            'fn-replace3args-2',
            'fn-replace3args-3',
            'fn-replace3args-4',
            'fn-replace3args-5',
            'fn-replace3args-6',
            'fn-replace3args-7',
            'fn-replaceErr-1',
            'fn-replaceErr-2',
            'fn-replaceErr-3',
            'fn-replace-1',
            'fn-replace-2',
            'fn-replace-3',
            'fn-replace-4',
            'fn-replace-5',
            'fn-replace-6',
            'fn-replace-7',
            'fn-replace-8',
            'fn-replace-9',
            'fn-replace-10',
            'fn-replace-11',
            'fn-replace-12',
            'fn-replace-13'
        ]},
        {group_1, [parallel], [
            'fn-replace-14',
            'fn-replace-15',
            'fn-replace-16',
            'fn-replace-17',
            'fn-replace-18',
            'fn-replace-19',
            'fn-replace-20',
            'fn-replace-21',
            'fn-replace-22',
            'fn-replace-23',
            'fn-replace-24',
            'fn-replace-25',
            'fn-replace-26',
            'fn-replace-27',
            'fn-replace-28',
            'fn-replace-29',
            'fn-replace-30',
            'fn-replace-31',
            'fn-replace-32',
            'fn-replace-33',
            'fn-replace-34',
            'fn-replace-35',
            'fn-replace-36',
            'fn-replace-37'
        ]},
        {group_2, [parallel], [
            'fn-replace-38',
            'fn-replace-39',
            'fn-replace-40',
            'fn-replace-41',
            'fn-replace-42',
            'fn-replace-43',
            'fn-replace-44',
            'fn-replace-45',
            'fn-replace-46',
            'fn-replace-47',
            'fn-replace-48',
            'fn-replace-49',
            'fn-replace-50',
            'fn-replace-51',
            'fn-replace-52',
            'fn-replace-53',
            'fn-replace-54',
            'fn-replace-55',
            'fn-replace-56',
            'fn-replace-57',
            'K-ReplaceFunc-1',
            'K-ReplaceFunc-2',
            'K-ReplaceFunc-3',
            'K-ReplaceFunc-4'
        ]},
        {group_3, [parallel], [
            'K-ReplaceFunc-5',
            'K-ReplaceFunc-6',
            'K-ReplaceFunc-7',
            'K-ReplaceFunc-8',
            'K-ReplaceFunc-9',
            'K2-ReplaceFunc-1',
            'K2-ReplaceFunc-2',
            'K2-ReplaceFunc-3',
            'K2-ReplaceFunc-4',
            'K2-ReplaceFunc-5',
            'K2-ReplaceFunc-6',
            'K2-ReplaceFunc-7',
            'K2-ReplaceFunc-8',
            'cbcl-fn-replace-001',
            'cbcl-fn-replace-002',
            'cbcl-fn-replace-003',
            'cbcl-fn-replace-004',
            'cbcl-fn-replace-005'
        ]}
    ].

'fn-replace3args-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace3args-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace3args-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace3args-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace3args-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace3args-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"This is a characte\",\"This is a characte\",\"This is a characte\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace3args-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:replace(xs:string(\"This is a characte\"),xs:string(\"This is a characte\"),xs:string(\"This is a characte\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace3args-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "This is a characte") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replaceErr-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"bra\", \"*\", \"p\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replaceErr-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replaceErr-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"bra\", \"\\\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replaceErr-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replaceErr-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"bra\", \"$y\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replaceErr-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \"bra\", \"*\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a*cada*") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \"a.*a\", \"*\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "*") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \"a.*?a\", \"*\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "*c*bra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \"a\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "brcdbr") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \"a(.)\", \"a$1$1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abbraccaddabbra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \".*?\", \"$1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"AAAA\", \"A+\", \"b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "b") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"AAAA\", \"A+?\", \"b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "bbbb") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"darted\", \"^(.*?)d(.*)$\", \"$1c$2\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "carted") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abcd\", \"(ab)|(a)\", \"[1=$1][2=$2]\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-10.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "[1=ab][2=]cd") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:count(fn:replace((), \"bra\", \"*\"))",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-11.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abracadabra\", \"bra\", \"*\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-12.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a*cada*") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra?abracadabra\", \"\\?\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-13.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra*abracadabra\", \"\\*\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-14.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra+abracadabra\", \"\\+\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-15.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra{abracadabra\", \"\\{\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-16.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra}abracadabra\", \"\\}\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-17.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra(abracadabra\", \"\\(\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-18.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra)abracadabra\", \"\\)\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-19.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra[abracadabra\", \"\\[\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-20.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra]abracadabra\", \"\\]\", \"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-21.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra-abracadabra\", \"\\-\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-22.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra.abracadabra\", \"\\.\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-23.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra|abracadabra\", \"\\|\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-24.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\\abracadabra\", \"\\\\\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-25.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra	abracadabra\", \"\\t\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-26.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:replace(\"abracadabra\n"
        "abracadabra\", \"\\n\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-27.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabraabracadabra\", \"aa{1}\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-28.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrwithbracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabraabracadabraabracadabra\", \"aa{1,}\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-29.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrwithbracadabrwithbracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabraabracadabraabracadabra\", \"aa{1,2}\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-30.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrwithbracadabrwithbracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra^abracadabra\", \"\\^\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-31.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabrawithabracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"^a\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-32.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "withbracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"ww\",\"with\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-33.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "abracadabra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"a\", \"$1\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-34.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "$1br$1c$1d$1br$1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"a?bracadabra?\", \"a?\", \"\\$1\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-35.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "\\$1bracadabr\\$1") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"([aA])(?:br)([aA])\", \"$1**$2\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-36.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a**acada**a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"a\", \"\\$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-37.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "$br$c$d$br$") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"(a)\", \"\\$$1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-38.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "$abr$ac$ad$abr$a") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-39'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"a\", \"\\\\\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-39.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "\\br\\c\\d\\br\\") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-40'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:replace(\"abracadabra\", \"((((( ((((( (((((a))))) ))))) )))))\", \"|$1$15|\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-40.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "|aa|br|aa|c|aa|d|aa|br|aa|") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-41'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"((((( ((((( (((((a))))) ))))) )))))\", \"$1520\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-41.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a20bra20ca20da20bra20") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-42'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:replace(\"abracadabra\", \"((((( ((((( (((((a)(b))))) ))))) )))))\", \"($14.$15.$16.$17)\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-42.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "(ab.a.b.ab7)racad(ab.a.b.ab7)ra") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-43'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:replace(concat('Mary', codepoints-to-string(13), 'Jones'), 'Mary.Jones', 'Jacob Jones')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-43.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "concat('Mary', codepoints-to-string(13), 'Jones')") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-44'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "fn:replace(concat('Mary', codepoints-to-string(13), 'Jones'), 'Mary.Jones', 'Jacob Jones', 's')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-44.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "'Jacob Jones'") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-45'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"Now, let's SEND OUT for QUICHE!!\", \"[A-Z][A-Z]+\", \"$0$0\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-45.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"Now, let's SENDSEND OUTOUT for QUICHEQUICHE!!\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-46'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"12-34\", \"^\\d+(-(\\d+))?$\", \"$2\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-46.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"34\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-47'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace('abc', '^.+?(b+)?$', '$1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-47.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-48'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace('abcd', '^a(.).$|^a...$', '$1')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-48.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "\"\"") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-49'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"a/b/c\", \"/\", \"\\\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-49.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a\\b\\c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-50'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"a\\b\\c\", \"\\\", \"\\\\\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-50.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a\\\\b\\\\c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-51'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"a/b/c\", \"/\", \"$\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-51.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a$b$c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-52'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"a/b/c\", \"/\", \"$'\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-52.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a$'b$'c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-53'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"a/b/c\", \"/\", \"$`\", \"q\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-53.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "a$`b$`c") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-54'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:replace(\"abracadabra\", \"((((( ((((( (((((a))))) ))))) )))))\", \"$1$1\", \"x\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-54.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "aabraacaadaabraa") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-55'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "replace('abcdefghijk', '(a)|(b)|(c)|(d)|(e)|(f)|(g)|(h)|(i)|(j)', '$1')\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-55.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "ak") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-56'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace('10%', '^\\d*\\.?\\d+', '')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-56.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "%") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'fn-replace-57'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace('987654321A', '^(9)(8)(7)(6)(5)(4)(3)(2)(1)((A*?)|(.+))$', '$9$11$12')",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "fn-replace-57.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_string_value(Res, "1A") of
            true -> {comment, "String correct"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"pattern\", \"replacement\", \" \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", (), \"replacement\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"pattern\", ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPTY0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPTY0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"pattern\", \"replacement\", \"X\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"pattern\", \"replacement\", \"\", ())",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0017") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0017 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"in\", \"thisIsInvalid\\\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"(input)\", \"thisIsInvalid$\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"in\", \"thisIsInvalid\\ \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-ReplaceFunc-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"input\", \"in\", \"thisIsInvalid$ \")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K-ReplaceFunc-9.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"a a a \", \"(a )\", \"replacment: \\1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-1.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"a a a \", \"(a )\", \"replacment: \\1\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-2.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0004") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0004 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abcd\", \"(a)\\2(b)\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-3.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abcd\", \"(asd)[\\1]\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-4.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abcd\", \"(asd)[asd\\1]\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-5.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abcd\", \"(asd)[asd\\0]\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-6.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"abcd\", \"1[asd\\0]\", \"\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-7.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0002") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0002 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-ReplaceFunc-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "         declare function local:doReplace($input as xs:string?, $pattern as xs:string, $replacement as xs:string) as xs:string { \n"
        "            fn:replace($input, $pattern, $replacement) \n"
        "         }; \n"
        "         <result> <para>{fn:replace(\"ThiY Ybcd.\", \"Y\", \"Q\")}</para> <para>{local:doReplace(\"ThiY iY a abYY.\", \"Y\", \"Q\")}</para> </result>, \n"
        "         fn:replace(\"ThiY abcdY.\", \"Y\", \"Q\"), \n"
        "         local:doReplace(\"ThiY iY a abYY.\", \"Y\", \"Q\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "K2-ReplaceFunc-8.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:all(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert(Res, "$result[1]/para[1] = \"ThiQ Qbcd.\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[1]/para[2] = \"ThiQ iQ a abQQ.\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[2] = \"ThiQ abcdQ.\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert(Res, "$result[3] = \"ThiQ iQ a abQQ.\"") of
                        true -> {comment, "Correct results"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "all-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-replace-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "      boolean(replace(if(exists((1 to 10)[. mod 2 = 0])) then \"blah\" else (),\"a\",\"e\",\"m\"))\n"
        "   ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-replace-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-replace-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "replace(\"a\",\"\",\"b\")",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-replace-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-replace-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        replace(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),\",\"),\"\",\"c\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-replace-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-replace-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        replace(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),\",\"),\"\",\"c\",\"m\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-replace-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-fn-replace-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        replace(string-join(for $x in (1 to 10)[. mod 2 = 0] return string($x),\",\"),\"\",\"c\",\"m\")\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-fn-replace-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FORX0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FORX0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
