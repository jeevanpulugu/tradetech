-- ****************** SqlDBM: Microsoft SQL Server ******************
-- ******************************************************************

--************************************** [dbo].[TaskStatuses]

CREATE TABLE [dbo].[TaskStatuses]
(
 [Status_ID]                 INT IDENTITY (1, 1) NOT NULL ,
 [Status_Name]               VARCHAR(20) NOT NULL ,
 [Status_Description]        VARCHAR(100) NOT NULL ,
 [Effective_Start]           DATETIME NOT NULL ,
 [Effective_End]             DATETIME NULL ,
 [Task_Status_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Task_Statuses] PRIMARY KEY CLUSTERED ([Status_ID] ASC)
);
GO



--************************************** [dbo].[Roles]

CREATE TABLE [dbo].[Roles]
(
 [Role_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Role_Name]          VARCHAR(20) NOT NULL ,
 [Role_Description]   VARCHAR(100) NOT NULL ,
 [Created_By]         VARCHAR(20) NOT NULL ,
 [Last_Updated]       DATETIME NOT NULL ,
 [Last_Updated_By]    VARCHAR(20) NOT NULL ,
 [isSystem]           BIT NOT NULL ,
 [Effective_Start]    DATETIME NOT NULL ,
 [Effective_End]      DATETIME NULL ,
 [Role_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_User_Roles] PRIMARY KEY CLUSTERED ([Role_ID] ASC)
);
GO



--************************************** [dbo].[QuoteTypes]

CREATE TABLE [dbo].[QuoteTypes]
(
 [Quote_Type_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Type_Name]                VARCHAR(50) NOT NULL ,
 [Description]              VARCHAR(300) NOT NULL ,
 [Effective_Start]          DATETIME NOT NULL ,
 [Effective_End]            DATETIME NULL ,
 [Quote_Type_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Quote_Types] PRIMARY KEY CLUSTERED ([Quote_Type_ID] ASC)
);
GO



--************************************** [dbo].[QuoteStatuses]

CREATE TABLE [dbo].[QuoteStatuses]
(
 [Quote_Status_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Status_Name]                VARCHAR(50) NOT NULL ,
 [Status_Description]         VARCHAR(100) NOT NULL ,
 [Effective_Start]            DATETIME NOT NULL ,
 [Effective_End]              DATETIME NULL ,
 [Quote_Status_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Quote_Statuses] PRIMARY KEY CLUSTERED ([Quote_Status_ID] ASC)
);
GO



--************************************** [dbo].[QuantityConvention]

CREATE TABLE [dbo].[QuantityConvention]
(
 [Quantity_Convention_ID]          INT IDENTITY (1, 1) NOT NULL ,
 [Quantity_Convention_Symbol]      VARCHAR(5) NOT NULL ,
 [Quantity_Convention_Description] VARCHAR(50) NULL ,
 [Quantity_Convention_Quantity]    INT NOT NULL ,
 [Effective_Start]                 DATETIME NOT NULL ,
 [Effective_End]                   DATETIME NULL ,
 [Quote_Convention_Business_Name]  VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Quantity_Convention] PRIMARY KEY CLUSTERED ([Quantity_Convention_ID] ASC)
);
GO



--************************************** [dbo].[ProductTypes]

CREATE TABLE [dbo].[ProductTypes]
(
 [Product_Type_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Product_Type_Name]          VARCHAR(50) NOT NULL ,
 [Product_Type_Description]   VARCHAR(100) NULL ,
 [Effective_Start]            DATETIME NOT NULL CONSTRAINT [DF_ProductTypes_Effective_Start] DEFAULT (getdate()) ,
 [Effective_End]              DATETIME NULL ,
 [Product_Type_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Product_Types] PRIMARY KEY CLUSTERED ([Product_Type_ID] ASC)
);
GO



--************************************** [dbo].[Permissions]

CREATE TABLE [dbo].[Permissions]
(
 [Permission_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Permission_Name]          VARCHAR(50) NOT NULL ,
 [Permission_Description]   VARCHAR(100) NOT NULL ,
 [Effective_Start]          DATETIME NOT NULL ,
 [Effective_End]            DATETIME NULL ,
 [Permission_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_All_Permissions] PRIMARY KEY CLUSTERED ([Permission_ID] ASC)
);
GO



--************************************** [dbo].[EnterPriseRoles]

CREATE TABLE [dbo].[EnterPriseRoles]
(
 [Enterprise_Role_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Enterprise_Role_Name]          VARCHAR(50) NOT NULL ,
 [Enterprise_Role_Description]   VARCHAR(100) NOT NULL ,
 [Effective_Start]               DATETIME NOT NULL ,
 [Effective_End]                 DATETIME NULL ,
 [Enterprise_Role_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_EnterPrise_Roles] PRIMARY KEY CLUSTERED ([Enterprise_Role_ID] ASC)
);
GO



