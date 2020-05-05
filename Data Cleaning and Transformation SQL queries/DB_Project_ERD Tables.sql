use project_erd

/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Model_v1.DM1
 *
 * Date Created : Tuesday, April 21, 2020 22:52:35
 * Target DBMS : Microsoft SQL Server 2017
 */

/* 
 * TABLE: Address 
 */

CREATE TABLE Address(
    address_id         int             IDENTITY(1,1),
    provider_number    varchar(255)    NOT NULL,
    street_address     varchar(255)    NULL,
    CONSTRAINT PK3 PRIMARY KEY NONCLUSTERED (address_id, provider_number)
)
go



IF OBJECT_ID('Address') IS NOT NULL
    PRINT '<<< CREATED TABLE Address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Address >>>'
go

/* 
 * TABLE: APC 
 */

CREATE TABLE APC(
    apc_id      int             IDENTITY(1,1),
    apc         varchar(255)    NULL,
    apc_desc    varchar(255)    NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (apc_id)
)
go



IF OBJECT_ID('APC') IS NOT NULL
    PRINT '<<< CREATED TABLE APC >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE APC >>>'
go

/* 
 * TABLE: City 
 */

CREATE TABLE City(
    city_id            int             IDENTITY(1,1),
    city               varchar(255)    NULL,
    state_id           int             NOT NULL,
    address_id         int             NOT NULL,
    provider_number    varchar(255)    NOT NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (city_id, state_id, address_id, provider_number)
)
go



IF OBJECT_ID('City') IS NOT NULL
    PRINT '<<< CREATED TABLE City >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE City >>>'
go

/* 
 * TABLE: [Drug Details] 
 */

CREATE TABLE [Drug Details](
    drug_id              int             IDENTITY(1,1),
    drug_definitation    varchar(255)    NOT NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (drug_id)
)
go



IF OBJECT_ID('Drug Details') IS NOT NULL
    PRINT '<<< CREATED TABLE Drug Details >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Drug Details >>>'
go

/* 
 * TABLE: [Home Health Agency] 
 */

