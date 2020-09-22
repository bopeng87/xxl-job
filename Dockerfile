FROM openjdk:8u171-jre-alpine

WORKDIR /scheduler

ENV PARAMS=""

ENV TZ=PRC

ADD xxl-job-admin/target/xxl-job-admin-*.jar /app.jar

COPY xxl-job-admin-0.0.1-SNAPSHOT.jar ./

ENTRYPOINT ["sh", "-c", "java -Duser.timezone=GMT+08 -Dspring.profiles.active=$PROFILE -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -XX:MaxRAMFraction=2 -jar  ./xxl-job-admin-0.0.1-SNAPSHOT.jar"]
