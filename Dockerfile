FROM eclipse-temurin:21-alpine
WORKDIR app
ARG VERSION=0.4.1
RUN wget -O JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/${VERSION}/JMusicBot-${VERSION}.jar
COPY config.txt .
CMD ["java","-Dnogui=true","-jar","JMusicBot.jar"]