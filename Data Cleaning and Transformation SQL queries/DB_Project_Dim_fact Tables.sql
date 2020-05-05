use project_dim_fact

/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      DATA MODEL
 *
 * Date Created : Tuesday, April 21, 2020 16:53:37
 * Target DBMS : Microsoft SQL Server 2017
 */

/* 
 * TABLE: dim_apc_details 
 */

CREATE TABLE dim_apc_details(
    apc_id             int             NOT NULL,
    APC                varchar(255)    NULL,
    APC_Description    varchar(255)    NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (apc_id)
)
go



IF OBJECT_ID('dim_apc_details') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_apc_details >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_apc_details >>>'
go

/* 
 * TABLE: dim_drug_details 
 */

CREATE TABLE dim_drug_details(
    drug_id           int             NOT NULL,
    DRG_Definition    varchar(255)    NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (drug_id)
)
go



IF OBJECT_ID('dim_drug_details') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_drug_details >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_drug_details >>>'
go

/* 
 * TABLE: dim_provider 
 */

CREATE TABLE dim_provider(
    Provider_Number            varchar(255)    NOT NULL,
    Provider_ID                varchar(255)    NOT NULL,
    Name_Of_The_Provider       varchar(255)    NULL,
    Provider_Street_Address    varchar(255)    NULL,
    Provider_City              varchar(255)    NULL,
    Provider_State             varchar(255)    NULL,
    Provider_Zip_Code          varchar(255)    NULL,
    Provider_HRR               varchar(255)    NULL,
    Provider_Year              nvarchar(10)        NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (Provider_Number)
)
go



IF OBJECT_ID('dim_provider') IS NOT NULL
    PRINT '<<< CREATED TABLE dim_provider >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE dim_provider >>>'
go

/* 
 * TABLE: fact_home_health_agency 
 */

