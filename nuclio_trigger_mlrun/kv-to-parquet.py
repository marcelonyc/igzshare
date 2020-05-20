# coding: utf-8

# In[1]:


import os


# In[2]:


from pyspark.conf import SparkConf
from pyspark.sql import SparkSession
from pyspark.sql.functions import concat, col


# In[3]:


from mlrun import get_or_create_ctx


# In[18]:


mlrunctx = get_or_create_ctx('sparkjob')


# In[19]:


#table = 'v3io://'+ str(os.path.join(mlrunctx.get_param('v3io_container','users'), mlrunctx.get_param('V3IO_USERNAME','marcelo'), mlrunctx.get_param('v3io_kv_table_path','examples/bank')))
#parquet_table = 'v3io://'+ str(os.path.join(mlrunctx.get_param('v3io_container','users'), mlrunctx.get_param('V3IO_USERNAME','admin'), mlrunctx.get_param('v3io_parquet_table_path','tmp/parquet')))


# In[20]:


# Initiate a new Spark Session
spark = SparkSession.builder.appName("Spark Session with Default Configurations").getOrCreate()

# Retrieve and view all the default Spark configurations:
# conf = spark.sparkContext._conf.getAll()
# print(conf)
conf = spark.sparkContext._conf


# In[21]:


#df2 = spark.read.format("io.iguaz.v3io.spark.sql.kv").load(table)


# In[22]:


#parqFile = os.path.join(parquet_table)

#df2.write    .mode("overwrite")    .parquet(parqFile)


# In[ ]:


spark.stop()

