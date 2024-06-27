# Usa la imagen base de Spark 3.5.0
FROM spark:3.5.0

RUN mkdir -p /opt/spark/jars && \
    curl -o /opt/spark/jars/hadoop-aws-3.2.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.2.0/hadoop-aws-3.2.0.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-bundle-1.11.271.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.271/aws-java-sdk-bundle-1.11.271.jar
