FROM java:jdk-alpine
COPY src /opt/src
RUN mkdir /opt/bin
RUN javac -d /opt/bin /opt/src/HelloWorld.java 
ENTRYPOINT java -cp /opt/bin/ HelloWorld

