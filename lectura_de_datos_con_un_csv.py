from pyspark.sql import SparkSession

# Crear una sesión Spark
spark = SparkSession.builder \
    .getOrCreate()

# URL del archivo CSV en GitHub

# Leer el archivo CSV directamente desde la URL en cada nodo del cluster
df = spark.read.csv("file:///opt/bitnami/spark/tmp/StudentData.csv", inferSchema=True, header=True)

# Mostrar el esquema y las primeras filas del DataFrame
df.printSchema()
df.show()

# Aquí puedes realizar operaciones adicionales con el DataFrame df