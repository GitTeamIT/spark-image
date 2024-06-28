# Usa la imagen base de Spark 3.5.0
FROM spark:3.5.0

# Copia tu archivo .py a /opt/spark en la imagen
COPY lectura_de_datos_con_un_csv.py /opt/spark/lectura_de_datos_con_un_csv.py
COPY StudentData.csv /opt/spark/StudentData.csv
