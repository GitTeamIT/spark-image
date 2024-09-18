# Usa la imagen base de Spark 3.5.0
FROM spark:3.5.0

RUN mkdir -p /opt/spark/jars && \
    curl -o /opt/spark/jars/hadoop-aws-3.4.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.0/hadoop-aws-3.4.0.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-core-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-core/1.12.772/aws-java-sdk-core-1.12.772.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-dynamodb-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-dynamodb/1.12.772/aws-java-sdk-dynamodb-1.12.772.jar  && \
    curl -o /opt/spark/jars/aws-java-sdk-s3-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-s3/1.12.772/aws-java-sdk-s3-1.12.772.jar && \
    curl -o /opt/spark/jars/aws-java-sdk-bundle-1.12.772.jar https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.772/aws-java-sdk-bundle-1.12.772.jar

# Copia tu archivo .py a /opt/spark en la imagen
COPY lectura_de_datos_con_un_csv.py /opt/spark/lectura_de_datos_con_un_csv.py
COPY StudentData.csv /opt/spark/StudentData.csv
