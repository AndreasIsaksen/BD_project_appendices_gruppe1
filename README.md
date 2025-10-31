# Repo information
This repo is created by "Gruppe 1" as a solution for giving access to the relevant solution which has been created in regards to the project assignment for the the course "ITL25019-1 25H Big Data: lagring og bearbeiding"

### Members of "Gruppe 1"
Andreas Isaksen  
Jon Åsbjørn Hauge  
Torgrim Aune

## Branch information
This is an overview of the branches found in this repo and its content.

### zpln (Zeppelin Notebooks)
Branch contains Zeppelin notebooks relevant for the project report. To run these files in a local docker environment, you'll have to download the relevant data files in the branch named data, which has to be placed with the correct directory hierarchy inside the sparkio directory in the docker setup.  

### Data
Branch contains relevant data which has been used to complete this projects assignments. These data files are crucial for the notebooks to work properly.
The collective correct directory structure for all data files is:  
\SPARKIO  
├───TLC  
│   ├───mapZones  
│   │   └───taxi_zones  
│   ├───out  
│   └───trips  
│       └───2025  
├───trafikkdata  
│   ├───bil  
│   └───sykkel  
└───værdata  

### Enviroment (zip)
Branch contains the last stable environment which was used to complete this project assignment without the data files for the project. This is mainly the environment that's given out one the course official school domain page, but with a configured YAML and a pre-defined directory hierarchy for the data files inside the sparkio directory.  
Relevant directory structure for the environment:  
Utviklingsmiljø Docker V3  
├───opt  
└───sparkio  
    ├───TLC  
    │   ├───mapZones  
    │   │   └───taxi_zones  
    │   ├───out  
    │   └───trips  
    │       └───2025  
    ├───trafikkdata  
    │   ├───bil  
    │   └───sykkel  
    └───værdata  