--************************************** [dbo].[EmailGroups]

CREATE TABLE [dbo].[EmailGroups]
(
 [Email_Group_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Group_Name]                VARCHAR(50) NOT NULL ,
 [Group_Description]         VARCHAR(100) NULL ,
 [Created_On]                DATETIME NOT NULL ,
 [Created_By]                VARCHAR(20) NOT NULL ,
 [Last_Updated]              DATETIME NOT NULL ,
 [Last_Updated_By]           VARCHAR(20) NOT NULL ,
 [Effective_Start]           DATETIME NOT NULL CONSTRAINT [DF_EmailGroups_Effective_Start] DEFAULT ((1)) ,
 [Effective_End]             DATETIME NULL ,
 [Email_Group_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Email_Groups] PRIMARY KEY CLUSTERED ([Email_Group_ID] ASC)
);
GO



--************************************** [dbo].[Companies]

CREATE TABLE [dbo].[Companies]
(
 [Company_ID]      INT IDENTITY (1, 1) NOT NULL ,
 [Company_Name]    VARCHAR(50) NOT NULL ,
 [Address1]        VARCHAR(100) NOT NULL ,
 [Address2]        VARCHAR(100) NOT NULL ,
 [City]            VARCHAR(50) NOT NULL ,
 [State]           VARCHAR(50) NOT NULL ,
 [Country]         VARCHAR(50) NOT NULL ,
 [ZIP]             INT NOT NULL ,
 [Logo_File_Path]  VARCHAR(100) NOT NULL ,
 [Contact_Email]   VARCHAR(100) NOT NULL ,
 [Website_Address] VARCHAR(100) NOT NULL ,
 [Phone]           INT NOT NULL ,
 [Fax]             INT NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,

 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED ([Company_ID] ASC)
);
GO



--************************************** [dbo].[Calendar_Types]

CREATE TABLE [dbo].[Calendar_Types]
(
 [Calendar_Type_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Type]                        VARCHAR(50) NOT NULL ,
 [Description]                 VARCHAR(200) NOT NULL ,
 [Effective_Start]             DATETIME NOT NULL ,
 [Effective_End]               DATETIME NULL ,
 [Calendar_Type_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Calendar_Types] PRIMARY KEY CLUSTERED ([Calendar_Type_ID] ASC)
);
GO



--************************************** [dbo].[EnterPriseRolePermissions]

