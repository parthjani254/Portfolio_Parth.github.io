/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Dental.DM1
 *
 * Date Created : Wednesday, December 15, 2021 13:44:06
 * Target DBMS : Microsoft SQL Server 2019
 */

USE master
go
CREATE DATABASE DentalOffice
go
USE DentalOffice
go
/* 
 * TABLE: [Office.Appointment] 
 */

CREATE TABLE [Office.Appointment](
    Appt_ID             int             NOT NULL IDENTITY PRIMARY KEY,
    Patient_ID          int             NULL,
    Prim_Emp_ID         int             NULL,
    Secondary_emp_ID    int             NULL,
    Room_ID             int             NULL,
    Apt_type            varchar(30)     NOT NULL,
    Appt_Date           date            NOT NULL,
    Appt_start_time     int             NOT NULL,
    Appt_end_time       int             NOT NULL,
    Appt_teeth_ID       int             NULL,
    Scan_ID             int             NULL,
    Appt_result         varchar(200)    NULL,
    Cancellation_ID     int             NULL,
    Total_cost          int             NULL,
    Insurance_pays      int             NULL,
    Patient_pays        int             NULL,
)

go


IF OBJECT_ID('Office.Appointment') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Appointment >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Appointment >>>'
go

/* 
 * TABLE: [Office.Cancelations] 
 */

CREATE TABLE [Office.Cancelations](
    Cancellation_ID              int    NOT NULL IDENTITY PRIMARY KEY,
    Hours_prior_2_cancelation    int    NOT NULL,
    penalty                      int    NOT NULL,
)

go


IF OBJECT_ID('Office.Cancelations') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Cancelations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Cancelations >>>'
go

/* 
 * TABLE: [Office.Employee_availability] 
 */

CREATE TABLE [Office.Employee_availability](
    Emp_ID        int        NULL,
    Date          date       NOT NULL,
    Start_time    time(7)    NOT NULL,
    End_time      time(7)    NOT NULL,
    Available     bit        NOT NULL,
    In_room_ID    int        NULL
)

go


IF OBJECT_ID('Office.Employee_availability') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Employee_availability >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Employee_availability >>>'
go

/* 
 * TABLE: [Office.Equipment] 
 */

CREATE TABLE [Office.Equipment](
    Equip_ID            int            NOT NULL IDENTITY PRIMARY KEY,
    Equipment_name      varchar(30)    NOT NULL,
    Equipment_RoomID    int            NULL,
)

go


IF OBJECT_ID('Office.Equipment') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Equipment >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Equipment >>>'
go

/* 
 * TABLE: [Office.Locations] 
 */

CREATE TABLE [Office.Locations](
    Location_ID          int            NOT NULL IDENTITY PRIMARY KEY,
    St_address           varchar(30)    NOT NULL,
    City                 varchar(30)    NOT NULL,
    State                varchar(30)    NOT NULL,
    Phone                int            NOT NULL,
    Email                varchar(30)    NOT NULL,
    emergency_number     int            NOT NULL,
    Emergency_contact    varchar(30)    NOT NULL,
    ZipCode              char(5)        NULL,
)

go


IF OBJECT_ID('Office.Locations') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Locations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Locations >>>'
go

/* 
 * TABLE: [Office.Room_Availability] 
 */

CREATE TABLE [Office.Room_Availability](
    Room_ID                  int        NULL,
    Date                     date       NOT NULL,
    Start_time               time(7)    NOT NULL,
    End_time                 time(7)    NOT NULL,
    Available                bit        NOT NULL,
    Booked_by_prim_emp_ID    int        NULL
)

go


IF OBJECT_ID('Office.Room_Availability') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Room_Availability >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Room_Availability >>>'
go

/* 
 * TABLE: [Office.Rooms] 
 */

CREATE TABLE [Office.Rooms](
    Room_ID            int            NOT NULL IDENTITY PRIMARY KEY,
    Room_num           int            NOT NULL,
    Room_locationID    int            NULL,
    Room_type          varchar(30)    NOT NULL,
)

go


IF OBJECT_ID('Office.Rooms') IS NOT NULL
    PRINT '<<< CREATED TABLE Office.Rooms >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Office.Rooms >>>'
go

/* 
 * TABLE: [Patient.allergies] 
 */

CREATE TABLE [Patient.allergies](
    Patient_ID       int     NULL,
    isAllergic       bit     NOT NULL,
    Allergy_ID       int     NULL,
    Date_of_entry    date    NOT NULL
)

go


IF OBJECT_ID('Patient.allergies') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.allergies >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.allergies >>>'
go

/* 
 * TABLE: [Patient.consent_forms] 
 */

CREATE TABLE [Patient.consent_forms](
    Patient_ID                 int     NULL,
    consented_personal_info    bit     NOT NULL,
    consented_Scan_ID          int     NULL,
    cancellation_scan_ID       int     NULL,
    insurance_Scan_ID          int     NULL,
    Date_of_entry              date    NOT NULL
)

go


IF OBJECT_ID('Patient.consent_forms') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.consent_forms >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.consent_forms >>>'
go

/* 
 * TABLE: [Patient.COVID_info] 
 */

CREATE TABLE [Patient.COVID_info](
    Patient_ID                             int     NULL,
    Fever                                  bit     NOT NULL,
    difficulty_breathing                   bit     NOT NULL,
    travel_14_days                         bit     NOT NULL,
    contact_with_possible_COVID_patient    bit     NOT NULL,
    pain                                   bit     NOT NULL,
    date_of_entry                          date    NOT NULL
)

go


IF OBJECT_ID('Patient.COVID_info') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.COVID_info >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.COVID_info >>>'
go

/* 
 * TABLE: [Patient.detailed_dental_history] 
 */

CREATE TABLE [Patient.detailed_dental_history](
    Patient_ID                          int             NULL,
    dental_carries_teeth_ID             int             NULL,
    missing_teeth_ID                    int             NULL,
    none_restorable_teeth_ID            int             NULL,
    unerupted_teeth_ID                  int             NULL,
    developmental_disturbed_teeth_ID    int             NULL,
    Stained_teeth_ID                    int             NULL,
    Remarks                             varchar(100)    NULL,
    Date_of_entry                       date            NOT NULL
)

go


IF OBJECT_ID('Patient.detailed_dental_history') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.detailed_dental_history >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.detailed_dental_history >>>'
go

/* 
 * TABLE: [Patient.general_dental_history] 
 */