CREATE TABLE fact_home_health_agency(
    hha_id                                                               int             NOT NULL,
    Provider_Number                                                      varchar(255)    NOT NULL,
    Total_Episodes_non_LUPA                                              int             NULL,
    Distinct_Beneficiaries_non_LUPA                                      int             NULL,
    Average_Number_of_Total_Visits_Per_Episode_non_LUPA                  float           NULL,
    Average_Number_of_Skilled_Nursing_Visits_Per_Episode_non_LUPA        float           NULL,
    Average_Number_of_PT_Visits_Per_Episode_non_LUPA                     float           NULL,
    Average_Number_of_OT_Visits_Per_Episode_non_LUPA                     float           NULL,
    Average_Number_of__ST_Visits_Per_Episode_non_LUPA                    float           NULL,
    Average_Number_of_Home_Health_Aide_Visits_Per_Episode_non_LUPA       float           NULL,
    Average_Number_of_Medical_Social_Visits_Per_Episode_non_LUPA         float           NULL,
    Total_HHA_Charge_Amount_non_LUPA                                     int             NULL,
    Total_HHA_Medicare_Payment_Amount_non_LUPA                           int             NULL,
    Total_HHA_Medicare_Standard_Payment_Amount_non_LUPA                  int             NULL,
    Outlier_Payments_as_a_Percent_of_Medicare_Payment_Amount_non_LUPA    float           NULL,
    Total_LUPA_Episodes                                                  int             NULL,
    Total_HHA_Medicare_Payment_Amount_for_LUPAs                          int             NULL,
    Average_Age                                                          float           NULL,
    Male_Beneficiaries                                                   int             NULL,
    Female_Beneficiaries                                                 int             NULL,
    Nondual_Beneficiaries                                                int             NULL,
    Dual_Beneficiaries                                                   int             NULL,
    White_Beneficiaries                                                  int             NULL,
    Black_Beneficiaries                                                  int             NULL,
    Asian_Pacific_Islander_Beneficiaries                                 int             NULL,
    Hispanic_Beneficiaries                                               int             NULL,
    American_Indian_or_Alaska_Native_Beneficiaries                       int             NULL,
    [Other/Unknown_Beneficiaries]                                        int             NULL,
    Average_HCC_Score                                                    float           NULL,
    Percent_of_Beneficiaries_with_Atrial_Fibrillation                    float           NULL,
    [Percent_of_Beneficiaries_with_Alzheimer's]                          float           NULL,
    Percent_of_Beneficiaries_with_Asthma                                 float           NULL,
    Percent_of_Beneficiaries_with_Cancer                                 float           NULL,
    Percent_of_Beneficiaries_with_CHF                                    float           NULL,
    Percent_of_Beneficiaries_with_Chronic_Kidney_Disease                 float           NULL,
    Percent_of_Beneficiaries_with_COPD                                   float           NULL,
    Percent_of_Beneficiaries_with_Depression                             float           NULL,
    Percent_of_Beneficiaries_with_Diabetes                               float           NULL,
    Percent_of_Beneficiaries_with_Hyperlipidemia                         float           NULL,
    Percent_of_Beneficiaries_with_Hypertension                           float           NULL,
    Percent_of_Beneficiaries_with_IHD                                    float           NULL,
    Percent_of_Beneficiaries_with_Osteoporosis                           float           NULL,
    [Percent_of_Beneficiaries_with_RA/OA]                                float           NULL,
    Percent_of_Beneficiaries_with_Schizophrenia                          float           NULL,
    Percent_of_Beneficiaries_with_Stroke                                 float           NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (hha_id, Provider_Number)
)
go



IF OBJECT_ID('fact_home_health_agency') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_home_health_agency >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_home_health_agency >>>'
go

/* 
 * TABLE: fact_hospice 
 */

CREATE TABLE fact_hospice(
    hospice_id                                                                                int             NOT NULL,
    Provider_Number                                                                           varchar(255)    NOT NULL,
    Hospice_beneficiaries                                                                     int             NULL,
    Total_Days                                                                                int             NULL,
    Total_Medicare_Payment_Amount                                                             float           NULL,
    Total_Medicare_Standard_Payment_Amount                                                    float           NULL,
    Total_Charge_Amount                                                                       float           NULL,
    Percent_Routine_Home_Care_Days                                                            float           NULL,
    Physician_Services                                                                        int             NULL,
    Home_Health_Visit_Hours_per_Day                                                           float           NULL,
    Skilled_Nursing_Visit_Hours_per_Day                                                       float           NULL,
    Social_Service_Visit_Hours_per_Day                                                        float           NULL,
    Total_Live_Discharges                                                                     int             NULL,
    Hospice_beneficiaries_with_7_or_fewer_hospice_care_days                                   int             NULL,
    Hospice_beneficiaries_with_more_than_60_hospice_care_days                                 int             NULL,
    Hospice_beneficiaries_with_more_than_180_hospice_care_days                                int             NULL,
    Home_Health_Visit_Hours_per_Day_During_Week_Prior_to_Death                                float           NULL,
    Skilled_Nursing_Visit_Hours_per_Day_During_Week_Prior_to_Death                            float           NULL,
    Social_Service_Visit_Hours_per_Day_During_Week_Prior_to_Death                             float           NULL,
    Average_Age                                                                               float           NULL,
    Male_hospice_beneficiaries                                                                int             NULL,
    Female_hospice_beneficiaries                                                              int             NULL,
    White_hospice_beneficiaries                                                               int             NULL,
    Black_hospice_beneficiaries                                                               int             NULL,
    Asian_hospice_beneficiaries                                                               int             NULL,
    Hispanic_hospice_beneficiaries                                                            int             NULL,
    [Other/unknown_race_hospice_beneficiaries]                                                int             NULL,
    Medicare_Advantage_hospice_beneficiaries                                                  int             NULL,
    Medicaid_Eligible_hospice_beneficiaries                                                   int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_cancer                                  int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_dementia                                int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_stroke                                  int             NULL,
    [Hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory/heart_disease]             int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease                     int             NULL,
    Hospice_beneficiaries_with_other_primary_diagnoses                                        int             NULL,
    [Site-of-service_-_Home_hospice_beneficiaries]                                            int             NULL,
    [Site-of-service_-_Assisted_Living_Facility_hospice_beneficiaries]                        int             NULL,
    [Site-of-service_-_Long-term-care_or_non-skilled_Nursing_Facility_hospice_beneficiaries]  int             NULL,
    [Site-of-service_-_Skilled_Nursing_Facility_hospice_beneficiaries]                        int             NULL,
    [Site-of-service_-_Inpatient_Hospital_hospice_beneficiaries]                              int             NULL,
    [Site-of-service_-_Inpatient_Hospice_hospice_beneficiaries]                               int             NULL,
    [Site-of-service_-_Other_Facility_hospice_beneficiaries]                                  int             NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (hospice_id, Provider_Number)
)
go



IF OBJECT_ID('fact_hospice') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_hospice >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_hospice >>>'
go

/* 
 * TABLE: fact_inpatient 
 */

CREATE TABLE fact_inpatient(
    inp_id                       int             NOT NULL,
    Provider_Number              varchar(255)    NOT NULL,
    drug_id                      int             NOT NULL,
    Total_Discharges             int             NULL,
    Average_Covered_Charges      float           NULL,
    Average_Total_Payments       float           NULL,
    Average_Medicare_Payments    float           NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (inp_id, Provider_Number, drug_id)
)
go



IF OBJECT_ID('fact_inpatient') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_inpatient >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_inpatient >>>'
go

/* 
 * TABLE: fact_nurse 
 */

CREATE TABLE fact_nurse(
    nurse_id                                                int             NOT NULL,
    Provider_Number                                         varchar(255)    NOT NULL,
    Total_Stays                                             int             NULL,
    Distinct_Beneficiaries_Per_Provider                     int             NULL,
    Average_Length_of_Stay_in_Days                          float           NULL,
    Total_SNF_Charge_Amount                                 int             NULL,
    Total_SNF_Medicare_Allowed_Amount                       int             NULL,
    Total_SNF_Medicare_Payment_Amount                       int             NULL,
    Total_SNF_Medicare_Standard_Payment_Amount              int             NULL,
    Average_Age                                             float           NULL,
    Male_Beneficiaries                                      int             NULL,
    Female_Beneficiaries                                    int             NULL,
    Nondual_Beneficiaries                                   int             NULL,
    Dual_Beneficiaries                                      int             NULL,
    White_Beneficiaries                                     int             NULL,
    Black_Beneficiaries                                     int             NULL,
    Asian_Pacific_Islander_Beneficiaries                    int             NULL,
    Hispanic_Beneficiaries                                  int             NULL,
    American_Indian_or_Alaska_Native_Beneficiaries          int             NULL,
    [Other/Unknown_Beneficiaries]                           int             NULL,
    Average_HCC_Score                                       float           NULL,
    Percent_of_Beneficiaries_with_Atrial_Fibrillation       float           NULL,
    [Percent_of_Beneficiaries_with_Alzheimer's]             float           NULL,
    Percent_of_Beneficiaries_with_Asthma                    float           NULL,
    Percent_of_Beneficiaries_with_Cancer                    float           NULL,
    Percent_of_Beneficiaries_with_CHF                       float           NULL,
    Percent_of_Beneficiaries_with_Chronic_Kidney_Disease    float           NULL,
    Percent_of_Beneficiaries_with_COPD                      float           NULL,
    Percent_of_Beneficiaries_with_Depression                float           NULL,
    Percent_of_Beneficiaries_with_Diabetes                  float           NULL,
    Percent_of_Beneficiaries_with_Hyperlipidemia            float           NULL,
    Percent_of_Beneficiaries_with_Hypertension              float           NULL,
    Percent_of_Beneficiaries_with_IHD                       float           NULL,
    Percent_of_Beneficiaries_with_Osteoporosis              float           NULL,
    [Percent_of_Beneficiaries_with_RA/OA]                   float           NULL,
    Percent_of_Beneficiaries_with_Schizophrenia             float           NULL,
    Percent_of_Beneficiaries_with_Stroke                    float           NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (nurse_id, Provider_Number)
)
go



IF OBJECT_ID('fact_nurse') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_nurse >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_nurse >>>'
go

/* 
 * TABLE: fact_outpatient 
 */

CREATE TABLE fact_outpatient(
    out_id                                       int             NOT NULL,
    Provider_Number                              varchar(255)    NOT NULL,
    apc_id                                       int             NOT NULL,
    Beneficiaries                                int             NULL,
    Comprehensive_APC_Services                   int             NULL,
    Average_Estimated_Total_Submitted_Charges    float           NULL,
    Average_Medicare_Allowed_Amount              float           NULL,
    Average_Medicare_Payment_Amount              float           NULL,
    Outlier_Comprehensive_APC_Services           int             NULL,
    Average_Medicare_Outlier_Amount              float           NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (out_id, Provider_Number, apc_id)
)
go



IF OBJECT_ID('fact_outpatient') IS NOT NULL
    PRINT '<<< CREATED TABLE fact_outpatient >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE fact_outpatient >>>'
go

/* 
 * TABLE: fact_home_health_agency 
 */

ALTER TABLE fact_home_health_agency ADD CONSTRAINT Refdim_provider3 
    FOREIGN KEY (Provider_Number)
    REFERENCES dim_provider(Provider_Number)
go


/* 
 * TABLE: fact_hospice 
 */

ALTER TABLE fact_hospice ADD CONSTRAINT Refdim_provider2 
    FOREIGN KEY (Provider_Number)
    REFERENCES dim_provider(Provider_Number)
go


/* 
 * TABLE: fact_inpatient 
 */

ALTER TABLE fact_inpatient ADD CONSTRAINT Refdim_provider4 
    FOREIGN KEY (Provider_Number)
    REFERENCES dim_provider(Provider_Number)
go

ALTER TABLE fact_inpatient ADD CONSTRAINT Refdim_drug_details6 
    FOREIGN KEY (drug_id)
    REFERENCES dim_drug_details(drug_id)
go


/* 
 * TABLE: fact_nurse 
 */

ALTER TABLE fact_nurse ADD CONSTRAINT Refdim_provider1 
    FOREIGN KEY (Provider_Number)
    REFERENCES dim_provider(Provider_Number)
go


/* 
 * TABLE: fact_outpatient 
 */

ALTER TABLE fact_outpatient ADD CONSTRAINT Refdim_provider5 
    FOREIGN KEY (Provider_Number)
    REFERENCES dim_provider(Provider_Number)
go

ALTER TABLE fact_outpatient ADD CONSTRAINT Refdim_apc_details7 
    FOREIGN KEY (apc_id)
    REFERENCES dim_apc_details(apc_id)
go


