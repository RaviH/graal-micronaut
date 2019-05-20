graal-micronaut
----
A simple micronaut application to verify graal vm startup time:
 
 Command used to create the app:
 
 `mn create-app --features swagger-java,http-server,http-client,graal-native-image --lang java --build maven graal-micronaut`
 
 1. To create the package run: `mvn clean package`. This will create `graal-micronaut-0.1.jar` in target folder.
 2. Run the application: 
 
 ```
 $ java -jar target/graal-micronaut-0.1.jar
 18:30:22.244 [main] INFO  io.micronaut.runtime.Micronaut - Startup completed in 1320ms. Server Running: http://localhost:8080
 ```
 
 3. Create a native image: `native-image -jar target/graal-micronaut-0.1.jar`
 4. Run the native image from the base directory: `./graal-micronaut`