CREATE TABLE [Patient.general_dental_history](
    Patient_ID                        int             NULL,
    nervous_during_dental             bit             NOT NULL,
    unfavourable_dental_experience    bit             NOT NULL,
    past_dental_complications         bit             NOT NULL,
    other_comments                    varchar(100)    NULL,
    Date_of_entry                     date            NOT NULL
)

go


IF OBJECT_ID('Patient.general_dental_history') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.general_dental_history >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.general_dental_history >>>'
go

/* 
 * TABLE: [Patient.insurance] 
 */

CREATE TABLE [Patient.insurance](
    Patient_ID                      int            NULL,
    Prim_insurance_ID               int            NULL,
    Prim_subscriber_name            varchar(40)    NULL,
    Prim_group_num                  int            NULL,
    Prim_certificate_num            int            NULL,
    Prim_relationship_to_insured    varchar(50)    NULL,
    Prim_start_date                 date           NULL,
    Seco_insurance_ID               int            NULL,
    Seco_subscriber_name            varchar(40)    NULL,
    Seco_group_num                  int            NULL,
    Seco_certificate_num            int            NULL,
    Seco_relationship_to_insured    varchar(50)    NULL,
    Seco_start_date                 date           NULL,
    Tert_insurance_ID               int            NULL,
    Tert_subscriber_name            varchar(40)    NULL,
    Tert_group_num                  int            NULL,
    Tert_certificate_num            int            NULL,
    Tert_relationship_to_insured    varchar(50)    NULL,
    Tert_start_date                 date           NULL,
    Quat_insurance_ID               int            NULL,
    Quat_subscriber_name            varchar(40)    NULL,
    Quat_group_num                  int            NULL,
    Quat_certificate_num            int            NULL,
    Quat_relationship_to_insured    varchar(50)    NULL,
    Quat_start_date                 date           NULL
)

go


IF OBJECT_ID('Patient.insurance') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.insurance >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.insurance >>>'
go

/* 
 * TABLE: [Patient.medical_history] 
 */

CREATE TABLE [Patient.medical_history](
    Patient_ID                               int             NULL,
    Had_major_surgery_within_last_2_years    bit             NOT NULL,
    is_pregnant                              bit             NOT NULL,
    is_immune_deficient                      bit             NOT NULL,
    has_Aids                                 bit             NOT NULL,
    [has_Arthritis/Gout]                     bit             NOT NULL,
    other_conditions                         varchar(100)    NOT NULL,
    taking_medication                        bit             NOT NULL,
    current_medication                       varchar(100)    NULL,
    comments                                 varchar(100)    NULL,
    Date_of_entry                            date            NOT NULL
)

go


IF OBJECT_ID('Patient.medical_history') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.medical_history >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.medical_history >>>'
go

/* 
 * TABLE: [Patient.personal_info] 
 */

CREATE TABLE [Patient.personal_info](
    Patient_ID                   int            NOT NULL IDENTITY PRIMARY KEY,
    Seco_den_id                  int            NULL,
    FName                        varchar(20)    NOT NULL,
    LName                        varchar(20)    NOT NULL,
    DOB                          date           NOT NULL,
    Phone_num                    int            NOT NULL,
    Email                        varchar(50)    NOT NULL,
    Guardian_contact_name        varchar(40)    NULL,
    Guardian_contact_num         int            NULL,
    Emergency_contact_name       varchar(50)    NOT NULL,
    Emergency_contact_num        int            NOT NULL,
    Emergency_contact_rel        varchar(15)    NOT NULL,
    Prim_den_ID                  int            NULL,
    Prim_phys_ID                 int            NULL,
    Prim_phar_ID                 int            NULL,
    Date_last_visit              date           NOT NULL,
    Is_allergic                  bit            NOT NULL,
    Is_consented                 bit            NOT NULL,
    Preferred_den_location_ID    int            NULL,
)

go


IF OBJECT_ID('Patient.personal_info') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.personal_info >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.personal_info >>>'
go

/* 
 * TABLE: [Patient.personal_sens_info] 
 */

CREATE TABLE [Patient.personal_sens_info](
    Patient_ID    int            NULL,
    Street        varchar(30)    NOT NULL,
    City          varchar(10)    NOT NULL,
    State         varchar(10)    NOT NULL,
    SSN           int            NOT NULL,
    ZipCode       char(5)        NULL
)

go


IF OBJECT_ID('Patient.personal_sens_info') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.personal_sens_info >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.personal_sens_info >>>'
go

/* 
 * TABLE: [Patient.personal_sens_info_access_history] 
 */

CREATE TABLE [Patient.personal_sens_info_access_history](
    Access_ID            int            NOT NULL IDENTITY PRIMARY KEY,
    Accessed_record      int            NOT NULL,
    Accessed_by          int            NULL,
    Accessed_datetime    datetime       NOT NULL,
    Accessed_reason      varchar(50)    NOT NULL,
)

go


IF OBJECT_ID('Patient.personal_sens_info_access_history') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.personal_sens_info_access_history >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.personal_sens_info_access_history >>>'
go

/* 
 * TABLE: [Patient.pharm_history] 
 */

CREATE TABLE [Patient.pharm_history](
    Patient_ID                   int            NULL,
    Prescribed_Med_ID            int            NULL,
    [Prescription_strength(mg)]  int            NULL,
    prescribed_by_ID             int            NULL,
    Prescribed_by_name           varchar(40)    NULL,
    Prescribed_location_ID       int            NULL,
    Prescribed_pharmacy_ID       int            NULL
)

go


IF OBJECT_ID('Patient.pharm_history') IS NOT NULL
    PRINT '<<< CREATED TABLE Patient.pharm_history >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Patient.pharm_history >>>'
go

/* 
 * TABLE: [Provider.employee] 
 */

CREATE TABLE [Provider.employee](
    Emp_ID                 int            NOT NULL IDENTITY PRIMARY KEY,
    Den_ID                 int            NULL,
    Hyg_ID                 int            NULL,
    Location_ID            int            NULL,
    Fname                  varchar(30)    NOT NULL,
    Lname                  varchar(30)    NOT NULL,
    Job_title              varchar(30)    NOT NULL,
    Typical_avail_start    int            NOT NULL,
    Typical_avail_end      int            NOT NULL,
    Specialization_ID      int            NULL,
    Phone_number           int            NOT NULL,
)

go


