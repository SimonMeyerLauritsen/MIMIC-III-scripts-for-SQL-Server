CREATE PROCEDURE [dbo].[CreateCSIndexOnAll]

AS

ALTER TABLE dbo.ADMISSIONS DROP CONSTRAINT adm_rowid_pk;
ALTER TABLE dbo.CALLOUT DROP CONSTRAINT callout_rowid_pk;
ALTER TABLE dbo.CAREGIVERS DROP CONSTRAINT cg_rowid_pk;
ALTER TABLE dbo.CHARTEVENTS DROP CONSTRAINT chartevents_rowid_pk;
ALTER TABLE dbo.CPTEVENTS DROP CONSTRAINT cpt_rowid_pk;
ALTER TABLE dbo.D_CPT DROP CONSTRAINT dcpt_rowid_pk;
ALTER TABLE dbo.D_ICD_DIAGNOSES DROP CONSTRAINT d_icd_diag_rowid_pk;
ALTER TABLE dbo.D_ICD_PROCEDURES DROP CONSTRAINT d_icd_proc_rowid_pk;
ALTER TABLE dbo.D_ITEMS DROP CONSTRAINT ditems_rowid_pk;
ALTER TABLE dbo.D_LABITEMS DROP CONSTRAINT dlabitems_rowid_pk;
ALTER TABLE dbo.DATETIMEEVENTS DROP CONSTRAINT datetime_rowid_pk;
ALTER TABLE dbo.DIAGNOSES_ICD DROP CONSTRAINT diagnosesicd_rowid_pk;
ALTER TABLE dbo.DRGCODES DROP CONSTRAINT drg_rowid_pk;
ALTER TABLE dbo.ICUSTAYS DROP CONSTRAINT icustay_rowid_pk;
ALTER TABLE dbo.INPUTEVENTS_CV DROP CONSTRAINT inputevents_cv_rowid_pk;
ALTER TABLE dbo.INPUTEVENTS_MV DROP CONSTRAINT inputevents_mv_rowid_pk;
ALTER TABLE dbo.LABEVENTS DROP CONSTRAINT labevents_rowid_pk;
ALTER TABLE dbo.MICROBIOLOGYEVENTS DROP CONSTRAINT micro_rowid_pk;
ALTER TABLE dbo.NOTEEVENTS DROP CONSTRAINT noteevents_rowid_pk;
ALTER TABLE dbo.OUTPUTEVENTS DROP CONSTRAINT outputevents_cv_rowid_pk;
ALTER TABLE dbo.PATIENTS DROP CONSTRAINT pat_rowid_pk;
ALTER TABLE dbo.PRESCRIPTIONS DROP CONSTRAINT prescription_rowid_pk;
ALTER TABLE dbo.PROCEDUREEVENTS_MV DROP CONSTRAINT procedureevents_mv_rowid_pk;
ALTER TABLE dbo.PROCEDURES_ICD DROP CONSTRAINT proceduresicd_rowid_pk;
ALTER TABLE dbo.[SERVICES] DROP CONSTRAINT services_rowid_pk;
ALTER TABLE dbo.TRANSFERS DROP CONSTRAINT transfers_rowid_pk;

CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_ADMISSIONS ON dbo.ADMISSIONS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_CALLOUT ON dbo.CALLOUT;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_CAREGIVERS ON dbo.CAREGIVERS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_CHARTEVENTS ON dbo.CHARTEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_CPTEVENTS ON dbo.CPTEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_D_CPT ON dbo.D_CPT;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_D_ICD_DIAGNOSES ON dbo.D_ICD_DIAGNOSES;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_D_ICD_PROCEDURES ON dbo.D_ICD_PROCEDURES;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_D_ITEMS ON dbo.D_ITEMS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_D_LABITEMS ON dbo.D_LABITEMS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_DATETIMEEVENTS ON dbo.DATETIMEEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_DIAGNOSES_ICD ON dbo.DIAGNOSES_ICD;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_DRGCODES ON dbo.DRGCODES;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_ICUSTAYS ON dbo.ICUSTAYS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_INPUTEVENTS_CV ON dbo.INPUTEVENTS_CV;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_INPUTEVENTS_MV ON dbo.INPUTEVENTS_MV;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_LABEVENTS ON dbo.LABEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_MICROBIOLOGYEVENTS ON dbo.MICROBIOLOGYEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_NOTEEVENTS ON dbo.NOTEEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_OUTPUTEVENTS ON dbo.OUTPUTEVENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_PATIENTS ON dbo.PATIENTS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_PRESCRIPTIONS ON dbo.PRESCRIPTIONS;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_PROCEDUREEVENTS_MV ON dbo.PROCEDUREEVENTS_MV;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_PROCEDURES_ICD ON dbo.PROCEDURES_ICD;
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_SERVICES ON dbo.[SERVICES];
CREATE CLUSTERED COLUMNSTORE INDEX idx_col_dbo_TRANSFERS ON dbo.TRANSFERS;

--ALTER TABLE dbo.ADMISSIONS ADD CONSTRAINT adm_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.CALLOUT ADD CONSTRAINT callout_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.CAREGIVERS ADD CONSTRAINT cg_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.CHARTEVENTS ADD CONSTRAINT chartevents_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.CPTEVENTS ADD CONSTRAINT cpt_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.D_CPT ADD CONSTRAINT dcpt_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.D_ICD_DIAGNOSES ADD CONSTRAINT d_icd_diag_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.D_ICD_PROCEDURES ADD CONSTRAINT d_icd_proc_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.D_ITEMS ADD CONSTRAINT ditems_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.D_LABITEMS ADD CONSTRAINT dlabitems_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.DATETIMEEVENTS ADD CONSTRAINT datetime_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.DIAGNOSES_ICD ADD CONSTRAINT diagnosesicd_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.DRGCODES ADD CONSTRAINT drg_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.ICUSTAYS ADD CONSTRAINT icustay_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.INPUTEVENTS_CV ADD CONSTRAINT inputevents_cv_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.INPUTEVENTS_MV ADD CONSTRAINT inputevents_mv_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.LABEVENTS ADD CONSTRAINT labevents_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.MICROBIOLOGYEVENTS ADD CONSTRAINT micro_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.NOTEEVENTS ADD CONSTRAINT noteevents_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.OUTPUTEVENTS ADD CONSTRAINT outputevents_cv_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.PATIENTS ADD CONSTRAINT pat_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.PRESCRIPTIONS ADD CONSTRAINT prescription_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.PROCEDUREEVENTS_MV ADD CONSTRAINT procedureevents_mv_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.PROCEDURES_ICD ADD CONSTRAINT proceduresicd_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.[SERVICES] ADD CONSTRAINT services_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);
ALTER TABLE dbo.TRANSFERS ADD CONSTRAINT transfers_rowid_pk PRIMARY KEY NONCLUSTERED(ROW_ID);

GO
