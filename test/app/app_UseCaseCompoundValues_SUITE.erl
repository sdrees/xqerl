-module('app_UseCaseCompoundValues_SUITE').

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

-export(['UseCaseCompoundValues-001'/1]).

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
            'UseCaseCompoundValues-001'
        ]}
    ].

'UseCaseCompoundValues-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        declare namespace i = \"http://example.com/compound-values\";\n"
        "        declare function i:complex($real as xs:double, $imaginary as xs:double) as map(xs:boolean, xs:double)\n"
        "        {\n"
        "          map { true() : $real, false() : $imaginary }\n"
        "        };\n"
        "        \n"
        "        declare function i:real($complex as map(xs:boolean, xs:double)) as xs:double\n"
        "        {\n"
        "          $complex(true())\n"
        "        };\n"
        "        \n"
        "        declare function i:imaginary($complex as map(xs:boolean, xs:double)) as xs:double\n"
        "        {\n"
        "          $complex(false())\n"
        "        };\n"
        "        \n"
        "        declare function i:add($arg1 as map(xs:boolean, xs:double), $arg2 as map(xs:boolean, xs:double)) as map(xs:boolean, xs:double){\n"
        "          i:complex(i:real($arg1)+i:real($arg2),\n"
        "            i:imaginary($arg1)+i:imaginary($arg2))\n"
        "        };\n"
        "        \n"
        "        declare function i:multiply($arg1 as map(xs:boolean, xs:double), $arg2 as map(xs:boolean, xs:double)) as map(xs:boolean, xs:double)\n"
        "        {\n"
        "          i:complex(\n"
        "            i:real($arg1)*i:real($arg2) - i:imaginary($arg1)*i:imaginary($arg2),\n"
        "            i:real($arg1)*i:imaginary($arg2) + i:imaginary($arg1)*i:real($arg2))\n"
        "        };\n"
        "        \n"
        "        i:add(i:complex(2, 3), i:complex(1, -6)),\n"
        "        i:multiply(i:complex(2, -1), i:complex(3, 4))\n"
        "      ",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "UseCaseCompoundValues-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            xqerl_test:assert_deep_eq(
                Res,
                "(map {true() : 3, false() : -3}, map {true() : 10, false() : 5})"
            )
        of
            true -> {comment, "Deep equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.
