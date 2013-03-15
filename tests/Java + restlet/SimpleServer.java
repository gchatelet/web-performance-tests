import org.restlet.Application;
import org.restlet.Server;
import org.restlet.data.Protocol;
import org.restlet.resource.Get;
import org.restlet.resource.ServerResource;
 
 public class SimpleServer extends Application {
     public static void main(String[] args) throws Exception {
         new Server(Protocol.HTTP, 8080, GreetingResource.class).start();
     }

     public static class GreetingResource extends ServerResource {
         @Get
         public String getHello() {
             return "Hello, " + getQueryValue("name");
         }
     }
 }
