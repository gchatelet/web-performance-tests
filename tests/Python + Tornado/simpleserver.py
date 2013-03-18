import tornado.ioloop
import tornado.web


class GreetingResourceHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("Hello, " + self.get_argument('name', True))

application = tornado.web.Application([
    (r"/", GreetingResourceHandler),
])


if __name__ == "__main__":
    application.listen(8080)
    tornado.ioloop.IOLoop.instance().start()
