/*
 * ER/Studio Data Architect SQL Code Generation
 * Project :      Dimension-Modeling.DM1
 *
 * Date Created : Sunday, February 26, 2023 22:17:39
 * Target DBMS : Microsoft SQL Server 2019
 */

/* 
 * TABLE: DIM_Address 
 */

CREATE TABLE DIM_Address(
    AddressSK          int             NOT NULL,
    Address            varchar(255)    NULL,
    City               varchar(255)    NULL,
    State              char(2)         NULL,
    Zipcode            char(5)         NULL,
    Ward               tinyint         NULL,
    Precint            smallint        NULL,
    WardPrecinct       char(6)         NULL,
    PoliceDistrict     tinyint         NULL,
    Ssa                tinyint         NULL,
    Latitude           char(18)        NULL,
    Longitude          char(18)        NULL,
    Location           char(255)       NULL,
    DI_JobID           varchar(255)    NULL,
    DI_CreateDate      date            NULL,
    DI_ModifiedDate    datetime        NULL,
    CONSTRAINT PK_DimAddress PRIMARY KEY NONCLUSTERED (AddressSK)
)

go


IF OBJECT_ID('DIM_Address') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Address >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Address >>>'
go

/* 
 * TABLE: DIM_Date 
 */

CREATE TABLE DIM_Date(
    DateSK               int             NOT NULL,
    FullDate             date            NULL,
    DayNumberOfWeek      int             NULL,
    DayNameOfWeek        nvarchar(10)    NULL,
    MonthName            nvarchar(10)    NULL,
    MonthNumberOfYear    int             NULL,
    CalendarYear         smallint        NULL,
    DI_JobID             varchar(255)    NULL,
    DI_CreateDate        datetime        NULL,
    DI_ModifiedDate      datetime        NULL,
    CONSTRAINT PK_DimDate PRIMARY KEY NONCLUSTERED (DateSK)
)

go


IF OBJECT_ID('DIM_Date') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Date >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Date >>>'
go

/* 
 * TABLE: DIM_Inspection 
 */

CREATE TABLE DIM_Inspection(
    InspectionSK       int             NOT NULL,
    InspectionType     varchar(255)    NULL,
    Risk               varchar(255)    NULL,
    DI_JobID           varchar(255)    NULL,
    DI_CreateDate      datetime        NULL,
    DI_ModifiedDate    datetime        NULL,
    CONSTRAINT PK_DimInspection PRIMARY KEY NONCLUSTERED (InspectionSK)
)

go


IF OBJECT_ID('DIM_Inspection') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Inspection >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Inspection >>>'
go

/* 
 * TABLE: DIM_License 
 */

CREATE TABLE DIM_License(
    LicenseSK                      int               NOT NULL,
    License_Id                     int               NULL,
    Account_Number                 int               NULL,
    License_Code                   smallint          NULL,
    License_Description            varchar(255)      NULL,
    Business_Activity              nvarchar(1000)    NULL,
    License_number                 int               NULL,
    Application_Type               char(6)           NULL,
    PaymentDateSK                  int               NULL,
    PaymentDate                    date              NULL,
    LicenseTermStartDateSK         int               NULL,
    LicenseTermStartDate           date              NULL,
    LicenseTermExpirationDateSK    int               NULL,
    LicenseTermExpirationDate      date              NULL,
    LicenseStatus                  char(3)           NULL,
    DI_JobID                       varchar(255)      NULL,
    DI_CreateDate                  date              NULL,
    DI_ModifiedDate                datetime          NULL,
    CONSTRAINT PK_DimLicense PRIMARY KEY NONCLUSTERED (LicenseSK)
)

go


IF OBJECT_ID('DIM_License') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_License >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_License >>>'
go

/* 
 * TABLE: DIM_Restaurant 
 */

CREATE TABLE DIM_Restaurant(
    RestaurantSK              int             NOT NULL,
    RestaurantBusinessName    varchar(255)    NULL,
    RestaurantAKAName         varchar(255)    NULL,
    FacilityType              varchar(255)    NULL,
    DI_JobID                  varchar(255)    NULL,
    DI_CreateDate             datetime        NULL,
    DI_ModifiedDate           datetime        NULL,
    CONSTRAINT PK_DimRestaurant PRIMARY KEY NONCLUSTERED (RestaurantSK)
)

go


IF OBJECT_ID('DIM_Restaurant') IS NOT NULL
    PRINT '<<< CREATED TABLE DIM_Restaurant >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DIM_Restaurant >>>'
go

/* 
 * TABLE: FCT_Resturant_Inspection 
 */

CREATE TABLE FCT_Resturant_Inspection(
    FactRestaurantInspectionSK    int              NOT NULL,
    AddressSK                     int              NOT NULL,
    RestaurantSK                  int              NULL,
    LicenseSK                     int              NOT NULL,
    InspectionID                  int              NULL,
    InspectionSK                  int              NULL,
    DateSK                        int              NULL,
    InspectionDate                date             NULL,
    Results                       varchar(255)     NULL,
    Violations                    nvarchar(max)    NULL,
    DI_JobID                      varchar(255)     NULL,
    DI_CreateDate                 datetime         NULL,
    DI_ModifiedDate               datetime         NULL,
    CONSTRAINT PK_FactResturantInspection PRIMARY KEY NONCLUSTERED (FactRestaurantInspectionSK)
)

go


IF OBJECT_ID('FCT_Resturant_Inspection') IS NOT NULL
    PRINT '<<< CREATED TABLE FCT_Resturant_Inspection >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE FCT_Resturant_Inspection >>>'
