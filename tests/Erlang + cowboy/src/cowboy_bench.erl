-module(cowboy_bench).

-export([ init/3
         ,handle/2
         ,terminate/3
        ]).

init(_TcpHttp, Req, _Args) -> {ok, Req, undefined}.

handle(Req, _State) ->
  {ok, Req1} = cowboy_req:reply(501, [], not_implemented(), Req),
  {ok, Req1, undefined}.

terminate(_,_,_) -> ok.

not_implemented() -> <<"<!doctype html>
  <html>
    <head>
      <title>Web Performance Tests :: 501</title>
    </head>
    <body>
      <h1>501</h1> I'm just sitting watching the wheels go round and round.
    </body>
  </html>">>.
