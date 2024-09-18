FROM docker.io/kubeflow/spark-operator:v1beta2-1.6.2-3.5.0

RUN rm -f hadoop-client-api-3.3.4.jar \
    && rm -f hadoop-client-runtime-3.3.4.jar

RUN mkdir -p /opt/spark/jars && \
    curl -o /opt/spark/jars/hadoop-common-3.4.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.4.0/hadoop-common-3.4.0.jar && \
    curl -o hadoop-client-api-3.4.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-client-api/3.4.0/hadoop-client-api-3.4.0.jar \
    && curl -o hadoop-client-runtime-3.4.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-client-runtime/3.4.0/hadoop-client-runtime-3.4.0.jar && \ 
    curl -o /opt/spark/jars/hadoop-aws-3.4.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.0/hadoop-aws-3.4.0.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-core-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-core/1.12.772/aws-java-sdk-core-1.12.772.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-dynamodb-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.12.772/aws-java-sdk-dynamodb-1.12.772.jar  && \
    curl -o /opt/spark/jars/aws-java-sdk-s3-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.12.772/aws-java-sdk-s3-1.12.772.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-bundle-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.772/aws-java-sdk-bundle-1.12.772.ja && \
    curl -o /opt/spark/jars/s3-2.28.2.jar https://repo1.maven.org/maven2/software/amazon/awssdk/s3/2.28.2/s3-2.28.2.jar

