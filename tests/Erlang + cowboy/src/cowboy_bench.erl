-module(cowboy_bench).

-export([ init/3
         ,handle/2
         ,terminate/3
        ]).

init(_TcpHttp, Req, _Args) -> {ok, Req, undefined}.

handle(Req, _State) ->
  {Meth, Req1} = cowboy_req:method(Req),
  {ok, element(2, response_maybe(Meth, Req1)), undefined}.

terminate(_,_,_) -> ok.

response_maybe(<<"GET">>, Req) ->
  {Name, Req1} = cowboy_req:qs_val(<<"name">>, Req),
  cowboy_req:reply(200, [], <<"Hello, ", Name/binary>>, Req1);

response_maybe(_, Req) ->
  cowboy_req:reply(501, [], not_implemented(), Req).

not_implemented() -> <<"<!doctype html>
  <html>
    <head>
      <title>Web Performance Tests :: 501</title>
    </head>
    <body>
      <h1>501</h1> I'm just sitting watching the wheels go round and round.
    </body>
  </html>">>.
