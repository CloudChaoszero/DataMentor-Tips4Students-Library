# Jupyter Notebook Tricks

## Introduction

## Tips

### Zeppline Tips

1. Be aware of lags and multiple instances of crashes on freemium version

### Collaboratory Tips

#### Enabling PySpark on Collaboratory

**Code**: 

```
!apt-get install openjdk-8-jdk-headless -qq > /dev/null
!wget -q http://apache.osuosl.org/spark/spark-2.3.2/spark-2.3.2-bin-hadoop2.7.tgz
!tar xf spark-2.3.2-bin-hadoop2.7.tgz
!pip install -q findspark

import os
os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-8-openjdk-amd64"
os.environ["SPARK_HOME"] = "/content/spark-2.3.2-bin-hadoop2.7"

import findspark
findspark.init()
from pyspark.sql import SparkSession
spark = SparkSession.builder.master("local[*]").getOrCreate()

```



## Resources

1. [Environment Setup](https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html)