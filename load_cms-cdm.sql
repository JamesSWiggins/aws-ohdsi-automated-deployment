/*
# Copyright 2018 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You may not use this file except in compliance with the License. 
# A copy of the License is located at
#    http://aws.amazon.com/apache2.0/
# or in the "license" file accompanying this file. This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, 
# either express or implied. See the License for the specific language governing permissions and limitations under the License.
*/

COPY CARE_SITE FROM 's3://ohdsi-sample-data/cms-cdm/CDM_CARE_SITE.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY CONDITION_OCCURRENCE(CONDITION_OCCURRENCE_ID,PERSON_ID,CONDITION_CONCEPT_ID,CONDITION_START_DATE,CONDITION_START_DATETIME,CONDITION_END_DATE,CONDITION_END_DATETIME,CONDITION_TYPE_CONCEPT_ID,STOP_REASON,PROVIDER_ID,VISIT_OCCURRENCE_ID,CONDITION_SOURCE_VALUE,CONDITION_SOURCE_CONCEPT_ID) FROM 's3://ohdsi-sample-data/cms-cdm/CDM_CONDITION_OCCURRENCE.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY DEATH FROM 's3://ohdsi-sample-data/cms-cdm/CDM_DEATH.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY DRUG_EXPOSURE(DRUG_EXPOSURE_ID,PERSON_ID,DRUG_CONCEPT_ID,DRUG_EXPOSURE_START_DATE,DRUG_EXPOSURE_START_DATETIME,DRUG_EXPOSURE_END_DATE,DRUG_EXPOSURE_END_DATETIME,DRUG_TYPE_CONCEPT_ID,STOP_REASON,REFILLS,QUANTITY,DAYS_SUPPLY,SIG,ROUTE_CONCEPT_ID,LOT_NUMBER,PROVIDER_ID,VISIT_OCCURRENCE_ID,DRUG_SOURCE_VALUE,DRUG_SOURCE_CONCEPT_ID,ROUTE_SOURCE_VALUE,DOSE_UNIT_SOURCE_VALUE) FROM 's3://ohdsi-sample-data/cms-cdm/CDM_DRUG_EXPOSURE.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY DEVICE_EXPOSURE(DEVICE_EXPOSURE_ID,PERSON_ID,DEVICE_CONCEPT_ID,DEVICE_EXPOSURE_START_DATE,DEVICE_EXPOSURE_START_DATETIME,DEVICE_EXPOSURE_END_DATE,DEVICE_EXPOSURE_END_DATETIME,DEVICE_TYPE_CONCEPT_ID,UNIQUE_DEVICE_ID,QUANTITY,PROVIDER_ID,VISIT_OCCURRENCE_ID,DEVICE_SOURCE_VALUE,DEVICE_SOURCE_CONCEPT_ID) FROM 's3://ohdsi-sample-data/cms-cdm/CDM_DEVICE_EXPOSURE.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY LOCATION FROM 's3://ohdsi-sample-data/cms-cdm/CDM_LOCATION.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY MEASUREMENT FROM 's3://ohdsi-sample-data/cms-cdm/CDM_MEASUREMENT.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY OBSERVATION FROM 's3://ohdsi-sample-data/cms-cdm/CDM_OBSERVATION.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY OBSERVATION_PERIOD(OBSERVATION_PERIOD_ID,PERSON_ID,OBSERVATION_PERIOD_START_DATE,OBSERVATION_PERIOD_START_DATETIME,OBSERVATION_PERIOD_END_DATE,OBSERVATION_PERIOD_END_DATETIME,PERIOD_TYPE_CONCEPT_ID) FROM 's3://ohdsi-sample-data/cms-cdm/CDM_OBSERVATION_PERIOD.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY PERSON FROM 's3://ohdsi-sample-data/cms-cdm/CDM_PERSON.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY PROCEDURE_OCCURRENCE(PROCEDURE_OCCURRENCE_ID,PERSON_ID,PROCEDURE_CONCEPT_ID,PROCEDURE_DATE,PROCEDURE_DATETIME,PROCEDURE_TYPE_CONCEPT_ID,MODIFIER_CONCEPT_ID,QUANTITY,PROVIDER_ID,VISIT_OCCURRENCE_ID,PROCEDURE_SOURCE_VALUE,PROCEDURE_SOURCE_CONCEPT_ID,QUALIFIER_SOURCE_VALUE) FROM 's3://ohdsi-sample-data/cms-cdm/CDM_PROCEDURE_OCCURRENCE.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY PROVIDER FROM 's3://ohdsi-sample-data/cms-cdm/CDM_PROVIDER.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY VISIT_OCCURRENCE(VISIT_OCCURRENCE_ID,PERSON_ID,VISIT_CONCEPT_ID,VISIT_START_DATE,VISIT_START_DATETIME,VISIT_END_DATE,VISIT_END_DATETIME,VISIT_TYPE_CONCEPT_ID,PROVIDER_ID,CARE_SITE_ID,VISIT_SOURCE_VALUE,VISIT_SOURCE_CONCEPT_ID) FROM 's3://ohdsi-sample-data/cms-cdm/CDM_VISIT_OCCURRENCE.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' TIMEFORMAT AS 'YYYYMMDD HH:MI:SS' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY DRUG_ERA FROM 's3://ohdsi-sample-data/cms-cdm/CDM_DRUG_ERA.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';
COPY CONDITION_ERA FROM 's3://ohdsi-sample-data/cms-cdm/CDM_CONDITION_ERA.csv.bz2' WITH DELIMITER ',' CSV REGION 'us-east-1' bzip2 IGNOREHEADER 1 QUOTE '\b' DATEFORMAT AS 'YYYYMMDD' emptyasnull blanksasnull iam_role 'RS_ROLE_ARN';