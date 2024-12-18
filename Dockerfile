# Use a lightweight OpenJDK base image
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JMH benchmark JAR into the container
COPY target/benchmark.jar .

ENV JMH_ARGS ""

# Set the default command to run the benchmark
CMD ["sh" ,"-c", "java -jar benchmark.jar MethodDataSharing.* $JMH_ARGS"]