IF OBJECT_ID('Provider.employee') IS NOT NULL
    PRINT '<<< CREATED TABLE Provider.employee >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Provider.employee >>>'
go

/* 
 * TABLE: [Provider.employee_sens_access_history] 
 */

CREATE TABLE [Provider.employee_sens_access_history](
    Access_ID          int            NOT NULL IDENTITY PRIMARY KEY,
    Accessed_record    int            NULL,
    Accessed_by        int            NULL,
    Access_datetime    datetime       NOT NULL,
    Access_reason      varchar(50)    NOT NULL,
)

go


IF OBJECT_ID('Provider.employee_sens_access_history') IS NOT NULL
    PRINT '<<< CREATED TABLE Provider.employee_sens_access_history >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Provider.employee_sens_access_history >>>'
go

/* 
 * TABLE: [Provider.employee_sens_info] 
 */

CREATE TABLE [Provider.employee_sens_info](
    Emp_ID              int            NULL,
    DOB                 date           NOT NULL,
    SSN                 int            NOT NULL,
    St_address          varchar(30)    NOT NULL,
    City                varchar(30)    NOT NULL,
    State               varchar(30)    NOT NULL,
    bank_routing_num    int            NOT NULL,
    bank_account_num    int            NOT NULL,
    ZipCode             char(5)        NULL
)

go


IF OBJECT_ID('Provider.employee_sens_info') IS NOT NULL
    PRINT '<<< CREATED TABLE Provider.employee_sens_info >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Provider.employee_sens_info >>>'
go

/* 
 * TABLE: [Provider.Specializations] 
 */

CREATE TABLE [Provider.Specializations](
    Specialization_ID      int            NOT NULL IDENTITY PRIMARY KEY,
    Specialization_name    varchar(30)    NOT NULL,
)

go


IF OBJECT_ID('Provider.Specializations') IS NOT NULL
    PRINT '<<< CREATED TABLE Provider.Specializations >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Provider.Specializations >>>'
go

/* 
 * TABLE: [Provider.Works_with] 
 */

CREATE TABLE [Provider.Works_with](
    Prim_emp_ID    int    NULL,
    Seco_Emp_ID    int    NULL
)

go


IF OBJECT_ID('Provider.Works_with') IS NOT NULL
    PRINT '<<< CREATED TABLE Provider.Works_with >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Provider.Works_with >>>'
go

/* 
 * TABLE: [Records.Allergies] 
 */

CREATE TABLE [Records.Allergies](
    Allergy_ID      int            NOT NULL IDENTITY PRIMARY KEY,
    Allergy_name    varchar(20)    NOT NULL,
)

go


IF OBJECT_ID('Records.Allergies') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Allergies >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Allergies >>>'
go

/* 
 * TABLE: [Records.Dentists] 
 */

CREATE TABLE [Records.Dentists](
    Den_ID         int            NOT NULL IDENTITY PRIMARY KEY,
    FName          varchar(20)    NOT NULL,
    LName          varchar(20)    NOT NULL,
    Office_name    varchar(30)    NOT NULL,
    St_address     varchar(30)    NOT NULL,
    City           varchar(30)    NOT NULL,
    State          varchar(30)    NOT NULL,
    Phone          int            NOT NULL,
    Email          varchar(30)    NOT NULL,
    Fax_number     int            NOT NULL,
    ZipCode        char(5)        NULL,
)

go


IF OBJECT_ID('Records.Dentists') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Dentists >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Dentists >>>'
go

/* 
 * TABLE: [Records.Hygenists] 
 */

CREATE TABLE [Records.Hygenists](
    Hyg_ID         int            NOT NULL IDENTITY PRIMARY KEY,
    Fname          varchar(20)    NOT NULL,
    Lname          varchar(20)    NOT NULL,
    Office_name    varchar(30)    NOT NULL,
    St_address     varchar(30)    NOT NULL,
    City           varchar(30)    NOT NULL,
    State          varchar(30)    NOT NULL,
    Phone          int            NOT NULL,
    Email          varchar(30)    NOT NULL,
    Fax_number     int            NOT NULL,
    ZipCode        char(5)        NULL,
)

go


IF OBJECT_ID('Records.Hygenists') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Hygenists >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Hygenists >>>'
go

/* 
 * TABLE: [Records.Insurance] 
 */

CREATE TABLE [Records.Insurance](
    Insurance_ID    int            NOT NULL IDENTITY PRIMARY KEY,
    Company         varchar(20)    NOT NULL,
    Plan_name       varchar(20)    NOT NULL,
    St_Address      varchar(30)    NOT NULL,
    City            varchar(30)    NOT NULL,
    State           varchar(30)    NOT NULL,
    Phone           int            NOT NULL,
    Email           varchar(30)    NOT NULL,
    Fax_number      int            NOT NULL,
    ZipCode         char(5)        NULL,
)

go


IF OBJECT_ID('Records.Insurance') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Insurance >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Insurance >>>'
go

/* 
 * TABLE: [Records.Medications] 
 */

CREATE TABLE [Records.Medications](
    Med_ID             int            NOT NULL IDENTITY PRIMARY KEY,
    Medication_name    varchar(20)    NOT NULL,
)

go


IF OBJECT_ID('Records.Medications') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Medications >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Medications >>>'
go

/* 
 * TABLE: [Records.Pharmacy] 
 */

CREATE TABLE [Records.Pharmacy](
    Pharmacy_ID    int            NOT NULL IDENTITY PRIMARY KEY,
    Office_name    varchar(30)    NOT NULL,
    St_address     varchar(30)    NOT NULL,
    City           varchar(30)    NOT NULL,
    State          varchar(30)    NOT NULL,
    Phone          varchar(30)    NOT NULL,
    Email          varchar(30)    NOT NULL,
    Fax_number     int            NOT NULL,
    ZipCode        char(5)        NULL,
)

go


IF OBJECT_ID('Records.Pharmacy') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Pharmacy >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Pharmacy >>>'
go

/* 
 * TABLE: [Records.Physicians] 
 */

CREATE TABLE [Records.Physicians](
    Phys_ID        int            NOT NULL IDENTITY PRIMARY KEY,
    Fname          varchar(20)    NOT NULL,
    Lname          varchar(20)    NOT NULL,
    Office_name    varchar(30)    NOT NULL,
    St_address     varchar(30)    NULL,
    City           varchar(30)    NOT NULL,
    State          varchar(30)    NOT NULL,
    Phone          int            NOT NULL,
    Email          varchar(30)    NOT NULL,
    Fax_number     int            NOT NULL,
    ZipCode        char(5)        NULL,
)

