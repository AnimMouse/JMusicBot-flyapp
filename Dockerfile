FROM amazoncorretto:21-alpine
ARG VERSION=0.3.9
WORKDIR app
RUN wget -O JMusicBot.jar https://github.com/jagrosh/MusicBot/releases/download/${VERSION}/JMusicBot-${VERSION}.jar
COPY config.txt .
CMD ["java","-Dnogui=true","-jar","JMusicBot.jar"]