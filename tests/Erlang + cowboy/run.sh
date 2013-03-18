./rebar get-deps
./rebar compile && erl -s cowboy_bench_app -pa ebin/ deps/**/ebin/ -config sys