go


IF OBJECT_ID('Records.Physicians') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Physicians >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Physicians >>>'
go

/* 
 * TABLE: [Records.Scans] 
 */

CREATE TABLE [Records.Scans](
    Scan_ID        int            NOT NULL IDENTITY PRIMARY KEY,
    Patient_ID     int            NULL,
    Scan_Name      varchar(20)    NOT NULL,
    scan_link      varchar(30)    NOT NULL,
    Upload_date    date           NOT NULL,
)

go


IF OBJECT_ID('Records.Scans') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Scans >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Scans >>>'
go

/* 
 * TABLE: [Records.Teeth] 
 */

CREATE TABLE [Records.Teeth](
    Teeth_ID      int            NOT NULL IDENTITY PRIMARY KEY,
    Teeth_num     int            NOT NULL,
    Teeth_name    varchar(10)    NOT NULL,
)

go


IF OBJECT_ID('Records.Teeth') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.Teeth >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.Teeth >>>'
go

/* 
 * TABLE: [Records.ZipCode_LK] 
 */

CREATE TABLE [Records.ZipCode_LK](
    ZipCode    char(5)     NOT NULL PRIMARY KEY,
    City       char(25)    NOT NULL,
    State      char(2)     NOT NULL,
)

go


IF OBJECT_ID('Records.ZipCode_LK') IS NOT NULL
    PRINT '<<< CREATED TABLE Records.ZipCode_LK >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE Records.ZipCode_LK >>>'
go

/* 
 * INDEX: Ref3159 
 */

