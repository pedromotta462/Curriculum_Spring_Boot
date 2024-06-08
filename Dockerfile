FROM openjdk:17-jdk-alpine

RUN addgroup -S app && adduser -S app -G app
USER app

WORKDIR /app

COPY . .

EXPOSE 8080

CMD ["java", "-jar", "target/CurriculumSpringBoot-0.0.1-SNAPSHOT.jar"]