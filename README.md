# Práctica 1: Procesamiento de datos mediante Apache Spark
By Luis Daniel Casais Mezquida, Lucas Gallego Bravo, Francisco Montañés de Lucas & Diego Picazo García  
Computación de Altas Prestaciones 24/25  
Máster en Ingeniería Informática  
Universidad Carlos III de Madrid


## Enunciado de la práctica
El conjunto de datos contiene los registros de la compañía _YellowCab_ de Nueva York en término de viajes en taxi. Cada entrada incluye campos que capturan las fechas y horas de recogida y entrega, los lugares de recogida y entrega, las distancias del viaje, las tarifas detalladas, los tipos de tarifas, los tipos de pago y los recuentos de pasajeros comunicados por el conductor. Los datos utilizados en los conjuntos de datos adjuntos fueron recopilados y proporcionados a la Comisión de Taxis y Limusinas de la Ciudad de Nueva York.

Puede encontrar más información del conjunto de datos en [el siguiente enlace](https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page).

Realice los estudios que considere necesarios sobre los datos que contiene. Es obligatorio proporcionar al menos tres estudios.  
Ejemplos de estudios:
- Velocidad media de los taxis en función de la hora.
- Viajes en taxi más comunes
- Registros financieros (propinas, personas, etc.)

Será necesario realizar al menos una ejecución basada en una consulta SQL (`spark.sql(...)`), al menos una consulta mediante una concatenación de llamadas a métodos del DataFrame como `select` o `groupBy`, y finalmente una haciendo uso de RDDs. Con el objetivo de estudiar el mejor método de trabajo, uno de los estudios realizados tiene que estar implementado de las tres formas.

Tendrá que preparar un informe, indicando los siguientes aspectos:
- Tiempo de ejecución.
- Cantidad de datos procesados en término de número de viajes.

Será obligatorio realizar un análisis de rendimiento en términos de aceleración para una de las consultas en dos variantes.

Se entregará tanto el código implementado como los comentarios y párrafos necesarios en un único [Notebook de Python](src/notebook.ipynb).

Ayudas:
- Lectura del fichero de entrada:
    ```python
    df = spark.read.format("csv").option("inferSchema", "true").option("timestampFormat","yyyy-MM-dd HH:mm:ss").option("header", "true").option("mode", "DROPMALFORMED").load("/content/tripdata_2017-1.csv")
    ```
- [Listado de funciones Apache Spark SQL](https://spark.apache.org/docs/latest/api/python/reference/pyspark.sql/functions.html)
- [Listado de transformaciones y acciones para RDDs en Apache Spark](https://spark.apache.org/docs/latest/rdd-programming-guide.html#transformations)




## Instalación y ejecución
1. Install [docker](https://docs.docker.com/engine/install/)
2. Execute the spark container
    ```bash
    docker compose up
    ```
    This should output at the end an URL like `http://127.0.0.1:8888/lab?token=<token>`
3. Open the Jupyter lab notebook [`notebook/CAP_Spark_2024.ipynb`](notebook/CAP_Spark_2024.ipynb) on the previous URL.
> [!NOTE]
> Alternatively, open the notebook in VsCode and connect to a remote Jupyter (`Select Kernel` → `Existing Jupyter Server`), using `http://127.0.0.1:8888` as URL and `<token>` as password.

You can monitor spark in [localhost:4040](http://localhost:4040/).