go

/* 
 * INDEX: FK_DimLicense_DimDate_1 
 */

CREATE INDEX FK_DimLicense_DimDate_1 ON DIM_License(PaymentDateSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('DIM_License') AND name='FK_DimLicense_DimDate_1')
    PRINT '<<< CREATED INDEX DIM_License.FK_DimLicense_DimDate_1 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX DIM_License.FK_DimLicense_DimDate_1 >>>'
go

/* 
 * INDEX: FK_DimLicense_DimDate_2 
 */

CREATE INDEX FK_DimLicense_DimDate_2 ON DIM_License(LicenseTermStartDateSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('DIM_License') AND name='FK_DimLicense_DimDate_2')
    PRINT '<<< CREATED INDEX DIM_License.FK_DimLicense_DimDate_2 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX DIM_License.FK_DimLicense_DimDate_2 >>>'
go

/* 
 * INDEX: FK_DimLicense_DimDate_3 
 */

CREATE INDEX FK_DimLicense_DimDate_3 ON DIM_License(LicenseTermExpirationDateSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('DIM_License') AND name='FK_DimLicense_DimDate_3')
    PRINT '<<< CREATED INDEX DIM_License.FK_DimLicense_DimDate_3 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX DIM_License.FK_DimLicense_DimDate_3 >>>'
go

/* 
 * INDEX: FK_FactRestaurantInspection_DimRestaurant 
 */

CREATE INDEX FK_FactRestaurantInspection_DimRestaurant ON FCT_Resturant_Inspection(RestaurantSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Resturant_Inspection') AND name='FK_FactRestaurantInspection_DimRestaurant')
    PRINT '<<< CREATED INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimRestaurant >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimRestaurant >>>'
go

/* 
 * INDEX: FK_FactRestaurantInspection_DimLicense 
 */

CREATE INDEX FK_FactRestaurantInspection_DimLicense ON FCT_Resturant_Inspection(LicenseSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Resturant_Inspection') AND name='FK_FactRestaurantInspection_DimLicense')
    PRINT '<<< CREATED INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimLicense >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimLicense >>>'
go

/* 
 * INDEX: FK_FactRestaurantInspection_DimInspection 
 */

CREATE INDEX FK_FactRestaurantInspection_DimInspection ON FCT_Resturant_Inspection(InspectionSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Resturant_Inspection') AND name='FK_FactRestaurantInspection_DimInspection')
    PRINT '<<< CREATED INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimInspection >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimInspection >>>'
go

/* 
 * INDEX: FK_FactRestaurantInspection_DimDate 
 */

CREATE INDEX FK_FactRestaurantInspection_DimDate ON FCT_Resturant_Inspection(DateSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Resturant_Inspection') AND name='FK_FactRestaurantInspection_DimDate')
    PRINT '<<< CREATED INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimDate >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Resturant_Inspection.FK_FactRestaurantInspection_DimDate >>>'
go

/* 
 * INDEX: Ref311 
 */

CREATE INDEX Ref311 ON FCT_Resturant_Inspection(AddressSK)
go
IF EXISTS (SELECT * FROM sys.indexes WHERE object_id=OBJECT_ID('FCT_Resturant_Inspection') AND name='Ref311')
    PRINT '<<< CREATED INDEX FCT_Resturant_Inspection.Ref311 >>>'
ELSE
    PRINT '<<< FAILED CREATING INDEX FCT_Resturant_Inspection.Ref311 >>>'
go

/* 
 * TABLE: DIM_License 
 */

ALTER TABLE DIM_License ADD CONSTRAINT FK_DimLicense_DimDate_1 
    FOREIGN KEY (PaymentDateSK)
    REFERENCES DIM_Date(DateSK)
go

ALTER TABLE DIM_License ADD CONSTRAINT FK_DimLicense_DimDate_2 
    FOREIGN KEY (LicenseTermStartDateSK)
    REFERENCES DIM_Date(DateSK)
go

ALTER TABLE DIM_License ADD CONSTRAINT FK_DimLicense_DimDate_3 
    FOREIGN KEY (LicenseTermExpirationDateSK)
    REFERENCES DIM_Date(DateSK)
go


/* 
 * TABLE: FCT_Resturant_Inspection 
 */

ALTER TABLE FCT_Resturant_Inspection ADD CONSTRAINT RefDIM_Address11 
    FOREIGN KEY (AddressSK)
    REFERENCES DIM_Address(AddressSK)
go

ALTER TABLE FCT_Resturant_Inspection ADD CONSTRAINT FK_FactRestaurantInspection_DimDate 
    FOREIGN KEY (DateSK)
    REFERENCES DIM_Date(DateSK)
go

ALTER TABLE FCT_Resturant_Inspection ADD CONSTRAINT FK_FactRestaurantInspection_DimInspection 
    FOREIGN KEY (InspectionSK)
    REFERENCES DIM_Inspection(InspectionSK)
go

ALTER TABLE FCT_Resturant_Inspection ADD CONSTRAINT FK_FactRestaurantInspection_DimLicense 
    FOREIGN KEY (LicenseSK)
    REFERENCES DIM_License(LicenseSK)
go

ALTER TABLE FCT_Resturant_Inspection ADD CONSTRAINT FK_FactRestaurantInspection_DimRestaurant 
    FOREIGN KEY (RestaurantSK)
    REFERENCES DIM_Restaurant(RestaurantSK)
go


