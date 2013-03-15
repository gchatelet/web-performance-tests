import vibe.d;
import std.string;

void handleRequest(HttpServerRequest req, HttpServerResponse res)
{
    string response = format("Hello, %s", req.query["name"]);
    res.writeBody(cast(ubyte[])response, "text/plain");
}

shared static this()
{
    version(Debug)
    {
        logInfo("Debug");
    }

	auto settings = new HttpServerSettings;
	settings.port = 8080;
	
	listenHttp(settings, &handleRequest);
}
