 hdfs dfs -mkdir /user/training/weather/
 hdfs dfs -put ~/futurense_hadoop-pyspark/labs/dataset/weather/weather_data.txt hdfs://localhost:9000/user/training/weather/
 split --bytes=21K weather_data.txt weather
 mv  weather.aa weather1.txt
 mv  weather.ab weather1.txt
 hdfs dfs -put ~/futurense_hadoop-pyspark/labs/dataset/weather/weather1.txt hdfs://localhost:9000/user/training/weather/
 hdfs dfs -put ~/futurense_hadoop-pyspark/labs/dataset/weather/weather2.txt hdfs://localhost:9000/user/training/weather/
 hdfs dfs -getmerge  /user/training/weather/weather1.txt /user/training/weather/weather2.txt weather3.txt
 hdfs dfs -cat /user/training/weather/weather1.txt