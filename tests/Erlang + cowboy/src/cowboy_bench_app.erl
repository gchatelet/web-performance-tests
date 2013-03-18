-module(cowboy_bench_app).

-behaviour(application).

-export([start/0, start/2, stop/1]).

start() -> 
  ok = application:start(crypto),
  ok = application:start(ranch),
  ok = application:start(cowboy),
  ok = application:start(cowboy_bench).

start(_,_) -> 
  Dispatch = cowboy_router:compile(element(2, application:get_env(cowboy_bench, cowboy_dispatch))),
  Port = element(2, application:get_env(cowboy_bench, cowboy_port)),
  cowboy:start_http(http, 100, [{port, Port}], [{env, [{dispatch, Dispatch}]}]).

stop(_) -> ok.