### Full setup (zip)
This branch contains a complete setup of all branches in one collective file. It's rather large since it also contains all data files which has been used in this project. When this file is unpacked you should be able to run the docker environment directly inside the folder "Utviklingsmiljø Docker V3". When the docker is up and running you should be able to import the Zeppelin notebooks from "http://localhost:8082/" or "your_local_IP_address:8082/" on a web browser.  
Full directory structure for this download:  
FullSetup  
├───Utviklingsmiljø Docker V3  
│   ├───opt  
│   │   └───spark-3.5.6-bin-hadoop3  
│   │       ├───bin  
│   │       ├───conf  
│   │       ├───data  
│   │       │   ├───artifact-tests  
│   │       │   │   └───crc  
│   │       │   ├───graphx  
│   │       │   ├───mllib  
│   │       │   │   ├───als  
│   │       │   │   ├───images  
│   │       │   │   │   └───origin  
│   │       │   │   │       ├───kittens  
│   │       │   │   │       └───multi-channel  
│   │       │   │   └───ridge-data  
│   │       │   └───streaming  
│   │       ├───examples  
│   │       │   ├───jars  
│   │       │   └───src  
│   │       │       └───main  
│   │       │           ├───java  
│   │       │           │   └───org  
│   │       │           │       └───apache  
│   │       │           │           └───spark  
│   │       │           │               └───examples  
│   │       │           │                   ├───ml  
│   │       │           │                   ├───mllib  
│   │       │           │                   ├───sql  
│   │       │           │                   │   ├───hive  
│   │       │           │                   │   └───streaming  
│   │       │           │                   └───streaming  
│   │       │           ├───python  
│   │       │           │   ├───ml  
│   │       │           │   ├───mllib  
│   │       │           │   ├───sql  
│   │       │           │   │   └───streaming  
│   │       │           │   └───streaming  
│   │       │           ├───r  
│   │       │           │   ├───ml  
│   │       │           │   └───streaming  
│   │       │           ├───resources  
│   │       │           │   ├───dir1  
│   │       │           │   │   └───dir2  
│   │       │           │   └───META-INF  
│   │       │           │       └───services  
│   │       │           ├───scala  
│   │       │           │   └───org  
│   │       │           │       └───apache  
│   │       │           │           └───spark  
│   │       │           │               └───examples  
│   │       │           │                   ├───extensions  
│   │       │           │                   ├───graphx  
│   │       │           │                   ├───ml  
│   │       │           │                   ├───mllib  
│   │       │           │                   ├───pythonconverters  
│   │       │           │                   ├───sql  
│   │       │           │                   │   ├───hive  
│   │       │           │                   │   ├───jdbc  
│   │       │           │                   │   └───streaming  
│   │       │           │                   └───streaming  
│   │       │           │                       └───clickstream  
│   │       │           └───scripts  
│   │       ├───jars  
│   │       ├───kubernetes  
│   │       │   ├───dockerfiles  
│   │       │   │   └───spark  
│   │       │   │       └───bindings  
│   │       │   │           ├───python  
│   │       │   │           └───R  
│   │       │   └───tests  
│   │       ├───licenses  
│   │       ├───python  
│   │       │   ├───dist  
│   │       │   ├───docs  
│   │       │   │   └───source  
│   │       │   │       ├───development  
│   │       │   │       ├───getting_started  
│   │       │   │       ├───migration_guide  
│   │       │   │       ├───reference  
│   │       │   │       │   ├───pyspark.pandas  
│   │       │   │       │   ├───pyspark.sql  
│   │       │   │       │   └───pyspark.ss  
│   │       │   │       ├───user_guide  
│   │       │   │       │   ├───pandas_on_spark  
│   │       │   │       │   └───sql  
│   │       │   │       ├───_static  
│   │       │   │       │   └───css  
│   │       │   │       └───_templates  
│   │       │   │           └───autosummary  
│   │       │   ├───lib  
│   │       │   ├───pyspark  
│   │       │   │   ├───cloudpickle  
│   │       │   │   ├───errors  
│   │       │   │   │   ├───exceptions  
│   │       │   │   │   └───tests  
│   │       │   │   ├───ml  
│   │       │   │   │   ├───connect  
│   │       │   │   │   ├───deepspeed  
│   │       │   │   │   │   └───tests  
│   │       │   │   │   ├───linalg  
│   │       │   │   │   ├───param  
│   │       │   │   │   ├───tests  
│   │       │   │   │   │   ├───connect  
│   │       │   │   │   │   ├───tuning  
│   │       │   │   │   │   └───typing  
│   │       │   │   │   └───torch  
│   │       │   │   │       └───tests  
│   │       │   │   ├───mllib  
│   │       │   │   │   ├───linalg  
│   │       │   │   │   ├───stat  
│   │       │   │   │   └───tests  
│   │       │   │   ├───pandas  
│   │       │   │   │   ├───data_type_ops  
│   │       │   │   │   ├───indexes  
│   │       │   │   │   ├───missing  
│   │       │   │   │   ├───plot  
│   │       │   │   │   ├───spark  
│   │       │   │   │   ├───tests  
│   │       │   │   │   │   ├───computation  
│   │       │   │   │   │   ├───connect  
│   │       │   │   │   │   │   ├───computation  
│   │       │   │   │   │   │   ├───data_type_ops  
│   │       │   │   │   │   │   ├───diff_frames_ops  
│   │       │   │   │   │   │   ├───frame  
│   │       │   │   │   │   │   ├───groupby  
│   │       │   │   │   │   │   ├───indexes  
│   │       │   │   │   │   │   ├───io  
│   │       │   │   │   │   │   ├───plot  
│   │       │   │   │   │   │   └───series  
│   │       │   │   │   │   ├───data_type_ops  
│   │       │   │   │   │   ├───diff_frames_ops  
│   │       │   │   │   │   ├───frame  
│   │       │   │   │   │   ├───groupby  
│   │       │   │   │   │   ├───indexes  
│   │       │   │   │   │   ├───io  
│   │       │   │   │   │   ├───plot  
│   │       │   │   │   │   └───series  
│   │       │   │   │   ├───typedef  
│   │       │   │   │   └───usage_logging  
│   │       │   │   ├───python  
│   │       │   │   │   └───pyspark  
│   │       │   │   ├───resource  
│   │       │   │   │   └───tests  
│   │       │   │   ├───sql  
│   │       │   │   │   ├───avro  
│   │       │   │   │   ├───connect  
│   │       │   │   │   │   ├───avro  
│   │       │   │   │   │   ├───client  
│   │       │   │   │   │   ├───proto  
│   │       │   │   │   │   ├───protobuf  
│   │       │   │   │   │   └───streaming  
│   │       │   │   │   │       └───worker  
│   │       │   │   │   ├───pandas  
│   │       │   │   │   │   └───_typing  
│   │       │   │   │   │       └───protocols  
│   │       │   │   │   ├───protobuf  
│   │       │   │   │   ├───streaming  
│   │       │   │   │   └───tests  
│   │       │   │   │       ├───connect  
│   │       │   │   │       │   ├───client  
│   │       │   │   │       │   └───streaming  
│   │       │   │   │       ├───pandas  
│   │       │   │   │       ├───streaming  
│   │       │   │   │       └───typing  
│   │       │   │   ├───streaming  
│   │       │   │   │   └───tests  
│   │       │   │   ├───testing  
│   │       │   │   ├───tests  
│   │       │   │   │   └───typing  
│   │       │   │   └───__pycache__  
│   │       │   ├───pyspark.egg-info  
│   │       │   ├───test_coverage  
│   │       │   │   └───conf  
│   │       │   └───test_support  
│   │       │       ├───hello  
│   │       │       │   └───sub_hello  
│   │       │       └───sql  
│   │       │           ├───orc_partitioned  
│   │       │           │   ├───b=0  
│   │       │           │   │   └───c=0  
│   │       │           │   └───b=1  
│   │       │           │       └───c=1  
│   │       │           └───streaming  
│   │       ├───R  
│   │       │   └───lib  
│   │       │       └───SparkR  
│   │       │           ├───doc  
│   │       │           ├───help  
│   │       │           ├───html  
│   │       │           ├───Meta  
│   │       │           ├───profile  
│   │       │           ├───R  
│   │       │           ├───tests  
│   │       │           │   └───testthat  
│   │       │           └───worker  
│   │       ├───sbin  
│   │       └───yarn  
│   └───sparkio  
│       ├───TLC  
│       │   ├───dataminers  
│       │   ├───mapZones  
│       │   │   └───taxi_zones  
│       │   ├───out  
│       │   │   └───Yellow_with_extra.parquet  
│       │   └───trips  
│       │       └───2025  
│       ├───trafikkdata  
│       │   ├───bil  
│       │   └───sykkel  
│       └───værdata  
└───zpln  
