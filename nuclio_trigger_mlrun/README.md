
### 1. set_env.ipynb

Configure this variables based on your environment

All notebooks get their context from these variables

Note: to run a Spark for kubernetes job, you need jupyter as the base image. 

### 2. deploy-nuclio-function.ipynb

* To run a Spark for k8s job (ONLY) you need to have the Nuclio function image be base on a Jupyter image. This is needed to pickup the correct jars.
* The notebook is a wrapper. The function is defined in a separate notebook (kubeflow-pipeline.ipynb)
* Use the environment variables to pass values to the pipeline Notebook

### 3. kubeflow-pipeline.ipynb
The pipeline

### 4. kv-to-parquet.ipynb
The code to be executed in Spark for k8s
Note: This notebook needs to be converted to a python script and the first line (...python..) has to be removed.

### 5. kv-to-parquet.py
Code invoked by Spark for k8s. Converted from the notebook
NOTE(AGAIN): Remove the first line after conversion. Otherwise it will try to start a python environment.
