# https://learn.microsoft.com/en-us/azure/data-factory/transform-data-synapse-spark-job-definition

import sys
from pyspark.sql import SparkSession


if __name__=='__main__':
    spark = SparkSession.builder \
    .appName("Test Spark Job Definition") \
    .getOrCreate()  

    df = spark.read.csv(sys.argv[1],header=True)

    df.write.format('csv').save(sys.argv[2])