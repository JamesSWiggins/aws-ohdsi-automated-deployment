## OHDSI-in-a-Box

Quickly deploy a single instance implementation of OHDSI tools and sample data for personal learning and training enviroments.  If you are looking to deploy a enterprise, scalable OHDSI architecture then check out the [OHDSIonAWS project](https://github.com/OHDSI/OHDSIonAWS).  

| AWS Region Code | Name | Launch |
| --- | --- | --- 
| us-east-1 |US East (N. Virginia)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=us-east-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/ohdsi-in-a-box.yaml) |
| eu-west-1 |EU (Ireland)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=eu-west-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/ohdsi-in-a-box.yaml) |
| ap-northeast-1 |AP (Tokyo)| [![cloudformation-launch-stack](images/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?region=ap-northeast-1#/stacks/new?stackName=OHDSI&templateURL=https://s3.amazonaws.com/ohdsi-rstudio/ohdsi-in-a-box.yaml) |


| OHDSI Component | Version |
| --- | --- 
| OMOP Common Data Model | v5.3.1 |
| Atlas | v2.7.0 |
| WebAPI | v2.7.0 | 
| Usagi | v1.1.6 |
| WhiteRabbit | v0.7.8 |
| RabbitInAHat| v0.7.8 |
| Achilles | v1.6.5 |
| PatientLevelPrediction | v3.0.5 |
| DatabaseConnector | v2.3.0 |
| DatabaseConnectorJars | v1.0.0 |
| SqlRender | v1.6.0 |
| OhdsiRTools | v1.7.0 |
| FeatureExtraction | v2.2.2 |
| Cyclops | v2.0.2 |
| OhdsiSharing | v0.1.3 |


| Sample Data Source | Size |
| --- | --- 
| CMS DeSynPUF | 100k persons |
| Synthea | 1k persons |



## License

This library is licensed under the Apache 2.0 License. 