CREATE TABLE [Home Health Agency](
    hha_id                                                 int             IDENTITY(1,1),
    provider_number                                        varchar(255)    NOT NULL,
    agency_name                                            varchar(255)    NULL,
    tot_episode_non_lupa                                   int             NULL,
    distinct_benificiaries_non_lupa                        int             NULL,
    Avg_num_tot_visits_per_episode_non_lupa                float           NULL,
    Avg_num_skilled_nursing_visits_per_episode_non_lupa    float           NULL,
    Avg_num_pt_visits_per_episode_non_lupa                 float           NULL,
    Avg_num_ot_visits_per_episode_non_lupa                 float           NULL,
    Avg_num_st_visits_per_episode_non_lupa                 float           NULL,
    Avg_num_HHA_visits_per_episode_non_lupa                float           NULL,
    Avg_num_social_medical_visits_per_episode_non_lupa     float           NULL,
    tot_hha_charged_amt_non_lupa                           int             NULL,
    tot_hha_mediare_payment_amt_non_lupa                   int             NULL,
    tot_hha_std_mediare_payment_amt_non_lupa               int             NULL,
    Outlier_payment_per_medicare_payment_amt_non_lupa      float           NULL,
    tot_lupa_episode                                       int             NULL,
    tot_hha_medicare_payment_lupa                          int             NULL,
    avg_age                                                float           NULL,
    Male_Beneficiaries                                     int             NULL,
    Female_Beneficiaries                                   int             NULL,
    Nondual_Beneficiaries                                  int             NULL,
    dual_Beneficiaries                                     int             NULL,
    White_Beneficiaries                                    int             NULL,
    black_Beneficiaries                                    int             NULL,
    Asian_Pacific_Islander_Beneficiaries                   int             NULL,
    Hispanic_Beneficiaries                                 int             NULL,
    American_Indian_or_Alaska_Native_Beneficiaries         int             NULL,
    Other_Unknown_Beneficiaries                            int             NULL,
    avg_HCC_Score                                          float           NULL,
    per_of_Beneficiaries_with_Atrial_Fibrillation          float           NULL,
    [per_of_Beneficiaries_with_Alzheimer's]                float           NULL,
    per_of_Beneficiaries_with_Asthma                       float           NULL,
    per_of_Beneficiaries_with_Cancer                       float           NULL,
    per_of_Beneficiaries_with_CHF                          float           NULL,
    per_of_Beneficiaries_with_Chronic_Kidney_Disease       float           NULL,
    per_of_Beneficiaries_with_COPD                         float           NULL,
    per_of_Beneficiaries_with_Depression                   float           NULL,
    per_of_Beneficiaries_with_Diabetes                     float           NULL,
    per_of_Beneficiaries_with_Hyperlipidemia               float           NULL,
    per_of_Beneficiaries_with_Hypertension                 float           NULL,
    [per_ of_Beneficiaries_with_IHD]                       float           NULL,
    per_of_Beneficiaries_with_Osteoporosis                 float           NULL,
    per_of_Beneficiaries_with_RA_OA                        float           NULL,
    per_of_Beneficiaries_with_Schizophrenia                float           NULL,
    per_of_Beneficiaries_with_Stroke                       float           NULL,
    CONSTRAINT PK9_1 PRIMARY KEY NONCLUSTERED (hha_id, provider_number)
)
go



IF OBJECT_ID('Home Health Agency') IS NOT NULL
    PRINT '<<< CREATED TABLE Home Health Agency >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Home Health Agency >>>'
go

/* 
 * TABLE: Hospice 
 */

CREATE TABLE Hospice(
    hospice_id                                                                     int             IDENTITY(1,1),
    provider_number                                                                varchar(255)    NOT NULL,
    name                                                                           varchar(255)    NOT NULL,
    hrr                                                                            varchar(255)    NULL,
    Hospice_beneficiaries                                                          int             NULL,
    total_days                                                                     int             NULL,
    Tot_Medicare_Payment_Amt                                                       float           NULL,
    Tot_Medicare_std_Payment_Amt                                                   float           NULL,
    Tot__Amt_charged                                                               float           NULL,
    per_routine_home_care_days                                                     float           NULL,
    physician_service                                                              int             NULL,
    Home_Health_Visit_Hours_per_Day                                                float           NULL,
    Skilled_Nursing_Visit_Hours_per_Day                                            float           NULL,
    Social_Service_Visit_Hours_per_Day                                             float           NULL,
    Total_Live_Discharges                                                          int             NULL,
    beneficiaries_with_7_or_fewer_hospice_care_days                                int             NULL,
    beneficiaries_with_more_than_60_hospice_care_days                              int             NULL,
    beneficiaries_with_more_than_180_hospice_care_days                             int             NULL,
    Home_Health_Visit_Hours_per_Day_During_Week_Prior_to_Death                     float           NULL,
    Skilled_Nursing_Visit_Hours_per_Day_During_Week_Prior_to_Death                 float           NULL,
    Social_Service_Visit_Hours_per_Day_During_Week_Prior_to_Death                  float           NULL,
    avg_age                                                                        float           NULL,
    Male_hospice_beneficiaries                                                     int             NULL,
    Female_hospice_beneficiaries                                                   int             NULL,
    White_hospice_beneficiaries                                                    int             NULL,
    Black_hospice_beneficiaries                                                    int             NULL,
    Asian_hospice_beneficiaries                                                    int             NULL,
    Hispanic_hospice_beneficiaries                                                 int             NULL,
    Other_unknown_race_hospice_beneficiaries                                       int             NULL,
    Medicare_Advantage_hospice_beneficiaries                                       int             NULL,
    Medicaid_Eligible_hospice_beneficiaries                                        int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_cancer                       int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_dementia                     int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_stroke                       int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_circulatory_heart_disease    int             NULL,
    Hospice_beneficiaries_with_a_primary_diagnosis_of_respiratory_disease          int             NULL,
    [Hospice beneficiaries_with_other_primary_diagnoses]                           int             NULL,
    SOS_Home_hospice_beneficiaries                                                 int             NULL,
    SOS_Assisted_Living_Facility_hospice_beneficiaries                             int             NULL,
    [SOS_Long-term-care_or_non-skilled_Nursing_Facility_hospice_beneficiaries]     int             NULL,
    SOS_Skilled_Nursing_Facility_hospice_beneficiaries                             int             NULL,
    SOS_Inpatient_Hospital_hospice_beneficiaries                                   int             NULL,
    SOS_Inpatient_Hospice_hospice_beneficiaries                                    int             NULL,
    SOS_Other_Facility_hospice_beneficiaries                                       int             NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (hospice_id, provider_number)
)
go



IF OBJECT_ID('Hospice') IS NOT NULL
    PRINT '<<< CREATED TABLE Hospice >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Hospice >>>'
go

/* 
 * TABLE: Impatient 
 */

CREATE TABLE Impatient(
    impatient_id            int             IDENTITY(1,1),
    [Provider Name]         varchar(255)    NULL,
    HRR_desc                varchar(255)    NULL,
    total_discharge         int             NULL,
    avg_cover_charges       float           NULL,
    avg_total_payments      float           NULL,
    avg_medical_payments    float           NULL,
    drug_id                 int             NOT NULL,
    provider_number         varchar(255)    NOT NULL,
    CONSTRAINT PK7 PRIMARY KEY NONCLUSTERED (impatient_id, drug_id, provider_number)
)
go



IF OBJECT_ID('Impatient') IS NOT NULL
    PRINT '<<< CREATED TABLE Impatient >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Impatient >>>'
go

/* 
 * TABLE: Nurse 
 */

CREATE TABLE Nurse(
    nurse_id                                            int             IDENTITY(1,1),
    provider_number                                     varchar(255)    NOT NULL,
    facility_name                                       varchar(255)    NOT NULL,
    total_stay                                          int             NULL,
    Distinct_Beneficiaries_Per_Provider                 int             NULL,
    avg_lenght_stay                                     float           NULL,
    Tot_SNF_Charge_Amt                                  int             NULL,
    Tot_SNF_Medicare_allowed_Amt                        int             NULL,
    Tot_SNF_Medicare_payment_Amt                        int             NULL,
    Tot_SNF_Medicare_std_payment_Amt                    int             NULL,
    avg_age                                             float           NULL,
    Male_Beneficiaries                                  int             NULL,
    Female_Beneficiaries                                int             NULL,
    Nondual_Beneficiaries                               int             NULL,
    dual_Beneficiaries                                  int             NULL,
    White_Beneficiaries                                 int             NULL,
    black_Beneficiaries                                 int             NULL,
    Asian_Pacific_Islander_Beneficiaries                int             NULL,
    Hispanic_Beneficiaries                              int             NULL,
    American_Indian_or_Alaska_Native_Beneficiaries      int             NULL,
    Other_Unknown_Beneficiaries                         int             NULL,
    avg_HCC_Score                                       float           NULL,
    per_of_Beneficiaries_with_Atrial_Fibrillation       float           NULL,
    [per_of_Beneficiaries_with_Alzheimer's]             float           NULL,
    per_of_Beneficiaries_with_Asthma                    float           NULL,
    per_of_Beneficiaries_with_Cancer                    float           NULL,
    per_of_Beneficiaries_with_CHF                       float           NULL,
    per_of_Beneficiaries_with_Chronic_Kidney_Disease    float           NULL,
    per_of_Beneficiaries_with_COPD                      float           NULL,
    per_of_Beneficiaries_with_Depression                float           NULL,
    per_of_Beneficiaries_with_Diabetes                  float           NULL,
    per_of_Beneficiaries_with_Hyperlipidemia            float           NULL,
    per_of_Beneficiaries_with_Hypertension              float           NULL,
    [per_ of_Beneficiaries_with_IHD]                    float           NULL,
    per_of_Beneficiaries_with_Osteoporosis              float           NULL,
    per_of_Beneficiaries_with_RA_OA                     float           NULL,
    per_of_Beneficiaries_with_Schizophrenia             float           NULL,
    per_of_Beneficiaries_with_Stroke                    float           NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (nurse_id, provider_number)
)
go



IF OBJECT_ID('Nurse') IS NOT NULL
    PRINT '<<< CREATED TABLE Nurse >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Nurse >>>'
go

/* 
 * TABLE: Outpatient 
 */

CREATE TABLE Outpatient(
    outpatient_id                int             IDENTITY(1,1),
    [Provider Name]              varchar(255)    NULL,
    [HRR Description]            varchar(255)    NULL,
    beneficiaries                int             NULL,
    comp_apc_service             int             NULL,
    avg_total_submitted_bills    float           NULL,
    avg_med_allowed_amt          float           NULL,
    avg_med_payment_amt          float           NULL,
    outliers_comp_apc_service    int             NULL,
    avg_med_outliers_amt         float           NULL,
    apc_id                       int             NOT NULL,
    provider_number              varchar(255)    NOT NULL,
    CONSTRAINT PK8 PRIMARY KEY NONCLUSTERED (outpatient_id, apc_id, provider_number)
)
go



IF OBJECT_ID('Outpatient') IS NOT NULL
    PRINT '<<< CREATED TABLE Outpatient >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Outpatient >>>'
go

/* 
 * TABLE: Provider 
 */

CREATE TABLE Provider(
    provider_number    varchar(255)    NOT NULL,
    id_provider        varchar(50)     NOT NULL,
    provider_year      nvarchar(10)    NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (provider_number)
)
go



IF OBJECT_ID('Provider') IS NOT NULL
    PRINT '<<< CREATED TABLE Provider >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Provider >>>'
go

/* 
 * TABLE: State 
 */

CREATE TABLE State(
    state_id           int             IDENTITY(1,1),
    state              varchar(255)    NULL,
    address_id         int             NOT NULL,
    provider_number    varchar(255)    NOT NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (state_id, address_id, provider_number)
)
go



IF OBJECT_ID('State') IS NOT NULL
    PRINT '<<< CREATED TABLE State >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE State >>>'
go

/* 
 * TABLE: [Zip Code] 
 */

CREATE TABLE [Zip Code](
    zip_id             int             IDENTITY(1,1),
    zip_code           varchar(255)    NULL,
    city_id            int             NOT NULL,
    state_id           int             NOT NULL,
    address_id         int             NOT NULL,
    provider_number    varchar(255)    NOT NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (zip_id, city_id, state_id, address_id, provider_number)
)
go



IF OBJECT_ID('Zip Code') IS NOT NULL
    PRINT '<<< CREATED TABLE Zip Code >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Zip Code >>>'
go

/* 
 * TABLE: Address 
 */

ALTER TABLE Address ADD CONSTRAINT RefProvider5 
    FOREIGN KEY (provider_number)
    REFERENCES Provider(provider_number)
go


/* 
 * TABLE: City 
 */

ALTER TABLE City ADD CONSTRAINT RefState36 
    FOREIGN KEY (state_id, address_id, provider_number)
    REFERENCES State(state_id, address_id, provider_number)
go


/* 
 * TABLE: [Home Health Agency] 
 */

ALTER TABLE [Home Health Agency] ADD CONSTRAINT RefProvider31 
    FOREIGN KEY (provider_number)
    REFERENCES Provider(provider_number)
go


/* 
 * TABLE: Hospice 
 */

ALTER TABLE Hospice ADD CONSTRAINT RefProvider30 
    FOREIGN KEY (provider_number)
    REFERENCES Provider(provider_number)
go


/* 
 * TABLE: Impatient 
 */

ALTER TABLE Impatient ADD CONSTRAINT RefDrug_Details40 
    FOREIGN KEY (drug_id)
    REFERENCES [Drug Details](drug_id)
go

ALTER TABLE Impatient ADD CONSTRAINT RefProvider41 
    FOREIGN KEY (provider_number)
    REFERENCES Provider(provider_number)
go


/* 
 * TABLE: Nurse 
 */

ALTER TABLE Nurse ADD CONSTRAINT RefProvider25 
    FOREIGN KEY (provider_number)
    REFERENCES Provider(provider_number)
go


/* 
 * TABLE: Outpatient 
 */

ALTER TABLE Outpatient ADD CONSTRAINT RefAPC38 
    FOREIGN KEY (apc_id)
    REFERENCES APC(apc_id)
go

ALTER TABLE Outpatient ADD CONSTRAINT RefProvider39 
    FOREIGN KEY (provider_number)
    REFERENCES Provider(provider_number)
go


/* 
 * TABLE: State 
 */

ALTER TABLE State ADD CONSTRAINT RefAddress35 
    FOREIGN KEY (address_id, provider_number)
    REFERENCES Address(address_id, provider_number)
go


/* 
 * TABLE: [Zip Code] 
 */

ALTER TABLE [Zip Code] ADD CONSTRAINT RefCity37 
    FOREIGN KEY (city_id, state_id, address_id, provider_number)
    REFERENCES City(city_id, state_id, address_id, provider_number)
go