CREATE INDEX Ref3159 ON [Office.Appointment](Cancellation_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref3159')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref3159 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref3159 >>>'
go

/* 
 * INDEX: Ref2160 
 */

CREATE INDEX Ref2160 ON [Office.Appointment](Scan_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref2160')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref2160 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref2160 >>>'
go

/* 
 * INDEX: Ref2861 
 */

CREATE INDEX Ref2861 ON [Office.Appointment](Room_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref2861')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref2861 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref2861 >>>'
go

/* 
 * INDEX: Ref1263 
 */

CREATE INDEX Ref1263 ON [Office.Appointment](Appt_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref1263')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref1263 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref1263 >>>'
go

/* 
 * INDEX: Ref2665 
 */

CREATE INDEX Ref2665 ON [Office.Appointment](Prim_Emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref2665')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref2665 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref2665 >>>'
go

/* 
 * INDEX: Ref2666 
 */

CREATE INDEX Ref2666 ON [Office.Appointment](Secondary_emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref2666')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref2666 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref2666 >>>'
go

/* 
 * INDEX: Ref118 
 */

CREATE INDEX Ref118 ON [Office.Appointment](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Appointment') AND name='Ref118')
    PRINT '<<< CREATED INDEX Office.Appointment.Ref118 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Appointment.Ref118 >>>'
go

/* 
 * INDEX: Ref2674 
 */

CREATE INDEX Ref2674 ON [Office.Employee_availability](Emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Employee_availability') AND name='Ref2674')
    PRINT '<<< CREATED INDEX Office.Employee_availability.Ref2674 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Employee_availability.Ref2674 >>>'
go

/* 
 * INDEX: Ref2877 
 */

CREATE INDEX Ref2877 ON [Office.Employee_availability](In_room_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Employee_availability') AND name='Ref2877')
    PRINT '<<< CREATED INDEX Office.Employee_availability.Ref2877 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Employee_availability.Ref2877 >>>'
go

/* 
 * INDEX: Ref2857 
 */

CREATE INDEX Ref2857 ON [Office.Equipment](Equipment_RoomID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Equipment') AND name='Ref2857')
    PRINT '<<< CREATED INDEX Office.Equipment.Ref2857 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Equipment.Ref2857 >>>'
go

/* 
 * INDEX: Ref34100 
 */

CREATE INDEX Ref34100 ON [Office.Locations](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Locations') AND name='Ref34100')
    PRINT '<<< CREATED INDEX Office.Locations.Ref34100 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Locations.Ref34100 >>>'
go

/* 
 * INDEX: Ref2855 
 */

CREATE INDEX Ref2855 ON [Office.Room_Availability](Room_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Room_Availability') AND name='Ref2855')
    PRINT '<<< CREATED INDEX Office.Room_Availability.Ref2855 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Room_Availability.Ref2855 >>>'
go

/* 
 * INDEX: Ref2668 
 */

CREATE INDEX Ref2668 ON [Office.Room_Availability](Booked_by_prim_emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Room_Availability') AND name='Ref2668')
    PRINT '<<< CREATED INDEX Office.Room_Availability.Ref2668 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Room_Availability.Ref2668 >>>'
go

/* 
 * INDEX: Ref2773 
 */

CREATE INDEX Ref2773 ON [Office.Rooms](Room_locationID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Office.Rooms') AND name='Ref2773')
    PRINT '<<< CREATED INDEX Office.Rooms.Ref2773 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Office.Rooms.Ref2773 >>>'
go

/* 
 * INDEX: Ref18 
 */

CREATE INDEX Ref18 ON [Patient.allergies](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.allergies') AND name='Ref18')
    PRINT '<<< CREATED INDEX Patient.allergies.Ref18 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.allergies.Ref18 >>>'
go

/* 
 * INDEX: Ref1319 
 */

CREATE INDEX Ref1319 ON [Patient.allergies](Allergy_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.allergies') AND name='Ref1319')
    PRINT '<<< CREATED INDEX Patient.allergies.Ref1319 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.allergies.Ref1319 >>>'
go

/* 
 * INDEX: Ref2141 
 */

CREATE INDEX Ref2141 ON [Patient.consent_forms](consented_Scan_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.consent_forms') AND name='Ref2141')
    PRINT '<<< CREATED INDEX Patient.consent_forms.Ref2141 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.consent_forms.Ref2141 >>>'
go

/* 
 * INDEX: Ref2142 
 */

CREATE INDEX Ref2142 ON [Patient.consent_forms](insurance_Scan_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.consent_forms') AND name='Ref2142')
    PRINT '<<< CREATED INDEX Patient.consent_forms.Ref2142 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.consent_forms.Ref2142 >>>'
go

/* 
 * INDEX: Ref2143 
 */

CREATE INDEX Ref2143 ON [Patient.consent_forms](cancellation_scan_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.consent_forms') AND name='Ref2143')
    PRINT '<<< CREATED INDEX Patient.consent_forms.Ref2143 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.consent_forms.Ref2143 >>>'
go

/* 
 * INDEX: Ref116 
 */

CREATE INDEX Ref116 ON [Patient.consent_forms](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.consent_forms') AND name='Ref116')
    PRINT '<<< CREATED INDEX Patient.consent_forms.Ref116 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.consent_forms.Ref116 >>>'
go

/* 
 * INDEX: Ref112 
 */

CREATE INDEX Ref112 ON [Patient.COVID_info](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.COVID_info') AND name='Ref112')
    PRINT '<<< CREATED INDEX Patient.COVID_info.Ref112 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.COVID_info.Ref112 >>>'
go

/* 
 * INDEX: Ref114 
 */

CREATE INDEX Ref114 ON [Patient.detailed_dental_history](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref114')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref114 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref114 >>>'
go

/* 
 * INDEX: Ref1229 
 */

CREATE INDEX Ref1229 ON [Patient.detailed_dental_history](dental_carries_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref1229')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref1229 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref1229 >>>'
go

/* 
 * INDEX: Ref1230 
 */

CREATE INDEX Ref1230 ON [Patient.detailed_dental_history](developmental_disturbed_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref1230')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref1230 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref1230 >>>'
go

/* 
 * INDEX: Ref1231 
 */

CREATE INDEX Ref1231 ON [Patient.detailed_dental_history](missing_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref1231')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref1231 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref1231 >>>'
go

/* 
 * INDEX: Ref1232 
 */

CREATE INDEX Ref1232 ON [Patient.detailed_dental_history](none_restorable_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref1232')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref1232 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref1232 >>>'
go

/* 
 * INDEX: Ref1233 
 */

CREATE INDEX Ref1233 ON [Patient.detailed_dental_history](Stained_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref1233')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref1233 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref1233 >>>'
go

/* 
 * INDEX: Ref1234 
 */

CREATE INDEX Ref1234 ON [Patient.detailed_dental_history](unerupted_teeth_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.detailed_dental_history') AND name='Ref1234')
    PRINT '<<< CREATED INDEX Patient.detailed_dental_history.Ref1234 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.detailed_dental_history.Ref1234 >>>'
go

/* 
 * INDEX: Ref19 
 */

CREATE INDEX Ref19 ON [Patient.general_dental_history](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.general_dental_history') AND name='Ref19')
    PRINT '<<< CREATED INDEX Patient.general_dental_history.Ref19 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.general_dental_history.Ref19 >>>'
go

/* 
 * INDEX: Ref115 
 */

CREATE INDEX Ref115 ON [Patient.insurance](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.insurance') AND name='Ref115')
    PRINT '<<< CREATED INDEX Patient.insurance.Ref115 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.insurance.Ref115 >>>'
go

/* 
 * INDEX: Ref1436 
 */

CREATE INDEX Ref1436 ON [Patient.insurance](Prim_insurance_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.insurance') AND name='Ref1436')
    PRINT '<<< CREATED INDEX Patient.insurance.Ref1436 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.insurance.Ref1436 >>>'
go

/* 
 * INDEX: Ref1437 
 */

CREATE INDEX Ref1437 ON [Patient.insurance](Quat_insurance_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.insurance') AND name='Ref1437')
    PRINT '<<< CREATED INDEX Patient.insurance.Ref1437 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.insurance.Ref1437 >>>'
go

/* 
 * INDEX: Ref1438 
 */

CREATE INDEX Ref1438 ON [Patient.insurance](Seco_insurance_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.insurance') AND name='Ref1438')
    PRINT '<<< CREATED INDEX Patient.insurance.Ref1438 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.insurance.Ref1438 >>>'
go

/* 
 * INDEX: Ref1439 
 */

CREATE INDEX Ref1439 ON [Patient.insurance](Tert_insurance_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.insurance') AND name='Ref1439')
    PRINT '<<< CREATED INDEX Patient.insurance.Ref1439 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.insurance.Ref1439 >>>'
go

/* 
 * INDEX: Ref17 
 */

CREATE INDEX Ref17 ON [Patient.medical_history](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.medical_history') AND name='Ref17')
    PRINT '<<< CREATED INDEX Patient.medical_history.Ref17 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.medical_history.Ref17 >>>'
go

/* 
 * INDEX: Ref1783 
 */

CREATE INDEX Ref1783 ON [Patient.personal_info](Prim_den_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_info') AND name='Ref1783')
    PRINT '<<< CREATED INDEX Patient.personal_info.Ref1783 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_info.Ref1783 >>>'
go

/* 
 * INDEX: Ref1885 
 */

CREATE INDEX Ref1885 ON [Patient.personal_info](Prim_phys_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_info') AND name='Ref1885')
    PRINT '<<< CREATED INDEX Patient.personal_info.Ref1885 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_info.Ref1885 >>>'
go

/* 
 * INDEX: Ref2087 
 */

CREATE INDEX Ref2087 ON [Patient.personal_info](Prim_phar_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_info') AND name='Ref2087')
    PRINT '<<< CREATED INDEX Patient.personal_info.Ref2087 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_info.Ref2087 >>>'
go

/* 
 * INDEX: Ref2789 
 */

CREATE INDEX Ref2789 ON [Patient.personal_info](Preferred_den_location_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_info') AND name='Ref2789')
    PRINT '<<< CREATED INDEX Patient.personal_info.Ref2789 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_info.Ref2789 >>>'
go

/* 
 * INDEX: Ref17102 
 */

CREATE INDEX Ref17102 ON [Patient.personal_info](Seco_den_id)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_info') AND name='Ref17102')
    PRINT '<<< CREATED INDEX Patient.personal_info.Ref17102 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_info.Ref17102 >>>'
go

/* 
 * INDEX: Ref113 
 */

CREATE INDEX Ref113 ON [Patient.personal_sens_info](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_sens_info') AND name='Ref113')
    PRINT '<<< CREATED INDEX Patient.personal_sens_info.Ref113 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_sens_info.Ref113 >>>'
go

/* 
 * INDEX: Ref3493 
 */

CREATE INDEX Ref3493 ON [Patient.personal_sens_info](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_sens_info') AND name='Ref3493')
    PRINT '<<< CREATED INDEX Patient.personal_sens_info.Ref3493 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_sens_info.Ref3493 >>>'
go

/* 
 * INDEX: Ref2646 
 */

CREATE INDEX Ref2646 ON [Patient.personal_sens_info_access_history](Accessed_by)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.personal_sens_info_access_history') AND name='Ref2646')
    PRINT '<<< CREATED INDEX Patient.personal_sens_info_access_history.Ref2646 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.personal_sens_info_access_history.Ref2646 >>>'
go

/* 
 * INDEX: Ref111 
 */

CREATE INDEX Ref111 ON [Patient.pharm_history](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.pharm_history') AND name='Ref111')
    PRINT '<<< CREATED INDEX Patient.pharm_history.Ref111 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.pharm_history.Ref111 >>>'
go

/* 
 * INDEX: Ref1521 
 */

CREATE INDEX Ref1521 ON [Patient.pharm_history](Prescribed_Med_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.pharm_history') AND name='Ref1521')
    PRINT '<<< CREATED INDEX Patient.pharm_history.Ref1521 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.pharm_history.Ref1521 >>>'
go

/* 
 * INDEX: Ref2623 
 */

CREATE INDEX Ref2623 ON [Patient.pharm_history](prescribed_by_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.pharm_history') AND name='Ref2623')
    PRINT '<<< CREATED INDEX Patient.pharm_history.Ref2623 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.pharm_history.Ref2623 >>>'
go

/* 
 * INDEX: Ref2725 
 */

CREATE INDEX Ref2725 ON [Patient.pharm_history](Prescribed_location_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.pharm_history') AND name='Ref2725')
    PRINT '<<< CREATED INDEX Patient.pharm_history.Ref2725 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.pharm_history.Ref2725 >>>'
go

/* 
 * INDEX: Ref2027 
 */

CREATE INDEX Ref2027 ON [Patient.pharm_history](Prescribed_pharmacy_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Patient.pharm_history') AND name='Ref2027')
    PRINT '<<< CREATED INDEX Patient.pharm_history.Ref2027 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Patient.pharm_history.Ref2027 >>>'
go

/* 
 * INDEX: Ref2247 
 */

CREATE INDEX Ref2247 ON [Provider.employee](Specialization_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee') AND name='Ref2247')
    PRINT '<<< CREATED INDEX Provider.employee.Ref2247 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee.Ref2247 >>>'
go

/* 
 * INDEX: Ref1748 
 */

CREATE INDEX Ref1748 ON [Provider.employee](Den_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee') AND name='Ref1748')
    PRINT '<<< CREATED INDEX Provider.employee.Ref1748 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee.Ref1748 >>>'
go

/* 
 * INDEX: Ref1949 
 */

CREATE INDEX Ref1949 ON [Provider.employee](Hyg_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee') AND name='Ref1949')
    PRINT '<<< CREATED INDEX Provider.employee.Ref1949 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee.Ref1949 >>>'
go

/* 
 * INDEX: Ref2750 
 */

CREATE INDEX Ref2750 ON [Provider.employee](Location_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee') AND name='Ref2750')
    PRINT '<<< CREATED INDEX Provider.employee.Ref2750 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee.Ref2750 >>>'
go

/* 
 * INDEX: Ref2670 
 */

CREATE INDEX Ref2670 ON [Provider.employee_sens_access_history](Accessed_by)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee_sens_access_history') AND name='Ref2670')
    PRINT '<<< CREATED INDEX Provider.employee_sens_access_history.Ref2670 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee_sens_access_history.Ref2670 >>>'
go

/* 
 * INDEX: Ref2671 
 */

CREATE INDEX Ref2671 ON [Provider.employee_sens_access_history](Accessed_record)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee_sens_access_history') AND name='Ref2671')
    PRINT '<<< CREATED INDEX Provider.employee_sens_access_history.Ref2671 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee_sens_access_history.Ref2671 >>>'
go

/* 
 * INDEX: Ref2651 
 */

CREATE INDEX Ref2651 ON [Provider.employee_sens_info](Emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee_sens_info') AND name='Ref2651')
    PRINT '<<< CREATED INDEX Provider.employee_sens_info.Ref2651 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee_sens_info.Ref2651 >>>'
go

/* 
 * INDEX: Ref3499 
 */

CREATE INDEX Ref3499 ON [Provider.employee_sens_info](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.employee_sens_info') AND name='Ref3499')
    PRINT '<<< CREATED INDEX Provider.employee_sens_info.Ref3499 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.employee_sens_info.Ref3499 >>>'
go

/* 
 * INDEX: Ref2653 
 */

CREATE INDEX Ref2653 ON [Provider.Works_with](Prim_emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.Works_with') AND name='Ref2653')
    PRINT '<<< CREATED INDEX Provider.Works_with.Ref2653 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.Works_with.Ref2653 >>>'
go

/* 
 * INDEX: Ref2654 
 */

CREATE INDEX Ref2654 ON [Provider.Works_with](Seco_Emp_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Provider.Works_with') AND name='Ref2654')
    PRINT '<<< CREATED INDEX Provider.Works_with.Ref2654 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Provider.Works_with.Ref2654 >>>'
go

/* 
 * INDEX: Ref3495 
 */

CREATE INDEX Ref3495 ON [Records.Dentists](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Records.Dentists') AND name='Ref3495')
    PRINT '<<< CREATED INDEX Records.Dentists.Ref3495 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Records.Dentists.Ref3495 >>>'
go

/* 
 * INDEX: Ref3498 
 */

CREATE INDEX Ref3498 ON [Records.Hygenists](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Records.Hygenists') AND name='Ref3498')
    PRINT '<<< CREATED INDEX Records.Hygenists.Ref3498 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Records.Hygenists.Ref3498 >>>'
go

/* 
 * INDEX: Ref3494 
 */

CREATE INDEX Ref3494 ON [Records.Insurance](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Records.Insurance') AND name='Ref3494')
    PRINT '<<< CREATED INDEX Records.Insurance.Ref3494 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Records.Insurance.Ref3494 >>>'
go

/* 
 * INDEX: Ref3497 
 */

CREATE INDEX Ref3497 ON [Records.Pharmacy](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Records.Pharmacy') AND name='Ref3497')
    PRINT '<<< CREATED INDEX Records.Pharmacy.Ref3497 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Records.Pharmacy.Ref3497 >>>'
go

/* 
 * INDEX: Ref3496 
 */

CREATE INDEX Ref3496 ON [Records.Physicians](ZipCode)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Records.Physicians') AND name='Ref3496')
    PRINT '<<< CREATED INDEX Records.Physicians.Ref3496 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Records.Physicians.Ref3496 >>>'
go

/* 
 * INDEX: Ref117 
 */

CREATE INDEX Ref117 ON [Records.Scans](Patient_ID)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('Records.Scans') AND name='Ref117')
    PRINT '<<< CREATED INDEX Records.Scans.Ref117 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX Records.Scans.Ref117 >>>'
go

/* 
 * TABLE: [Office.Appointment] 
 */

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefOffice.Cancelations59]
    FOREIGN KEY (Cancellation_ID)
    REFERENCES [Office.Cancelations](Cancellation_ID)
go

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefRecords.Scans60]
    FOREIGN KEY (Scan_ID)
    REFERENCES [Records.Scans](Scan_ID)
go

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefOffice.Rooms61]
    FOREIGN KEY (Room_ID)
    REFERENCES [Office.Rooms](Room_ID)
go

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefRecords.Teeth63]
    FOREIGN KEY (Appt_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefProvider.employee65]
    FOREIGN KEY (Prim_Emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefProvider.employee66]
    FOREIGN KEY (Secondary_emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Office.Appointment] ADD CONSTRAINT [RefPatient.personal_info18]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go


/* 
 * TABLE: [Office.Employee_availability] 
 */

ALTER TABLE [Office.Employee_availability] ADD CONSTRAINT [RefProvider.employee74]
    FOREIGN KEY (Emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Office.Employee_availability] ADD CONSTRAINT [RefOffice.Rooms77]
    FOREIGN KEY (In_room_ID)
    REFERENCES [Office.Rooms](Room_ID)
go


/* 
 * TABLE: [Office.Equipment] 
 */

ALTER TABLE [Office.Equipment] ADD CONSTRAINT [RefOffice.Rooms57]
    FOREIGN KEY (Equipment_RoomID)
    REFERENCES [Office.Rooms](Room_ID)
go


/* 
 * TABLE: [Office.Locations] 
 */

ALTER TABLE [Office.Locations] ADD CONSTRAINT [RefRecords.ZipCode_LK100]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Office.Room_Availability] 
 */

ALTER TABLE [Office.Room_Availability] ADD CONSTRAINT [RefOffice.Rooms55]
    FOREIGN KEY (Room_ID)
    REFERENCES [Office.Rooms](Room_ID)
go

ALTER TABLE [Office.Room_Availability] ADD CONSTRAINT [RefProvider.employee68]
    FOREIGN KEY (Booked_by_prim_emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go


/* 
 * TABLE: [Office.Rooms] 
 */

ALTER TABLE [Office.Rooms] ADD CONSTRAINT [RefOffice.Locations73]
    FOREIGN KEY (Room_locationID)
    REFERENCES [Office.Locations](Location_ID)
go


/* 
 * TABLE: [Patient.allergies] 
 */

ALTER TABLE [Patient.allergies] ADD CONSTRAINT [RefPatient.personal_info8]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go

ALTER TABLE [Patient.allergies] ADD CONSTRAINT [RefRecords.Allergies19]
    FOREIGN KEY (Allergy_ID)
    REFERENCES [Records.Allergies](Allergy_ID)
go


/* 
 * TABLE: [Patient.consent_forms] 
 */

ALTER TABLE [Patient.consent_forms] ADD CONSTRAINT [RefRecords.Scans41]
    FOREIGN KEY (consented_Scan_ID)
    REFERENCES [Records.Scans](Scan_ID)
go

ALTER TABLE [Patient.consent_forms] ADD CONSTRAINT [RefRecords.Scans42]
    FOREIGN KEY (insurance_Scan_ID)
    REFERENCES [Records.Scans](Scan_ID)
go

ALTER TABLE [Patient.consent_forms] ADD CONSTRAINT [RefRecords.Scans43]
    FOREIGN KEY (cancellation_scan_ID)
    REFERENCES [Records.Scans](Scan_ID)
go

ALTER TABLE [Patient.consent_forms] ADD CONSTRAINT [RefPatient.personal_info16]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go


/* 
 * TABLE: [Patient.COVID_info] 
 */

ALTER TABLE [Patient.COVID_info] ADD CONSTRAINT [RefPatient.personal_info12]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go


/* 
 * TABLE: [Patient.detailed_dental_history] 
 */

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefPatient.personal_info14]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefRecords.Teeth29]
    FOREIGN KEY (dental_carries_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefRecords.Teeth30]
    FOREIGN KEY (developmental_disturbed_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefRecords.Teeth31]
    FOREIGN KEY (missing_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefRecords.Teeth32]
    FOREIGN KEY (none_restorable_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefRecords.Teeth33]
    FOREIGN KEY (Stained_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go

ALTER TABLE [Patient.detailed_dental_history] ADD CONSTRAINT [RefRecords.Teeth34]
    FOREIGN KEY (unerupted_teeth_ID)
    REFERENCES [Records.Teeth](Teeth_ID)
go


/* 
 * TABLE: [Patient.general_dental_history] 
 */

ALTER TABLE [Patient.general_dental_history] ADD CONSTRAINT [RefPatient.personal_info9]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go


/* 
 * TABLE: [Patient.insurance] 
 */

ALTER TABLE [Patient.insurance] ADD CONSTRAINT [RefPatient.personal_info15]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go

ALTER TABLE [Patient.insurance] ADD CONSTRAINT [RefRecords.Insurance36]
    FOREIGN KEY (Prim_insurance_ID)
    REFERENCES [Records.Insurance](Insurance_ID)
go

ALTER TABLE [Patient.insurance] ADD CONSTRAINT [RefRecords.Insurance37]
    FOREIGN KEY (Quat_insurance_ID)
    REFERENCES [Records.Insurance](Insurance_ID)
go

ALTER TABLE [Patient.insurance] ADD CONSTRAINT [RefRecords.Insurance38]
    FOREIGN KEY (Seco_insurance_ID)
    REFERENCES [Records.Insurance](Insurance_ID)
go

ALTER TABLE [Patient.insurance] ADD CONSTRAINT [RefRecords.Insurance39]
    FOREIGN KEY (Tert_insurance_ID)
    REFERENCES [Records.Insurance](Insurance_ID)
go


/* 
 * TABLE: [Patient.medical_history] 
 */

ALTER TABLE [Patient.medical_history] ADD CONSTRAINT [RefPatient.personal_info7]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go


/* 
 * TABLE: [Patient.personal_info] 
 */

ALTER TABLE [Patient.personal_info] ADD CONSTRAINT [RefRecords.Dentists83]
    FOREIGN KEY (Prim_den_ID)
    REFERENCES [Records.Dentists](Den_ID)
go

ALTER TABLE [Patient.personal_info] ADD CONSTRAINT [RefRecords.Physicians85]
    FOREIGN KEY (Prim_phys_ID)
    REFERENCES [Records.Physicians](Phys_ID)
go

ALTER TABLE [Patient.personal_info] ADD CONSTRAINT [RefRecords.Pharmacy87]
    FOREIGN KEY (Prim_phar_ID)
    REFERENCES [Records.Pharmacy](Pharmacy_ID)
go

ALTER TABLE [Patient.personal_info] ADD CONSTRAINT [RefOffice.Locations89]
    FOREIGN KEY (Preferred_den_location_ID)
    REFERENCES [Office.Locations](Location_ID)
go

ALTER TABLE [Patient.personal_info] ADD CONSTRAINT [RefRecords.Dentists102]
    FOREIGN KEY (Seco_den_id)
    REFERENCES [Records.Dentists](Den_ID)
go


/* 
 * TABLE: [Patient.personal_sens_info] 
 */

ALTER TABLE [Patient.personal_sens_info] ADD CONSTRAINT [RefPatient.personal_info13]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go

ALTER TABLE [Patient.personal_sens_info] ADD CONSTRAINT [RefRecords.ZipCode_LK93]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Patient.personal_sens_info_access_history] 
 */

ALTER TABLE [Patient.personal_sens_info_access_history] ADD CONSTRAINT [RefProvider.employee46]
    FOREIGN KEY (Accessed_by)
    REFERENCES [Provider.employee](Emp_ID)
go


/* 
 * TABLE: [Patient.pharm_history] 
 */

ALTER TABLE [Patient.pharm_history] ADD CONSTRAINT [RefPatient.personal_info11]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go

ALTER TABLE [Patient.pharm_history] ADD CONSTRAINT [RefRecords.Medications21]
    FOREIGN KEY (Prescribed_Med_ID)
    REFERENCES [Records.Medications](Med_ID)
go

ALTER TABLE [Patient.pharm_history] ADD CONSTRAINT [RefProvider.employee23]
    FOREIGN KEY (prescribed_by_ID)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Patient.pharm_history] ADD CONSTRAINT [RefOffice.Locations25]
    FOREIGN KEY (Prescribed_location_ID)
    REFERENCES [Office.Locations](Location_ID)
go

ALTER TABLE [Patient.pharm_history] ADD CONSTRAINT [RefRecords.Pharmacy27]
    FOREIGN KEY (Prescribed_pharmacy_ID)
    REFERENCES [Records.Pharmacy](Pharmacy_ID)
go


/* 
 * TABLE: [Provider.employee] 
 */

ALTER TABLE [Provider.employee] ADD CONSTRAINT [RefProvider.Specializations47]
    FOREIGN KEY (Specialization_ID)
    REFERENCES [Provider.Specializations](Specialization_ID)
go

ALTER TABLE [Provider.employee] ADD CONSTRAINT [RefRecords.Dentists48]
    FOREIGN KEY (Den_ID)
    REFERENCES [Records.Dentists](Den_ID)
go

ALTER TABLE [Provider.employee] ADD CONSTRAINT [RefRecords.Hygenists49]
    FOREIGN KEY (Hyg_ID)
    REFERENCES [Records.Hygenists](Hyg_ID)
go

ALTER TABLE [Provider.employee] ADD CONSTRAINT [RefOffice.Locations50]
    FOREIGN KEY (Location_ID)
    REFERENCES [Office.Locations](Location_ID)
go


/* 
 * TABLE: [Provider.employee_sens_access_history] 
 */

ALTER TABLE [Provider.employee_sens_access_history] ADD CONSTRAINT [RefProvider.employee70]
    FOREIGN KEY (Accessed_by)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Provider.employee_sens_access_history] ADD CONSTRAINT [RefProvider.employee71]
    FOREIGN KEY (Accessed_record)
    REFERENCES [Provider.employee](Emp_ID)
go


/* 
 * TABLE: [Provider.employee_sens_info] 
 */

ALTER TABLE [Provider.employee_sens_info] ADD CONSTRAINT [RefProvider.employee51]
    FOREIGN KEY (Emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Provider.employee_sens_info] ADD CONSTRAINT [RefRecords.ZipCode_LK99]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Provider.Works_with] 
 */

ALTER TABLE [Provider.Works_with] ADD CONSTRAINT [RefProvider.employee53]
    FOREIGN KEY (Prim_emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go

ALTER TABLE [Provider.Works_with] ADD CONSTRAINT [RefProvider.employee54]
    FOREIGN KEY (Seco_Emp_ID)
    REFERENCES [Provider.employee](Emp_ID)
go


/* 
 * TABLE: [Records.Dentists] 
 */

ALTER TABLE [Records.Dentists] ADD CONSTRAINT [RefRecords.ZipCode_LK95]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Records.Hygenists] 
 */

ALTER TABLE [Records.Hygenists] ADD CONSTRAINT [RefRecords.ZipCode_LK98]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Records.Insurance] 
 */

ALTER TABLE [Records.Insurance] ADD CONSTRAINT [RefRecords.ZipCode_LK94]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Records.Pharmacy] 
 */

ALTER TABLE [Records.Pharmacy] ADD CONSTRAINT [RefRecords.ZipCode_LK97]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Records.Physicians] 
 */

ALTER TABLE [Records.Physicians] ADD CONSTRAINT [RefRecords.ZipCode_LK96]
    FOREIGN KEY (ZipCode)
    REFERENCES [Records.ZipCode_LK](ZipCode)
go


/* 
 * TABLE: [Records.Scans] 
 */

ALTER TABLE [Records.Scans] ADD CONSTRAINT [RefPatient.personal_info17]
    FOREIGN KEY (Patient_ID)
    REFERENCES [Patient.personal_info](Patient_ID)
go


