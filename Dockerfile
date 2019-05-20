FROM oracle/graalvm-ce:1.0.0-rc15 as graalvm
COPY . /home/app/graal-micronaut
WORKDIR /home/app/graal-micronaut
RUN native-image --no-server -cp target/graal-micronaut-*.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/graal-micronaut .
ENTRYPOINT ["./graal-micronaut"]
