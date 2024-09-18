FROM docker.io/kubeflow/spark-operator:v1beta2-1.6.2-3.5.0

RUN mkdir -p /opt/spark/jars && \
    curl -o /opt/spark/jars/hadoop-aws-3.2.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.1/hadoop-aws-3.3.1.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-core-1.12.150.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-core/1.12.150/aws-java-sdk-core-1.12.150.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-dynamodb-1.12.187.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.12.187/aws-java-sdk-dynamodb-1.12.187.jar  && \
    curl -o /opt/spark/jars/aws-java-sdk-s3-1.12.150.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.12.150/aws-java-sdk-s3-1.12.150.jar