CREATE TABLE [dbo].[EnterPriseRolePermissions]
(
 [ID]                 NUMERIC IDENTITY (1, 1) NOT NULL ,
 [Enterprise_Role_ID] INT NOT NULL ,
 [Permission_ID]      INT NOT NULL ,
 [Effective_Start]    DATETIME NOT NULL ,
 [Effective_End]      DATETIME NULL ,

 CONSTRAINT [PK_EnterPriseRolePermissions] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_586] FOREIGN KEY ([Enterprise_Role_ID])
  REFERENCES [dbo].[EnterPriseRoles]([Enterprise_Role_ID]),
 CONSTRAINT [FK_590] FOREIGN KEY ([Permission_ID])
  REFERENCES [dbo].[Permissions]([Permission_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_586] ON [dbo].[EnterPriseRolePermissions] 
 (
  [Enterprise_Role_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_590] ON [dbo].[EnterPriseRolePermissions] 
 (
  [Permission_ID] ASC
 )

GO


--************************************** [dbo].[USERS]

CREATE TABLE [dbo].[USERS]
(
 [User_ID]         INT IDENTITY (1, 1) NOT NULL ,
 [First_Name]      NVARCHAR(40) NOT NULL ,
 [Last_Name]       NVARCHAR(20) NOT NULL ,
 [User_Name]       NVARCHAR(20) NOT NULL ,
 [Password_Hash]   BINARY NOT NULL ,
 [Address1]        NVARCHAR(200) NULL ,
 [Address2]        NVARCHAR(200) NULL ,
 [City]            NVARCHAR(20) NULL ,
 [State]           NVARCHAR(20) NULL ,
 [Zip]             INT NULL ,
 [Phone]           INT NULL ,
 [Fax]             INT NULL ,
 [Email]           NVARCHAR(100) NULL ,
 [create_on]       DATETIME NOT NULL ,
 [created_by]      NVARCHAR(20) NOT NULL ,
 [last_updated]    DATETIME NOT NULL ,
 [last_updated_by] NVARCHAR(20) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL CONSTRAINT [DF_USERS_Effective_Start] DEFAULT ((1)) ,
 [Effective_End]   DATETIME NULL ,
 [Company_ID]      INT NOT NULL ,

 CONSTRAINT [PK_All_Users] PRIMARY KEY CLUSTERED ([User_ID] ASC),
 CONSTRAINT [UQ__USERS__681E8A60D2308CFE] UNIQUE NONCLUSTERED ([User_Name] ASC),
 CONSTRAINT [UQ__USERS__A9D10534E457AB22] UNIQUE NONCLUSTERED ([Email] ASC),
 CONSTRAINT [FK_609] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_609] ON [dbo].[USERS] 
 (
  [Company_ID] ASC
 )

GO


--************************************** [dbo].[SystemModules]

CREATE TABLE [dbo].[SystemModules]
(
 [Module_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Module_Name]          VARCHAR(20) NOT NULL ,
 [Module_Description]   VARCHAR(100) NOT NULL ,
 [Effective_Start]      DATETIME NOT NULL ,
 [Effective_End]        DATETIME NULL ,
 [Permission_ID]        INT NOT NULL ,
 [Module_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_SystemModules] PRIMARY KEY CLUSTERED ([Module_ID] ASC),
 CONSTRAINT [FK_System_Module_Permission] FOREIGN KEY ([Permission_ID])
  REFERENCES [dbo].[Permissions]([Permission_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_System_Module_Permission] ON [dbo].[SystemModules] 
 (
  [Permission_ID] ASC
 )

GO


--************************************** [dbo].[RolePermissions]

CREATE TABLE [dbo].[RolePermissions]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [Role_ID]         INT NOT NULL ,
 [Permission_ID]   INT NOT NULL ,

 CONSTRAINT [PK_RolePermissions] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Permission_For_Role] FOREIGN KEY ([Role_ID])
  REFERENCES [dbo].[Roles]([Role_ID]),
 CONSTRAINT [FK_Role_Permission] FOREIGN KEY ([Permission_ID])
  REFERENCES [dbo].[Permissions]([Permission_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Permission_For_Role] ON [dbo].[RolePermissions] 
 (
  [Role_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Role_Permission] ON [dbo].[RolePermissions] 
 (
  [Permission_ID] ASC
 )

GO


--************************************** [dbo].[Products]

CREATE TABLE [dbo].[Products]
(
 [Product_ID]             INT IDENTITY (1, 1) NOT NULL ,
 [Product_Name]           VARCHAR(50) NOT NULL ,
 [Product_Description]    VARCHAR(100) NULL ,
 [Product_Code]           VARCHAR(50) NOT NULL ,
 [Product_UPC]            VARCHAR(50) NOT NULL ,
 [Product_Price]          DECIMAL(18,2) NOT NULL ,
 [Effective_Start]        DATETIME NOT NULL ,
 [Effective_End]          DATETIME NULL ,
 [Manufacturer_ID]        INT NOT NULL ,
 [Product_Type_ID]        INT NOT NULL ,
 [Quantity_Convention_ID] INT NOT NULL ,
 [Product_Business_Name]  VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Product_ID] ASC),
 CONSTRAINT [FK_Poduct_Manufacturer] FOREIGN KEY ([Manufacturer_ID])
  REFERENCES [dbo].[Companies]([Company_ID]),
 CONSTRAINT [FK_Product_Quantity_Convention] FOREIGN KEY ([Quantity_Convention_ID])
  REFERENCES [dbo].[QuantityConvention]([Quantity_Convention_ID]),
 CONSTRAINT [FK_Product_Type] FOREIGN KEY ([Product_Type_ID])
  REFERENCES [dbo].[ProductTypes]([Product_Type_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Poduct_Manufacturer] ON [dbo].[Products] 
 (
  [Manufacturer_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Product_Quantity_Convention] ON [dbo].[Products] 
 (
  [Quantity_Convention_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Product_Type] ON [dbo].[Products] 
 (
  [Product_Type_ID] ASC
 )

GO


--************************************** [dbo].[DiscountTypes]

CREATE TABLE [dbo].[DiscountTypes]
(
 [Discount_ID]            INT IDENTITY (1, 1) NOT NULL ,
 [Discount_Label]         VARCHAR(50) NOT NULL ,
 [Discount_Description]   VARCHAR(100) NULL ,
 [Effective_Start]        DATETIME NOT NULL CONSTRAINT [DF_DiscountTypes_Effective_Start] DEFAULT (getdate()) ,
 [Effective_End]          DATETIME NULL ,
 [Company_ID]             INT NOT NULL ,
 [Discount_Business_Name] VARCHAR(50) NOT NULL ,

 CONSTRAINT [PK_DiscountTypes] PRIMARY KEY CLUSTERED ([Discount_ID] ASC),
 CONSTRAINT [FK_Discount_CreatedFor] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Discount_CreatedFor] ON [dbo].[DiscountTypes] 
 (
  [Company_ID] ASC
 )

GO


--************************************** [dbo].[CompanyEnterpriseRoles]

CREATE TABLE [dbo].[CompanyEnterpriseRoles]
(
 [ID]                 INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start]    DATETIME NOT NULL ,
 [Effective_End]      DATETIME NULL ,
 [Company_ID]         INT NOT NULL ,
 [Enterprise_Role_ID] INT NOT NULL ,

 CONSTRAINT [PK_CompanyEnterpriseRoles] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Company_EnterPice_Role] FOREIGN KEY ([Enterprise_Role_ID])
  REFERENCES [dbo].[EnterPriseRoles]([Enterprise_Role_ID]),
 CONSTRAINT [FK_EnterPrise_Role_For] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Company_EnterPice_Role] ON [dbo].[CompanyEnterpriseRoles] 
 (
  [Enterprise_Role_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_EnterPrise_Role_For] ON [dbo].[CompanyEnterpriseRoles] 
 (
  [Company_ID] ASC
 )

GO


--************************************** [dbo].[UserRoles]

CREATE TABLE [dbo].[UserRoles]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NOT NULL ,
 [User_ID]         INT NOT NULL ,
 [Role_ID]         INT NOT NULL ,

 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_User_Role] FOREIGN KEY ([Role_ID])
  REFERENCES [dbo].[Roles]([Role_ID]),
 CONSTRAINT [FK_User_Role_For] FOREIGN KEY ([User_ID])
  REFERENCES [dbo].[USERS]([User_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_User_Role] ON [dbo].[UserRoles] 
 (
  [Role_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_User_Role_For] ON [dbo].[UserRoles] 
 (
  [User_ID] ASC
 )

GO


--************************************** [dbo].[UserPermissions]

CREATE TABLE [dbo].[UserPermissions]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [User_ID]         INT NOT NULL ,
 [Permission_ID]   INT NOT NULL ,

 CONSTRAINT [PK_UserPermissions] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_User_Permission] FOREIGN KEY ([Permission_ID])
  REFERENCES [dbo].[Permissions]([Permission_ID]),
 CONSTRAINT [FK_User_Permission_For] FOREIGN KEY ([User_ID])
  REFERENCES [dbo].[USERS]([User_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_User_Permission] ON [dbo].[UserPermissions] 
 (
  [Permission_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_User_Permission_For] ON [dbo].[UserPermissions] 
 (
  [User_ID] ASC
 )

GO


--************************************** [dbo].[UserEmailGroups]

CREATE TABLE [dbo].[UserEmailGroups]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [User_ID]         INT NOT NULL ,
 [Email_Group_ID]  INT NOT NULL ,

 CONSTRAINT [PK_UserEmailGroups] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_User_Email_Group] FOREIGN KEY ([Email_Group_ID])
  REFERENCES [dbo].[EmailGroups]([Email_Group_ID]),
 CONSTRAINT [FK_User_Email_Group_For] FOREIGN KEY ([User_ID])
  REFERENCES [dbo].[USERS]([User_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_User_Email_Group] ON [dbo].[UserEmailGroups] 
 (
  [Email_Group_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_User_Email_Group_For] ON [dbo].[UserEmailGroups] 
 (
  [User_ID] ASC
 )

GO


--************************************** [dbo].[ManufacturerReps]

CREATE TABLE [dbo].[ManufacturerReps]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [User_ID]         INT NOT NULL ,
 [Company_ID]      INT NOT NULL ,

 CONSTRAINT [PK_UserCompanies] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_User_Company] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID]),
 CONSTRAINT [FK_User_Company_For] FOREIGN KEY ([User_ID])
  REFERENCES [dbo].[USERS]([User_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_User_Company] ON [dbo].[ManufacturerReps] 
 (
  [Company_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_User_Company_For] ON [dbo].[ManufacturerReps] 
 (
  [User_ID] ASC
 )

GO


--************************************** [dbo].[SalesTasks]

CREATE TABLE [dbo].[SalesTasks]
(
 [Sale_Task_ID]    INT IDENTITY (1, 1) NOT NULL ,
 [TaskTitle]       VARCHAR(200) NOT NULL ,
 [TaskDescription] VARCHAR(2000) NOT NULL ,
 [DueDate]         DATETIME NOT NULL ,
 [CreatedBy]       INT NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [isGroupAction]   BIT NOT NULL ,
 [Effective_End]   DATETIME NULL ,

 CONSTRAINT [PK_SalesTasks] PRIMARY KEY CLUSTERED ([Sale_Task_ID] ASC),
 CONSTRAINT [FK_Sales_Task_CrreatedBy] FOREIGN KEY ([CreatedBy])
  REFERENCES [dbo].[USERS]([User_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_CrreatedBy] ON [dbo].[SalesTasks] 
 (
  [CreatedBy] ASC
 )

GO


--************************************** [dbo].[Quotes]

CREATE TABLE [dbo].[Quotes]
(
 [Quote_ID]        INT IDENTITY (1, 1) NOT NULL ,
 [Last_Updated]    DATETIME NOT NULL ,
 [Last_Updated_By] INT NOT NULL ,
 [Quote_Status_ID] INT NOT NULL ,

 CONSTRAINT [PK_Quotes] PRIMARY KEY CLUSTERED ([Quote_ID] ASC),
 CONSTRAINT [FK_Quote_Last_UpdatedBy] FOREIGN KEY ([Last_Updated_By])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_Quote_Status] FOREIGN KEY ([Quote_Status_ID])
  REFERENCES [dbo].[QuoteStatuses]([Quote_Status_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Quote_Last_UpdatedBy] ON [dbo].[Quotes] 
 (
  [Last_Updated_By] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Status] ON [dbo].[Quotes] 
 (
  [Quote_Status_ID] ASC
 )

GO


--************************************** [dbo].[CompanyCalendar]

CREATE TABLE [dbo].[CompanyCalendar]
(
 [Calendar_ID]       INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start]   DATETIME NOT NULL ,
 [Effective_End]     DATETIME NULL ,
 [Due_Date]          DATETIME NOT NULL ,
 [Event_Name]        VARCHAR(50) NOT NULL ,
 [Event_Description] VARCHAR(200) NULL ,
 [Start_Time]        TIME NULL ,
 [End_Time]          TIME NULL ,
 [Event_Color]       VARCHAR(10) NOT NULL CONSTRAINT [DF_CompanyCalendar_Event_Color] DEFAULT ('#FFFF00') ,
 [Calendar_Type_ID]  INT NOT NULL ,
 [Created_By]        INT NOT NULL ,
 [Company_ID]        INT NOT NULL ,

 CONSTRAINT [PK_Company_Calendar] PRIMARY KEY CLUSTERED ([Calendar_ID] ASC),
 CONSTRAINT [FK_Calendar_CreatedBy] FOREIGN KEY ([Created_By])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_Calendar_CreatedFor] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID]),
 CONSTRAINT [FK_Calendar_Type] FOREIGN KEY ([Calendar_Type_ID])
  REFERENCES [dbo].[Calendar_Types]([Calendar_Type_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Calendar_CreatedBy] ON [dbo].[CompanyCalendar] 
 (
  [Created_By] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Calendar_CreatedFor] ON [dbo].[CompanyCalendar] 
 (
  [Company_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Calendar_Type] ON [dbo].[CompanyCalendar] 
 (
  [Calendar_Type_ID] ASC
 )

GO


--************************************** [dbo].[Company_Products]

CREATE TABLE [dbo].[Company_Products]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [Company_ID]      INT NOT NULL ,
 [Product_ID]      INT NOT NULL ,
 [Discount_ID]     INT NOT NULL ,

 CONSTRAINT [PK_Company_Products] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Company_Products_Assigned_For_Company] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID]),
 CONSTRAINT [FK_Company_Products_Assigned_Product] FOREIGN KEY ([Product_ID])
  REFERENCES [dbo].[Products]([Product_ID]),
 CONSTRAINT [FK_Company_Products_Discount] FOREIGN KEY ([Discount_ID])
  REFERENCES [dbo].[DiscountTypes]([Discount_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Company_Products_Assigned_For_Company] ON [dbo].[Company_Products] 
 (
  [Company_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Company_Products_Assigned_Product] ON [dbo].[Company_Products] 
 (
  [Product_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Company_Products_Discount] ON [dbo].[Company_Products] 
 (
  [Discount_ID] ASC
 )

GO


--************************************** [dbo].[SalesTasksForCompanies]

CREATE TABLE [dbo].[SalesTasksForCompanies]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Sale_Task_ID]    INT NOT NULL ,
 [Company_ID]      INT NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [Manufacturer_ID] INT NOT NULL ,

 CONSTRAINT [PK_SalesTasksForCompanies] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Company_Sales_Task] FOREIGN KEY ([Sale_Task_ID])
  REFERENCES [dbo].[SalesTasks]([Sale_Task_ID]),
 CONSTRAINT [FK_Sales_Task_For] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID]),
 CONSTRAINT [FK_Sales_Task_Manufacturer] FOREIGN KEY ([Manufacturer_ID])
  REFERENCES [dbo].[Companies]([Company_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Company_Sales_Task] ON [dbo].[SalesTasksForCompanies] 
 (
  [Sale_Task_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_For] ON [dbo].[SalesTasksForCompanies] 
 (
  [Company_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_Manufacturer] ON [dbo].[SalesTasksForCompanies] 
 (
  [Manufacturer_ID] ASC
 )

GO


--************************************** [dbo].[QuoteTasks]

CREATE TABLE [dbo].[QuoteTasks]
(
 [Quote_Task_ID]   INT IDENTITY (1, 1) NOT NULL ,
 [TaskTitle]       VARCHAR(200) NOT NULL ,
 [TaskDescription] VARCHAR(2000) NOT NULL ,
 [DueDate]         DATETIME NOT NULL ,
 [CreatedBy]       INT NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Quote_ID]        INT NOT NULL ,
 [Effective_End]   DATETIME NULL ,

 CONSTRAINT [PK_QuoteTasks] PRIMARY KEY CLUSTERED ([Quote_Task_ID] ASC),
 CONSTRAINT [FK_Quote_Task_CreatedBy] FOREIGN KEY ([CreatedBy])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_Quote_Task_QuoteID] FOREIGN KEY ([Quote_ID])
  REFERENCES [dbo].[Quotes]([Quote_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Quote_Task_CreatedBy] ON [dbo].[QuoteTasks] 
 (
  [CreatedBy] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Task_QuoteID] ON [dbo].[QuoteTasks] 
 (
  [Quote_ID] ASC
 )

GO


--************************************** [dbo].[QuoteRevisions]

CREATE TABLE [dbo].[QuoteRevisions]
(
 [Quote_Revision_ID] INT IDENTITY (1, 1) NOT NULL ,
 [Notes]             VARCHAR(300) NOT NULL ,
 [Quote_Name]        VARCHAR(50) NOT NULL ,
 [Quote_Date]        DATETIME NOT NULL ,
 [Created_By]        INT NOT NULL ,
 [Quote_Type_ID]     INT NOT NULL ,
 [Quote_ID]          INT NOT NULL ,

 CONSTRAINT [PK_QuoteRevisionHistory] PRIMARY KEY NONCLUSTERED ([Quote_Revision_ID] ASC),
 CONSTRAINT [FK_Quote_Revision_CreatedBy] FOREIGN KEY ([Created_By])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_Quote_Revision_For_Quote] FOREIGN KEY ([Quote_ID])
  REFERENCES [dbo].[Quotes]([Quote_ID]),
 CONSTRAINT [FK_Quote_Revision_Quote_Type] FOREIGN KEY ([Quote_Type_ID])
  REFERENCES [dbo].[QuoteTypes]([Quote_Type_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Quote_Revision_CreatedBy] ON [dbo].[QuoteRevisions] 
 (
  [Created_By] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Revision_For_Quote] ON [dbo].[QuoteRevisions] 
 (
  [Quote_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Revision_Quote_Type] ON [dbo].[QuoteRevisions] 
 (
  [Quote_Type_ID] ASC
 )

GO


--************************************** [dbo].[QuoteGeneratedFor]

CREATE TABLE [dbo].[QuoteGeneratedFor]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Company_ID]      INT NOT NULL ,
 [haveSeen]        BIT NOT NULL CONSTRAINT [DF_QuoteGeneratedFor_haveSeen] DEFAULT ((0)) ,
 [Quote_ID]        INT NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,

 CONSTRAINT [PK_QuoteGeneratedFor] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Quote_Generated_QuoteID] FOREIGN KEY ([Quote_ID])
  REFERENCES [dbo].[Quotes]([Quote_ID]),
 CONSTRAINT [FK_Quote_GeneratedFor_Company] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Quote_Generated_QuoteID] ON [dbo].[QuoteGeneratedFor] 
 (
  [Quote_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_GeneratedFor_Company] ON [dbo].[QuoteGeneratedFor] 
 (
  [Company_ID] ASC
 )

GO


--************************************** [dbo].[SalesTaskAssignmentsToUsers]

CREATE TABLE [dbo].[SalesTaskAssignmentsToUsers]
(
 [Assignment_ID]      INT IDENTITY (1, 1) NOT NULL ,
 [Assigned_User]      INT NOT NULL ,
 [Assigned_By]        INT NOT NULL ,
 [Assigned_On]        DATETIME NOT NULL ,
 [Comments]           VARCHAR(2000) NOT NULL ,
 [Task_Status]        INT NOT NULL ,
 [Company_Sales_Task] INT NOT NULL ,

 CONSTRAINT [PK_SaleTaskAssignments] PRIMARY KEY CLUSTERED ([Assignment_ID] ASC),
 CONSTRAINT [FK_Sales_Task_Assigned_By] FOREIGN KEY ([Assigned_By])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_Sales_Task_Assigned_For] FOREIGN KEY ([Assigned_User])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_Sales_Task_Assigned_For_Company] FOREIGN KEY ([Company_Sales_Task])
  REFERENCES [dbo].[SalesTasksForCompanies]([ID]),
 CONSTRAINT [FK_Sales_Task_Status] FOREIGN KEY ([Task_Status])
  REFERENCES [dbo].[TaskStatuses]([Status_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_Assigned_By] ON [dbo].[SalesTaskAssignmentsToUsers] 
 (
  [Assigned_By] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_Assigned_For] ON [dbo].[SalesTaskAssignmentsToUsers] 
 (
  [Assigned_User] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_Assigned_For_Company] ON [dbo].[SalesTaskAssignmentsToUsers] 
 (
  [Company_Sales_Task] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Sales_Task_Status] ON [dbo].[SalesTaskAssignmentsToUsers] 
 (
  [Task_Status] ASC
 )

GO


--************************************** [dbo].[QuotesTasksForCompanies]

CREATE TABLE [dbo].[QuotesTasksForCompanies]
(
 [ID]              INT IDENTITY (1, 1) NOT NULL ,
 [Quote_Task_ID]   INT NOT NULL ,
 [Company_ID]      INT NOT NULL ,
 [Effective_Start] DATETIME NOT NULL ,
 [Effective_End]   DATETIME NULL ,
 [Manufacturer_ID] INT NOT NULL ,

 CONSTRAINT [PK_QuotesTasksForCompanies] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Company_Quote_Task] FOREIGN KEY ([Quote_Task_ID])
  REFERENCES [dbo].[QuoteTasks]([Quote_Task_ID]),
 CONSTRAINT [FK_Quote_Tasks_Assigned_For_Company] FOREIGN KEY ([Company_ID])
  REFERENCES [dbo].[Companies]([Company_ID]),
 CONSTRAINT [FK_Quote_Tasks_Manufacturer] FOREIGN KEY ([Manufacturer_ID])
  REFERENCES [dbo].[Companies]([Company_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Company_Quote_Task] ON [dbo].[QuotesTasksForCompanies] 
 (
  [Quote_Task_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Tasks_Assigned_For_Company] ON [dbo].[QuotesTasksForCompanies] 
 (
  [Company_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Tasks_Manufacturer] ON [dbo].[QuotesTasksForCompanies] 
 (
  [Manufacturer_ID] ASC
 )

GO


--************************************** [dbo].[QuoteProducts]

CREATE TABLE [dbo].[QuoteProducts]
(
 [ID]                 INT IDENTITY (1, 1) NOT NULL ,
 [Quantity]           INT NOT NULL ,
 [Price]              DECIMAL(18,2) NOT NULL ,
 [Company_Product_ID] INT NOT NULL ,
 [Quote_Revision_ID]  INT NOT NULL ,

 CONSTRAINT [PK_QuoteProducts] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_Quote_Product] FOREIGN KEY ([Company_Product_ID])
  REFERENCES [dbo].[Company_Products]([ID]),
 CONSTRAINT [FK_Quote_Product_Quote_RevisionID] FOREIGN KEY ([Quote_Revision_ID])
  REFERENCES [dbo].[QuoteRevisions]([Quote_Revision_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_Quote_Product] ON [dbo].[QuoteProducts] 
 (
  [Company_Product_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_Quote_Product_Quote_RevisionID] ON [dbo].[QuoteProducts] 
 (
  [Quote_Revision_ID] ASC
 )

GO


--************************************** [dbo].[SalesTaskAuditTrails]

CREATE TABLE [dbo].[SalesTaskAuditTrails]
(
 [ID]                   INT IDENTITY (1, 1) NOT NULL ,
 [Task_Assignment_ID]   INT NOT NULL ,
 [Task_Status]          INT NOT NULL ,
 [Activity_Date]        DATETIME NOT NULL ,
 [ActivityBy]           INT NOT NULL ,
 [Activity_Description] VARCHAR(500) NOT NULL ,

 CONSTRAINT [PK_SalesTaskAuditTrails] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_SalesTaskAuditTrails_Activity_By] FOREIGN KEY ([ActivityBy])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_SalesTaskAuditTrails_Assigned_User] FOREIGN KEY ([Task_Assignment_ID])
  REFERENCES [dbo].[SalesTaskAssignmentsToUsers]([Assignment_ID]),
 CONSTRAINT [FK_SalesTaskAuditTrails_Task_Status] FOREIGN KEY ([Task_Status])
  REFERENCES [dbo].[TaskStatuses]([Status_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_SalesTaskAuditTrails_Activity_By] ON [dbo].[SalesTaskAuditTrails] 
 (
  [ActivityBy] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_SalesTaskAuditTrails_Assigned_User] ON [dbo].[SalesTaskAuditTrails] 
 (
  [Task_Assignment_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_SalesTaskAuditTrails_Task_Status] ON [dbo].[SalesTaskAuditTrails] 
 (
  [Task_Status] ASC
 )

GO


--************************************** [dbo].[QuoteTaskAssignmentsToUsers]

CREATE TABLE [dbo].[QuoteTaskAssignmentsToUsers]
(
 [Assignment_ID]      INT IDENTITY (1, 1) NOT NULL ,
 [Assigned_User]      INT NOT NULL ,
 [Assigned_By]        INT NOT NULL ,
 [Assigned_On]        DATETIME NOT NULL ,
 [Comments]           VARCHAR(2000) NOT NULL ,
 [Task_Status]        INT NOT NULL ,
 [Company_Quote_Task] INT NOT NULL ,

 CONSTRAINT [PK_QuoteTaskAssignments] PRIMARY KEY CLUSTERED ([Assignment_ID] ASC),
 CONSTRAINT [FK_QuoteTaskAssignmentsToUsers_AssignedBy] FOREIGN KEY ([Assigned_By])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_QuoteTaskAssignmentsToUsers_Task] FOREIGN KEY ([Company_Quote_Task])
  REFERENCES [dbo].[QuotesTasksForCompanies]([ID]),
 CONSTRAINT [FK_QuoteTaskAssignmentsToUsers_Task_Status] FOREIGN KEY ([Task_Status])
  REFERENCES [dbo].[TaskStatuses]([Status_ID]),
 CONSTRAINT [FK_QuoteTaskAssignmentsToUsers_User] FOREIGN KEY ([Assigned_User])
  REFERENCES [dbo].[USERS]([User_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAssignmentsToUsers_AssignedBy] ON [dbo].[QuoteTaskAssignmentsToUsers] 
 (
  [Assigned_By] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAssignmentsToUsers_Task] ON [dbo].[QuoteTaskAssignmentsToUsers] 
 (
  [Company_Quote_Task] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAssignmentsToUsers_Task_Status] ON [dbo].[QuoteTaskAssignmentsToUsers] 
 (
  [Task_Status] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAssignmentsToUsers_User] ON [dbo].[QuoteTaskAssignmentsToUsers] 
 (
  [Assigned_User] ASC
 )

GO


--************************************** [dbo].[QuoteTaskAuditTrails]

CREATE TABLE [dbo].[QuoteTaskAuditTrails]
(
 [ID]                   INT IDENTITY (1, 1) NOT NULL ,
 [Task_Assignment_ID]   INT NOT NULL ,
 [Task_Status]          INT NOT NULL ,
 [Activity_Date]        DATETIME NOT NULL ,
 [ActivityBy]           INT NOT NULL ,
 [Activity_Description] VARCHAR(500) NOT NULL ,

 CONSTRAINT [PK_QuoteTaskAuditTrails] PRIMARY KEY CLUSTERED ([ID] ASC),
 CONSTRAINT [FK_QuoteTaskAuditTrails_ActivityBy] FOREIGN KEY ([ActivityBy])
  REFERENCES [dbo].[USERS]([User_ID]),
 CONSTRAINT [FK_QuoteTaskAuditTrails_Task_Assignment_ID] FOREIGN KEY ([Task_Assignment_ID])
  REFERENCES [dbo].[QuoteTaskAssignmentsToUsers]([Assignment_ID]),
 CONSTRAINT [FK_QuoteTaskAuditTrails_Task_Status] FOREIGN KEY ([Task_Status])
  REFERENCES [dbo].[TaskStatuses]([Status_ID])
);
GO


CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAuditTrails_ActivityBy] ON [dbo].[QuoteTaskAuditTrails] 
 (
  [ActivityBy] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAuditTrails_Task_Assignment_ID] ON [dbo].[QuoteTaskAuditTrails] 
 (
  [Task_Assignment_ID] ASC
 )

GO

CREATE NONCLUSTERED INDEX [fkIdx_QuoteTaskAuditTrails_Task_Status] ON [dbo].[QuoteTaskAuditTrails] 
 (
  [Task_Status] ASC
 )

GO


