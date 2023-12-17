/****** Object:  Database [VIRTUALEO]    Script Date: 12/10/2023 15:35:51 ******/
-- CREATE DATABASE [VIRTUALEO]  (EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;

--CREATE DATABASE [for-virtualeo-testing-name4] 
--(EDITION = 'Basic', SERVICE_OBJECTIVE = 'Basic', MAXSIZE = 2 GB) 
--WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;

GO
ALTER DATABASE [for-virtualeo-testing-name4] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ANSI_NULLS ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ANSI_PADDING ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ARITHABORT ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET  MULTI_USER 
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET ENCRYPTION ON
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET QUERY_STORE = ON
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = ALL, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  UserDefinedTableType [dbo].[ClassroomConfigurationDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[ClassroomConfigurationDataType] AS TABLE(
	[M365GroupName] [nvarchar](255) NOT NULL,
	[RgIndex] [int] NOT NULL,
	[RgName] [nvarchar](255) NOT NULL,
	[RgDeploymentUrl] [nvarchar](max) NOT NULL,
	[RgTemplateLink] [nvarchar](max) NOT NULL,
	[RgOperationUrl] [nvarchar](max) NULL,
	[BastionDeploymentUrl] [nvarchar](max) NOT NULL,
	[BastionTemplateLink] [nvarchar](max) NOT NULL,
	[BastionOperationUrl] [nvarchar](max) NULL,
	[MeetingUrl] [nvarchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ClassroomDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[ClassroomDataType] AS TABLE(
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[InstructorId] [nvarchar](255) NOT NULL,
	[VmImageId] [int] NULL,
	[VmSizeId] [int] NULL,
	[ClassroomTypeId] [int] NOT NULL,
	[VmPackId] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ClassroomScheduleDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[ClassroomScheduleDataType] AS TABLE(
	[TimeZone] [nvarchar](100) NOT NULL,
	[StartDay] [date] NOT NULL,
	[EndDay] [date] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Monday] [bit] NOT NULL,
	[Tuesday] [bit] NOT NULL,
	[Wednesday] [bit] NOT NULL,
	[Thursday] [bit] NOT NULL,
	[Friday] [bit] NOT NULL,
	[Saturday] [bit] NOT NULL,
	[Sunday] [bit] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[ClassroomStudentDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[ClassroomStudentDataType] AS TABLE(
	[StudentId] [nvarchar](255) NOT NULL,
	[StudentIndex] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[DepartmentDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[DepartmentDataType] AS TABLE(
	[Name] [nvarchar](255) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[DepartmentParentId] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[DepartmentRoleDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[DepartmentRoleDataType] AS TABLE(
	[UserId] [nvarchar](255) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[RoleId] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[DepartmentType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[DepartmentType] AS TABLE(
	[Id] [int] NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[DepartmentParentId] [int] NULL,
	[Name] [nvarchar](255) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[IdsList]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[IdsList] AS TABLE(
	[Id] [int] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[OrganizationDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[OrganizationDataType] AS TABLE(
	[Name] [nvarchar](255) NOT NULL,
	[BillingCode] [nvarchar](255) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[TaskStatusDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[TaskStatusDataType] AS TABLE(
	[Name] [varchar](255) NOT NULL,
	[InstanceId] [varchar](255) NOT NULL,
	[ExecutionId] [varchar](255) NOT NULL,
	[Status] [varchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[Input] [nvarchar](max) NULL,
	[FailureMessage] [nvarchar](4000) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UserDepartmentRoleType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[UserDepartmentRoleType] AS TABLE(
	[Id] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [nvarchar](255) NOT NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[UserDepartmentsDataType]    Script Date: 12/10/2023 15:35:51 ******/
CREATE TYPE [dbo].[UserDepartmentsDataType] AS TABLE(
	[DepartmentId] [int] NOT NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fn_diagramobjects]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
	
GO
/****** Object:  Table [dbo].[__RefactorLog]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__RefactorLog](
	[OperationKey] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OperationKey] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AsynchronousTask]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsynchronousTask](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NULL,
	[GroupName] [nvarchar](255) NOT NULL,
	[Order] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Url] [nvarchar](max) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[DeletedBy] [nvarchar](255) NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_AsynchronousTask] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classroom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[InstructorId] [nvarchar](255) NOT NULL,
	[VmImageId] [int] NULL,
	[VmSizeId] [int] NULL,
	[ClassroomTypeId] [int] NOT NULL,
	[Active] [bit] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime] NULL,
	[DeletedBy] [nvarchar](255) NULL,
	[DeletedOn] [datetime] NULL,
	[DepartmentId] [int] NOT NULL,
	[VmPackId] [int] NULL,
 CONSTRAINT [PK_Classroom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassroomConfiguration]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassroomConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassroomId] [int] NOT NULL,
	[M365GroupName] [nvarchar](255) NOT NULL,
	[RgIndex] [int] NOT NULL,
	[RgName] [nvarchar](255) NOT NULL,
	[RgDeploymentUrl] [nvarchar](max) NOT NULL,
	[RgTemplateLink] [nvarchar](max) NOT NULL,
	[RgOperationUrl] [nvarchar](max) NULL,
	[BastionDeploymentUrl] [nvarchar](max) NOT NULL,
	[BastionTemplateLink] [nvarchar](max) NOT NULL,
	[BastionOperationUrl] [nvarchar](max) NULL,
	[MeetingUrl] [nvarchar](max) NULL,
	[MeetingId] [uniqueidentifier] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ClassroomConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [AK_ClassroomConfiguration_ClassroomId] UNIQUE NONCLUSTERED 
(
	[ClassroomId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassroomSchedule]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassroomSchedule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassroomId] [int] NOT NULL,
	[TimeZone] [nvarchar](100) NOT NULL,
	[StartDay] [date] NOT NULL,
	[EndDay] [date] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Monday] [bit] NOT NULL,
	[Tuesday] [bit] NOT NULL,
	[Wednesday] [bit] NOT NULL,
	[Thursday] [bit] NOT NULL,
	[Friday] [bit] NOT NULL,
	[Saturday] [bit] NOT NULL,
	[Sunday] [bit] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ClassroomSchedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [AK_ClassroomSchedule_ClassroomId] UNIQUE NONCLUSTERED 
(
	[ClassroomId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassroomStudent]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassroomStudent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassroomId] [int] NOT NULL,
	[StudentId] [nvarchar](255) NOT NULL,
	[StudentIndex] [int] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ClassroomStudent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [AK_ClassroomStudent_ClassroomId_StudentId] UNIQUE NONCLUSTERED 
(
	[ClassroomId] ASC,
	[StudentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassroomType]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassroomType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](3) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_ClassroomType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_ClassroomType] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassroomVMStatus]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassroomVMStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassroomId] [int] NOT NULL,
	[VMName] [nvarchar](255) NOT NULL,
	[TargetEmail] [nvarchar](255) NULL,
	[DateStart] [datetime] NOT NULL,
	[DateEnd] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ClassroomVMStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClassroomVmTools]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassroomVmTools](
	[ClassroomId] [int] NOT NULL,
	[VmToolVersionId] [int] NOT NULL,
 CONSTRAINT [PK_ClassroomVmTools] PRIMARY KEY CLUSTERED 
(
	[ClassroomId] ASC,
	[VmToolVersionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[DepartmentParentId] [int] NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organization]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[BillingCode] [nvarchar](255) NOT NULL,
	[ParentId] [int] NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationSubscription]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationSubscription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[SubscriptionId] [int] NOT NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[Deleted] [bit] NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[Sku] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[NumberOfHours] [int] NOT NULL,
	[Reduction] [float] NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime2](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED 
(
	[principal_id] ASC,
	[name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatus]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[InstanceId] [nvarchar](255) NOT NULL,
	[ExecutionId] [nvarchar](255) NOT NULL,
	[Status] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[Input] [nvarchar](max) NULL,
	[FailureMessage] [nvarchar](4000) NULL,
 CONSTRAINT [PK_TaskStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDepartmentRole]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDepartmentRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](255) NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_UserDepartmentRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOrganizationRole]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOrganizationRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserId] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](255) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[UpdatedBy] [nvarchar](255) NULL,
	[UpdatedOn] [datetime2](7) NULL,
	[DeletedBy] [nvarchar](255) NULL,
	[DeletedOn] [datetime] NULL,
 CONSTRAINT [PK_UserOrganizationtRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMImage]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMImage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[Publisher] [nvarchar](255) NOT NULL,
	[Offer] [nvarchar](255) NOT NULL,
	[Sku] [nvarchar](255) NOT NULL,
	[Version] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_VMImage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMPack]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMPack](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[IsAvailable] [bit] NOT NULL,
	[Sku] [nvarchar](255) NOT NULL,
	[Version] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMSize]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMSize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Sku] [nvarchar](255) NOT NULL,
	[StdPrice] [float] NULL,
 CONSTRAINT [PK_VMSize] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMTool]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMTool](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[Sku] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_VMTools] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VMToolVersion]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMToolVersion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](255) NOT NULL,
	[Sku] [nvarchar](255) NOT NULL,
	[VmToolId] [int] NULL,
 CONSTRAINT [PK_VMToolsVersion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [UQ_ClassroomConfiguration_ClassroomId]    Script Date: 12/10/2023 15:35:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_ClassroomConfiguration_ClassroomId] ON [dbo].[ClassroomConfiguration]
(
	[ClassroomId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UQ_ClassroomSchedule_ClassroomId]    Script Date: 12/10/2023 15:35:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_ClassroomSchedule_ClassroomId] ON [dbo].[ClassroomSchedule]
(
	[ClassroomId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_ClassroomStudent_Column]    Script Date: 12/10/2023 15:35:51 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UQ_ClassroomStudent_Column] ON [dbo].[ClassroomStudent]
(
	[ClassroomId] ASC,
	[StudentId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AsynchronousTask] ADD  DEFAULT ((0)) FOR [Order]
GO
ALTER TABLE [dbo].[AsynchronousTask] ADD  DEFAULT ('Running') FOR [State]
GO
ALTER TABLE [dbo].[AsynchronousTask] ADD  CONSTRAINT [DF_AsynchronousTask_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Classroom] ADD  DEFAULT ((2)) FOR [ClassroomTypeId]
GO
ALTER TABLE [dbo].[Classroom] ADD  CONSTRAINT [DF_Classroom_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Classroom] ADD  CONSTRAINT [DF_Classroom_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Classroom] ADD  DEFAULT ((1)) FOR [DepartmentId]
GO
ALTER TABLE [dbo].[ClassroomConfiguration] ADD  DEFAULT (newid()) FOR [MeetingId]
GO
ALTER TABLE [dbo].[ClassroomConfiguration] ADD  CONSTRAINT [DF_ClassroomConfiguration_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Monday]  DEFAULT ((1)) FOR [Monday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Tuesday]  DEFAULT ((1)) FOR [Tuesday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Wednesday]  DEFAULT ((1)) FOR [Wednesday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Thursday]  DEFAULT ((1)) FOR [Thursday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Friday]  DEFAULT ((1)) FOR [Friday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Saturday]  DEFAULT ((0)) FOR [Saturday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_Sunday]  DEFAULT ((0)) FOR [Sunday]
GO
ALTER TABLE [dbo].[ClassroomSchedule] ADD  CONSTRAINT [DF_ClassroomSchedule_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ClassroomStudent] ADD  CONSTRAINT [DF_ClassroomStudent_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ClassroomVMStatus] ADD  CONSTRAINT [DF_ClassroomVMStatus_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Organization] ADD  CONSTRAINT [DF_Organization_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[OrganizationSubscription] ADD  DEFAULT ((0)) FOR [Deleted]
GO
ALTER TABLE [dbo].[UserDepartmentRole] ADD  CONSTRAINT [DF_UserDepartmentRole_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserOrganizationRole] ADD  CONSTRAINT [DF_UserOrganizationRole_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[VMSize] ADD  DEFAULT (NULL) FOR [StdPrice]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_ClassroomType] FOREIGN KEY([ClassroomTypeId])
REFERENCES [dbo].[ClassroomType] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_ClassroomType]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_Department]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_VMImage] FOREIGN KEY([VmImageId])
REFERENCES [dbo].[VMImage] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_VMImage]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_VMPack] FOREIGN KEY([VmPackId])
REFERENCES [dbo].[VMPack] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_VMPack]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [FK_Classroom_VMSize] FOREIGN KEY([VmSizeId])
REFERENCES [dbo].[VMSize] ([Id])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [FK_Classroom_VMSize]
GO
ALTER TABLE [dbo].[ClassroomConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ClassroomConfiguration_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[ClassroomConfiguration] CHECK CONSTRAINT [FK_ClassroomConfiguration_Classroom]
GO
ALTER TABLE [dbo].[ClassroomSchedule]  WITH CHECK ADD  CONSTRAINT [FK_ClassroomSchedule_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[ClassroomSchedule] CHECK CONSTRAINT [FK_ClassroomSchedule_Classroom]
GO
ALTER TABLE [dbo].[ClassroomStudent]  WITH CHECK ADD  CONSTRAINT [FK_ClassroomStudent_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[ClassroomStudent] CHECK CONSTRAINT [FK_ClassroomStudent_Classroom]
GO
ALTER TABLE [dbo].[ClassroomVMStatus]  WITH CHECK ADD  CONSTRAINT [FK_ClassroomVMStatus_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[ClassroomVMStatus] CHECK CONSTRAINT [FK_ClassroomVMStatus_Classroom]
GO
ALTER TABLE [dbo].[ClassroomVmTools]  WITH CHECK ADD  CONSTRAINT [FK_ClassroomVmTools_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([Id])
GO
ALTER TABLE [dbo].[ClassroomVmTools] CHECK CONSTRAINT [FK_ClassroomVmTools_Classroom]
GO
ALTER TABLE [dbo].[ClassroomVmTools]  WITH CHECK ADD  CONSTRAINT [FK_ClassroomVmTools_VmToolVersion] FOREIGN KEY([VmToolVersionId])
REFERENCES [dbo].[VMToolVersion] ([Id])
GO
ALTER TABLE [dbo].[ClassroomVmTools] CHECK CONSTRAINT [FK_ClassroomVmTools_VmToolVersion]
GO
ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department_Organization]
GO
ALTER TABLE [dbo].[Organization]  WITH CHECK ADD  CONSTRAINT [FK_Organization_Organization] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[Organization] CHECK CONSTRAINT [FK_Organization_Organization]
GO
ALTER TABLE [dbo].[OrganizationSubscription]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationSubscription_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[OrganizationSubscription] CHECK CONSTRAINT [FK_OrganizationSubscription_Organization]
GO
ALTER TABLE [dbo].[OrganizationSubscription]  WITH CHECK ADD  CONSTRAINT [FK_OrganizationSubscription_Subscription] FOREIGN KEY([SubscriptionId])
REFERENCES [dbo].[Subscription] ([Id])
GO
ALTER TABLE [dbo].[OrganizationSubscription] CHECK CONSTRAINT [FK_OrganizationSubscription_Subscription]
GO
ALTER TABLE [dbo].[UserDepartmentRole]  WITH CHECK ADD  CONSTRAINT [FK_UserDepartmentRole_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[UserDepartmentRole] CHECK CONSTRAINT [FK_UserDepartmentRole_Department]
GO
ALTER TABLE [dbo].[UserDepartmentRole]  WITH CHECK ADD  CONSTRAINT [FK_UserDepartmentRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserDepartmentRole] CHECK CONSTRAINT [FK_UserDepartmentRole_Role]
GO
ALTER TABLE [dbo].[UserOrganizationRole]  WITH CHECK ADD  CONSTRAINT [FK_UserOrganizationtRole_Organization] FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[UserOrganizationRole] CHECK CONSTRAINT [FK_UserOrganizationtRole_Organization]
GO
ALTER TABLE [dbo].[UserOrganizationRole]  WITH CHECK ADD  CONSTRAINT [FK_UserOrganizationtRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserOrganizationRole] CHECK CONSTRAINT [FK_UserOrganizationtRole_Role]
GO
ALTER TABLE [dbo].[VMToolVersion]  WITH CHECK ADD  CONSTRAINT [FK_VMToolVersion_VMTool] FOREIGN KEY([VmToolId])
REFERENCES [dbo].[VMTool] ([Id])
GO
ALTER TABLE [dbo].[VMToolVersion] CHECK CONSTRAINT [FK_VMToolVersion_VMTool]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [CHK_PackOrImageAndSize] CHECK  (([VmImageId] IS NULL AND [VmSizeId] IS NULL AND [VmPackId] IS NOT NULL OR [VmImageId] IS NOT NULL AND [VmSizeId] IS NOT NULL AND [VmPackId] IS NULL))
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [CHK_PackOrImageAndSize]
GO
/****** Object:  StoredProcedure [dbo].[sp_alterdiagram]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_creatediagram]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_dropdiagram]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagramdefinition]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_helpdiagrams]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_renamediagram]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
	
GO
/****** Object:  StoredProcedure [dbo].[sp_upgraddiagrams]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
	
GO
/****** Object:  StoredProcedure [dbo].[usp_AF_ClassroomVMStatus]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_AF_ClassroomVMStatus]
	@MachineName NVARCHAR(255),
	@ClassroomName NVARCHAR(255),
	@ActionIsStart BIT,
	@EventDate DATETIME
AS
BEGIN
	SET NOCOUNT OFF; -- Number of rows updated is used by azure function to consider that proc was succeed

	DECLARE @ClassroomId INT = (SELECT TOP 1 ClassroomId
								FROM [dbo].[ClassroomConfiguration]
								WHERE RgName = @ClassroomName
								ORDER BY Id DESC)

	IF @ActionIsStart = 1
	BEGIN
		INSERT INTO dbo.ClassroomVMStatus(ClassroomId, VMName, DateStart, CreatedBy)
		VALUES (@ClassroomId, @MachineName, @EventDate, 'AF_RessourceGroup')
	END
	ELSE
	BEGIN
		UPDATE dbo.ClassroomVMStatus
		SET DateEnd = @EventDate,
			UpdatedBy = 'Azure function',
			UpdatedOn = GETDATE()
		WHERE ClassroomId = @ClassroomId
			AND VMName = @MachineName
			AND DateEnd IS NULL
			AND @EventDate > DateStart
	END

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomConfigurationsManager_GetByClassroomId]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomConfigurationsManager_GetByClassroomId]
	@ClassroomId INT
AS
BEGIN

	/****************************************/
	/*	IMPORTANT							*/
	/*	ONLY ONE CONFIGURATION BY CLASSROOM	*/
	/*		-> TODO: MODIFY MODEL			*/
	/****************************************/
	SELECT TOP 1
		[Id]
		,[ClassroomId]
		,[M365GroupName]
		,[RgIndex]
		,[RgName]
		,[RgDeploymentUrl]
		,[RgTemplateLink]
		,[RgOperationUrl]
		,[BastionDeploymentUrl]
		,[BastionTemplateLink]
		,[BastionOperationUrl]
		,[MeetingUrl]
		,[MeetingId]
		,[CreatedBy]
		,[CreatedOn]
		,[UpdatedBy]
		,[UpdatedOn]
	FROM [dbo].[ClassroomConfiguration] WITH (NOLOCK)
	WHERE [ClassroomId] = @ClassroomId;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomConfigurationsManager_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomConfigurationsManager_GetById]
	@Id INT
AS
BEGIN

	SELECT
		[Id]
		,[ClassroomId]
		,[M365GroupName]
		,[RgIndex]
		,[RgName]
		,[RgDeploymentUrl]
		,[RgTemplateLink]
		,[RgOperationUrl]
		,[BastionDeploymentUrl]
		,[BastionTemplateLink]
		,[BastionOperationUrl]
		,[MeetingUrl]
		,[MeetingId]
		,[CreatedBy]
		,[CreatedOn]
		,[UpdatedBy]
		,[UpdatedOn]
	FROM [dbo].[ClassroomConfiguration] WITH (NOLOCK)
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomSchedulesManager_GetByClassroomId]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomSchedulesManager_GetByClassroomId]
	@ClassroomId INT
AS
BEGIN

	/************************************/
	/*	IMPORTANT						*/
	/*	ONLY ONE SCHEDULE BY CLASSROOM	*/
	/*		-> TODO: MODIFY MODEL		*/
	/************************************/
	SELECT TOP 1
		[Id]
		,[ClassroomId]
		,[TimeZone]
		,[StartDay]
		,[EndDay]
		,[StartTime]
		,[EndTime]
		,[Monday]
		,[Tuesday]
		,[Wednesday]
		,[Thursday]
		,[Friday]
		,[Saturday]
		,[Sunday]
		,[CreatedBy]
		,[CreatedOn]
		,[UpdatedBy]
		,[UpdatedOn]
	FROM [dbo].[ClassroomSchedule] WITH (NOLOCK)
	WHERE [ClassroomId] = @ClassroomId;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomSchedulesManager_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomSchedulesManager_GetById]
	@Id INT
AS
BEGIN

	SELECT
		[Id]
		,[ClassroomId]
		,[TimeZone]
		,[StartDay]
		,[EndDay]
		,[StartTime]
		,[EndTime]
		,[Monday]
		,[Tuesday]
		,[Wednesday]
		,[Thursday]
		,[Friday]
		,[Saturday]
		,[Sunday]
		,[CreatedBy]
		,[CreatedOn]
		,[UpdatedBy]
		,[UpdatedOn]
	FROM [dbo].[ClassroomSchedule] WITH (NOLOCK)
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomsManager_DeleteById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomsManager_DeleteById]
	@Id INT,
	@DeletedBy NVARCHAR(255)
AS
BEGIN
	
	UPDATE [dbo].[Classroom]
	SET
		[Active] = 0
		,[DeletedBy] = @DeletedBy
		,[DeletedOn] = GETUTCDATE()
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomsManager_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomsManager_GetById]
	@Id INT
AS
BEGIN
	
	SELECT TOP 1
		C.[Id]
		,C.[DepartmentId]
		,C.[Name]
		,C.[Description]
		,C.[InstructorId]
		,C.[VmImageId]
		,C.[VmSizeId]
		,C.[VmPackId]
		,C.[ClassroomTypeId]
		,C.[Active]
		,D.OrganizationId
		,C.[CreatedBy]
		,C.[CreatedOn]
		,C.[UpdatedBy]
		,C.[UpdatedOn]
		,C.[DeletedBy]
		,C.[DeletedOn]
		,CC.M365GroupName
	FROM [dbo].[Classroom] C WITH (NOLOCK)
	INNER JOIN dbo.Department D ON D.Id = C.DepartmentId
	INNER JOIN dbo.ClassroomConfiguration CC ON CC.ClassroomId = C.Id
	WHERE C.[Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomsManager_Select]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomsManager_Select]
	@Active BIT = NULL,
	@UserId NVARCHAR(255) = NULL,
	@DepartmentIds [dbo].[UserDepartmentsDataType] READONLY
AS
BEGIN
	DECLARE @HasDept BIT = NULL

	IF EXISTS (select 1 from @DepartmentIds)
	begin
		set @HasDept = 1
	end

	SELECT
		C.[Id]
		,C.[DepartmentId]
		,C.[Name]
		,C.[Description]
		,C.[InstructorId]
		,C.[VmImageId]
		,C.[VmSizeId]
		,C.[VmPackId]
		,C.[ClassroomTypeId]
		,C.[Active]
		,D.OrganizationId
		,C.[CreatedBy]
		,C.[CreatedOn]
		,C.[UpdatedBy]
		,C.[UpdatedOn]
		,C.[DeletedBy]
		,C.[DeletedOn]
		,CC.M365GroupName
	FROM [dbo].[Classroom] C WITH (NOLOCK)
	INNER JOIN dbo.Department D ON D.Id = C.DepartmentId
	INNER JOIN dbo.ClassroomConfiguration CC ON CC.ClassroomId = C.Id
	WHERE
		[Active] = ISNULL(@Active, [Active])
		AND (
			@UserId IS NULL
			OR [InstructorId] = @UserId
			OR @UserId  IN (SELECT [StudentId] FROM [dbo].[ClassroomStudent] CS WITH (NOLOCK) WHERE CS.[ClassroomId] = C.[Id])
			OR DepartmentId in (SELECT [DepartmentId] FROM @DepartmentIds)
		);

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomsManager_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomsManager_Upsert]
	@Classroom [dbo].[ClassroomDataType] READONLY,
	@ClassroomConfiguration [dbo].[ClassroomConfigurationDataType] READONLY,
	@ClassroomSchedule [dbo].[ClassroomScheduleDataType] READONLY,
	@ClassroomStudents [dbo].[ClassroomStudentDataType] READONLY,
	--@VmToolVersionIds [dbo].[IdsList] READONLY,
	@UpsertedBy NVARCHAR(255),
	@ClassroomId INT = NULL OUTPUT
AS
BEGIN

	/************************************/
	/*	IMPORTANT						*/
	/*	ONE & ONLY ONE ROW EXPECTED FOR	*/
	/*		@Classroom					*/
	/*		@ClassroomConfiguration		*/
	/*		@ClassroomSchedule			*/
	/************************************/
	DECLARE @DepartmentId INT, @InstructorId NVARCHAR(255);

	/************************************/
	/*	IF @ClassroomId is null OR < 1	*/
	/*		-> CREATE Classroom			*/
	/************************************/
	IF (ISNULL(@ClassroomId, 0) < 1)
	BEGIN
	
		INSERT INTO [dbo].[Classroom]
			([Name], [Description], [DepartmentId], [InstructorId], [VmImageId], [VmSizeId], [VmPackId], [ClassroomTypeId], [Active], [CreatedBy], [CreatedOn])
		SELECT TOP 1
			[Name], [Description], [DepartmentId], [InstructorId], [VmImageId], [VmSizeId], [VmPackId], [ClassroomTypeId], 1, @UpsertedBy, GETUTCDATE()
		FROM @Classroom;

		SET @ClassroomId = SCOPE_IDENTITY();

		SELECT TOP 1 @DepartmentId = [DepartmentId], @InstructorId = [InstructorId] FROM @Classroom;

	END
	/********************************************/
	/*	IF @ClassroomId is not null AND >= 1	*/
	/*		-> CHECK IF CLASSROOM EXISTS		*/
	/*		-> UPDATE Classroom					*/
	/********************************************/
	ELSE
	BEGIN
		
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[Classroom] WHERE [Id] = @ClassroomId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='Classroom with Id ' + CAST(@ClassroomId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);

		END

		UPDATE [dbo].[Classroom]
			SET
				[Name] = C.[Name]
				,[Description] = C.[Description]
				,[InstructorId] = C.[InstructorId]
				,[VmImageId] = C.[VmImageId]
				,[VmSizeId] = C.[VmSizeId]
				,[VmPackId] = C.[VmPackId]
				,[ClassroomTypeId] = C.[ClassroomTypeId]
				,[UpdatedBy] = @UpsertedBy
				,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @Classroom) C
		WHERE [Id] = @ClassroomId;

	END

	DECLARE @ClassroomConfigurationId INT
	EXEC [dbo].[usp_Core_ClassroomConfiguration_Upsert] @ClassroomId, @ClassroomConfiguration, @UpsertedBy, @ClassroomConfigurationId OUTPUT;

	DECLARE @ClassroomScheduleId INT;
	EXEC [dbo].[usp_Core_ClassroomSchedule_Upsert] @ClassroomId, @ClassroomSchedule, @UpsertedBy, @ClassroomScheduleId OUTPUT;
	
	EXEC [dbo].[usp_Core_ClassroomStudent_Upsert] @ClassroomId, @ClassroomStudents, @DepartmentId, @UpsertedBy;

	EXEC [dbo].[usp_Core_ClassroomTrainer_Add] @DepartmentId, @InstructorId;
	
	--EXEC [dbo].[usp_Core_ClassroomVmTools_Upsert] @ClassroomId, @VmToolVersionIds;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomStudentsManager_ListByClassroomId]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomStudentsManager_ListByClassroomId]
	@ClassroomId INT
AS
BEGIN
	
	SELECT
		[Id]
		,[ClassroomId]
		,[StudentId]
		,[StudentIndex]
		,[CreatedBy]
		,[CreatedOn]
		,[UpdatedBy]
		,[UpdatedOn]
	FROM [dbo].[ClassroomStudent] WITH (NOLOCK)
	WHERE [ClassroomId] = @ClassroomId;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomTypesManager_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomTypesManager_GetById]
	@Id INT
AS
BEGIN

	SELECT
		[Id]
		,[Code]
		,[Label]
	FROM [dbo].[ClassroomType]
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomTypesManager_List]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomTypesManager_List]
AS
BEGIN

	SELECT
		[Id]
		,[Code]
		,[Label]
	FROM [dbo].[ClassroomType] WITH (NOLOCK);

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomVMStatus_GetByDepartments]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomVMStatus_GetByDepartments]
	@Ids [IdsList] READONLY,
	@StartDate DATETIME,
	@EndDate DATETIME
AS
BEGIN
	
	SELECT CS.[Id]
		, CS.[ClassroomId]
		, CS.[VMName]
		, CS.[TargetEmail]
		, CS.[DateStart]
		, CS.[DateEnd]
		, C.DepartmentId
		, D.[Name] AS DepartmentName
		, V.Id AS VMSizeId
		, V.StdPrice AS VMPrice
	FROM  @Ids I
	INNER JOIN dbo.Classroom C ON C.DepartmentId = I.Id
	INNER JOIN dbo.Department D ON D.Id = C.DepartmentId
	INNER JOIN  [dbo].[ClassroomVMStatus] CS ON CS.ClassroomId = C.Id
	INNER JOIN dbo.VMSize V ON V.Id = c.VmSizeId
	WHERE CS.DateStart BETWEEN @StartDate AND @EndDate
		OR CS.DateEnd BETWEEN @StartDate AND @EndDate
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_ClassroomVmToolVersionManager_ListByClassroomId]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_ClassroomVmToolVersionManager_ListByClassroomId]
	@ClassroomId INT
AS
BEGIN
	SELECT
		[VmToolVersionId] Id,
		[VmTool].[Label] VmToolLabel,
		[VmToolVersion].[Label] VmToolVersionLabel,
		[VmTool].[Sku] VmToolSku,
		[VmToolVersion].[Sku] VmToolVersionSku
	FROM [dbo].[ClassroomVmTools]
	INNER JOIN [dbo].[VMToolVersion] on [VMToolVersion].Id = [ClassroomVmTools].[VmToolVersionId]
	INNER JOIN [dbo].[VMTool] ON [VMTool].[Id] = [VmToolVersion].[VmToolId]
	WHERE [ClassroomId] = @ClassroomId;
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_API_DepartementCost_Select]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_API_DepartementCost_Select]
    @Name varchar(255)
AS
BEGIN
    SELECT
        O.Name	AS Organization,
		S.Name	AS Subscription,
		OS.Id,
		OS.StartDate,
		OS.EndDate,
		OS.CreatedBy,
		OS.CreatedOn,
		OS.UpdatedBy,
		OS.UpdatedOn
    FROM
        [dbo].[OrganizationSubscription] OS
        INNER JOIN [dbo].[Organization] O ON OS.OrganizationId = O.Id
		INNER JOIN [dbo].[Subscription] S ON OS.SubscriptionId = S.Id
	WHERE O.Name = @Name
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_Department_Add]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_Department_Add]
	@Departments DepartmentType READONLY
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Result TABLE(OldId INT, [NewId] INT)

	-- DepartmentParentId exists on db
	MERGE [dbo].[Department] AS T
	USING (SELECT * FROM @Departments WHERE DepartmentParentId > 0) AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([OrganizationId], [DepartmentParentId], [Name], [CreatedBy], [CreatedOn])
		VALUES (S.[OrganizationId], S.[DepartmentParentId], S.[Name], LOWER(S.[Name]), GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	-- DepartmentParentId has just been inserted
	MERGE [dbo].[Department] AS T
	USING (
		SELECT * 
		FROM @Departments d 
		INNER JOIN @Result r on r.OldId = d.DepartmentParentId 
		WHERE DepartmentParentId < 0
	) AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([OrganizationId], [DepartmentParentId], [Name], [CreatedBy], [CreatedOn])
		VALUES (S.[OrganizationId], S.[NewId], S.[Name], 'for-virtualeo-testing-name4', GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	SELECT OldId, [NewId]
	FROM @Result;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_Department_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_Department_Upsert]
	@Department [dbo].[DepartmentDataType] READONLY,
	@UpsertedBy NVARCHAR(255),
	@DepartmentId INT = NULL OUTPUT
AS
BEGIN

	/****************************************/
	/*	IF @OrganizationId is null OR < 1	*/
	/*		-> CREATE Department		    */
	/****************************************/
	IF (ISNULL(@DepartmentId, 0) < 1)
	BEGIN

		INSERT INTO [dbo].[Department]
			([Name], [OrganizationId], [DepartmentParentId], [CreatedBy], [CreatedOn])
		SELECT TOP 1
			[Name], [OrganizationId], [DepartmentParentId], @UpsertedBy, GETUTCDATE()
		FROM @Department;

		SET @DepartmentId = SCOPE_IDENTITY();

	END
	/********************************************/
	/*	IF @ClassroomId is not null AND >= 1	*/
	/*		-> CHECK IF Department EXISTS		*/
	/*		-> UPDATE Department					*/
	/********************************************/
	ELSE
	BEGIN
		
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[Department] WHERE [Id] = @DepartmentId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='Department with Id ' + CAST(@DepartmentId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);

		END

		UPDATE [dbo].[Department]
			SET
				[Name] = C.[Name]
				,[OrganizationId] = C.[OrganizationId]
				,[DepartmentParentId] = C.[DepartmentParentId]
				,[UpdatedBy] = @UpsertedBy
				,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @Department) C
		WHERE [Id] = @DepartmentId;

	END

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_DepartmentOrganization_ById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_DepartmentOrganization_ById]
	@DepartmentId int
AS
BEGIN

	DECLARE @DepartmentsLv1 TABLE (Id int);
	INSERT INTO @DepartmentsLv1 (Id) SELECT Id FROM Department WHERE DepartmentParentId IS NULL;
	
	select 
		Department.Id as Id, 
		Department.Name as Name, 
		Department.OrganizationId as OrganizationId, 
		Organization.Name as OrganizationName, 
		[DepartmentParentId],
		CASE 
			WHEN Department.DepartmentParentId IS NULL THEN 1
			WHEN d1.Id IS NOT NULL THEN 2
			ELSE 3
		END as Level
	from Department 
	join Organization on Department.OrganizationId = Organization.Id
	left join @DepartmentsLv1 d1 on d1.Id = Department.DepartmentParentId
	where Department.Id = @DepartmentId

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_DepartmentOrganization_ListByUserId]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_DepartmentOrganization_ListByUserId]
	@UserId NVARCHAR(255)
AS
BEGIN

	DECLARE @DepartmentsLv1 TABLE (Id int);
	INSERT INTO @DepartmentsLv1 (Id) SELECT Id FROM Department WHERE DepartmentParentId IS NULL;

	IF (ISNULL(@UserId, '') <> '')
	BEGIN
		DECLARE @AllowedDepartments TABLE (DepartmentId INT, DepartmentParentId INT, OrganizationId INT, RoleId INT)
		INSERT INTO @AllowedDepartments
		EXEC [dbo].[usp_Api_UserDepartmentRole_ListByUserId] @UserId
	    		
		SELECT DISTINCT
			Department.Id as Id, Department.Name as Name, Department.OrganizationId as OrganizationId, 
			Organization.Name as OrganizationName, Department.DepartmentParentId as DepartmentParentId,
			CASE 
				WHEN Department.DepartmentParentId IS NULL THEN 1
				WHEN d1.Id IS NOT NULL THEN 2
				ELSE 3
			END as Level
		FROM Department
		INNER JOIN Organization on Department.OrganizationId = Organization.Id
		INNER JOIN @AllowedDepartments ad on ad.DepartmentId = Department.Id
		LEFT JOIN @DepartmentsLv1 d1 on d1.Id = Department.DepartmentParentId
	END
	ELSE
	BEGIN
		SELECT DISTINCT 
			Department.Id as Id, Department.Name as Name, Department.OrganizationId as OrganizationId, 
			Organization.Name as OrganizationName, Department.DepartmentParentId as DepartmentParentId,
			CASE 
				WHEN Department.DepartmentParentId IS NULL THEN 1
				WHEN d1.Id IS NOT NULL THEN 2
				ELSE 3
			END as Level
		FROM Department
		INNER JOIN Organization on Department.OrganizationId = Organization.Id
		LEFT JOIN @DepartmentsLv1 d1 on d1.Id = Department.DepartmentParentId
	END
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_DepartmentRole_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_DepartmentRole_Upsert]
	@DeptRole [dbo].[DepartmentRoleDataType] READONLY,
	@UpsertedBy NVARCHAR(255),
	@UserDepartmentRoleId INT = NULL OUTPUT
AS
BEGIN

	/****************************************/
	/*	IF @OrganizationId is null OR < 1	*/
	/*		-> CREATE UserDepartmentRole    */
	/****************************************/
	IF (ISNULL(@UserDepartmentRoleId, 0) < 1)
	BEGIN

		INSERT INTO [dbo].[UserDepartmentRole]
			([UserId], [DepartmentId], [RoleId], [CreatedBy], [CreatedOn])
		SELECT TOP 1
			[UserId], [DepartmentId], [RoleId], @UpsertedBy, GETUTCDATE()
		FROM @DeptRole;

		SET @UserDepartmentRoleId = SCOPE_IDENTITY();

	END
	/********************************************/
	/*	IF @ClassroomId is not null AND >= 1	*/
	/*		-> CHECK IF UserDepartmentRole EXISTS		*/
	/*		-> UPDATE UserDepartmentRole					*/
	/********************************************/
	ELSE
	BEGIN
		
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[UserDepartmentRole] WHERE [Id] = @UserDepartmentRoleId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='UserDepartmentRole with Id ' + CAST(@UserDepartmentRoleId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);

		END

		UPDATE [dbo].[UserDepartmentRole]
			SET
				[UserId] = C.[UserId]
				,[DepartmentId] = C.[DepartmentId]
				,[RoleId] = C.[RoleId]
				,[UpdatedBy] = @UpsertedBy
				,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @DeptRole) C
		WHERE [Id] = @UserDepartmentRoleId;

	END

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_Departments_GetByIds]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_Departments_GetByIds]
	@Ids [IdsList] READONLY
AS
BEGIN
	
	SELECT D.Id
		, D.[Name]
		, D.OrganizationId
		, D.DepartmentParentId
	FROM  @Ids I
	INNER JOIN dbo.Department D ON D.Id = I.Id
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_Organization_CheckNameExists]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_Organization_CheckNameExists]
    @Name NVARCHAR(255),
    @Exists BIT = NULL OUTPUT
AS
BEGIN


    IF EXISTS (SELECT 1 FROM [dbo].[Organization] WHERE [Name] = @Name)
        SET @Exists = 1;
    ELSE
        SET @Exists = 0;
    
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_Organization_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_Organization_Upsert]
	@Organization [dbo].[OrganizationDataType] READONLY,
	@UpsertedBy NVARCHAR(255),
	@OrganizationId INT = NULL OUTPUT
AS
BEGIN

	/****************************************/
	/*	IF @OrganizationId is null OR < 1	*/
	/*		-> CREATE Organization		    */
	/****************************************/
	IF (ISNULL(@OrganizationId, 0) < 1)
	BEGIN
		DECLARE @BillingCode VARCHAR (255);

		SET @BillingCode = 'VIRT'
							+FORMAT( GETUTCDATE(), 'yyyyMMdd') 
							+'-'
							+CAST((SELECT COUNT(Id) 
							FROM [dbo].[Organization] 
							WHERE CAST([CreatedOn] AS DATE) = CAST(GETUTCDATE() AS DATE)
							) +1 AS VARCHAR(10));

		--SELECT @BillingCode ;

		INSERT INTO [dbo].[Organization]
			([Name], [BillingCode], [CreatedBy], [CreatedOn])
		SELECT TOP 1
			[Name], @BillingCode, @UpsertedBy, GETUTCDATE()
		FROM @Organization;

		SET @OrganizationId = SCOPE_IDENTITY();

	END
	/********************************************/
	/*	IF @ClassroomId is not null AND >= 1	*/
	/*		-> CHECK IF Organization EXISTS		*/
	/*		-> UPDATE Organization					*/
	/********************************************/
	ELSE
	BEGIN
		
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[Organization] WHERE [Id] = @OrganizationId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='Organization with Id ' + CAST(@OrganizationId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);

		END

		UPDATE [dbo].[Organization]
			SET
				[Name] = C.[Name]
				,[BillingCode] = C.[BillingCode]
				,[UpdatedBy] = @UpsertedBy
				,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @Organization) C
		WHERE [Id] = @OrganizationId;

	END

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_TaskStatus_SelectLast]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_TaskStatus_SelectLast]
    @InstanceId varchar(255),
    @ExecutionId varchar(255)
AS
BEGIN
	/*
	Select last ProgressReport and Last 
	*/
	 SELECT STATUS, CREATEDON, NAME 
	  FROM [DBO].[TASKSTATUS] WHERE ID = (
		SELECT TOP 1 ID
		FROM [DBO].[TASKSTATUS]
		WHERE INSTANCEID = @InstanceId AND EXECUTIONID = @ExecutionId AND [NAME] = N'ProgressReport'
		ORDER BY CREATEDON DESC)
	UNION ALL
		SELECT STATUS, CREATEDON, NAME 
	  FROM [DBO].[TASKSTATUS] WHERE ID = (
		SELECT TOP 1 ID
		FROM [DBO].[TASKSTATUS]
		WHERE INSTANCEID = @InstanceId AND EXECUTIONID = @ExecutionId
		ORDER BY CREATEDON DESC)
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_TaskStatus_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_TaskStatus_Upsert]
	@TaskInfo [dbo].[TaskStatusDataType] READONLY,
	@TaskId INT = NULL OUTPUT
AS
BEGIN
	SET @TaskId = NULL;
	/****************************************/
	/*	CHECK IF TaskId EXISTS	*/
	/*	INITIALIZE @TaskId		*/
	/****************************************/
	IF (ISNULL(@TaskId, 0) < 1)
	BEGIN
		INSERT INTO [dbo].[TaskStatus]
			([Name], [InstanceId], [ExecutionId], [CreatedOn], [Status], [Input], [FailureMessage])
		SELECT TOP 1
			[Name], [InstanceId], [ExecutionId], [CreatedOn], [Status], [Input], [FailureMessage]
		FROM @TaskInfo;

		SET @TaskId = SCOPE_IDENTITY();
	END
	ELSE
	BEGIN
		IF NOT EXISTS (SELECT TOP 1 [Id] FROM [dbo].[TaskStatus] WHERE [Id] = @TaskId)
		BEGIN

			DECLARE @ErrorMsg NVARCHAR(255);
			
			SET @ErrorMsg='Task with Id ' + CAST(@TaskId AS NVARCHAR(50)) + ' not exists';
			
			RAISERROR(@ErrorMsg, 1, 1);
		END
		UPDATE [dbo].[TaskStatus]
			SET
				[Name] = C.[Name]
				,[InstanceId] = C.[InstanceId]
				,[ExecutionId] = C.[ExecutionId]
				,[CreatedOn] = C.[CreatedOn]
				,[Status] = C.[Status]
				, [Input]= C.[Input]
				, [FailureMessage] = C.[FailureMessage]
		FROM (SELECT TOP 1 * FROM @TaskInfo) C
		WHERE [Id] = @TaskId;
	END
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_UserDepartmentRole_Add]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_UserDepartmentRole_Add]
	@UserDepartmentRoles UserDepartmentRoleType READONLY
AS
BEGIN

	SET NOCOUNT ON;

	DECLARE @Result TABLE(OldId INT, [NewId] INT)

	MERGE [dbo].[UserDepartmentRole] AS T
	USING @UserDepartmentRoles AS S ON (1=0)
	WHEN NOT MATCHED THEN
		INSERT ([DepartmentId], [RoleId], [UserId], [CreatedBy], [CreatedOn])
		VALUES (S.[DepartmentId], S.[RoleId], S.[UserId], 'for-virtualeo-testing-name4', GETDATE())
	OUTPUT S.Id, INSERTED.Id INTO @Result;

	SELECT OldId, [NewId]
	FROM @Result;

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_UserDepartmentRole_DeleteById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_UserDepartmentRole_DeleteById]
	@Ids IdsList READONLY,
	@DeletedBy NVARCHAR(255)
AS
BEGIN
	UPDATE u
	SET
		[DeletedBy] = @DeletedBy
		,[DeletedOn] = GETUTCDATE()
	FROM [dbo].[UserDepartmentRole] u
	INNER JOIN @Ids i ON u.Id = i.Id;
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_UserDepartmentRole_List]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_UserDepartmentRole_List]
	@UserId NVARCHAR(255)
AS
BEGIN
	DECLARE @AllowedDepartments TABLE (DepartmentId INT, DepartmentParentId INT, OrganizationId INT, RoleId INT)
	INSERT INTO @AllowedDepartments
	EXEC [dbo].[usp_Api_UserDepartmentRole_ListByUserId] @UserId

	SELECT DISTINCT 
		udr.[Id], 
		udr.[DepartmentId], 
		udr.[RoleId], 
		udr.[UserId], 
		Department.Name as DepartmentName, 
		Organization.Name as OrganizationName, 
		Role.Label as RoleName
	FROM UserDepartmentRole as udr 
	INNER JOIN Department on DepartmentId = Department.Id
	INNER JOIN Organization on Department.OrganizationId = Organization.Id
	INNER JOIN Role on udr.RoleId = Role.Id
	INNER JOIN @AllowedDepartments ad on 
		ad.DepartmentId = Department.Id and 
		ad.OrganizationId = Organization.Id
	WHERE udr.DeletedOn IS NULL
END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_UserDepartmentRole_ListByUserId]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_UserDepartmentRole_ListByUserId]
	@UserId NVARCHAR(255)
AS
BEGIN

/*
Select RoleId for all departments under a specific userId
*/

WITH cte as (
    select t.id, t.DepartmentParentId, t.OrganizationId, UserDepartmentRole.RoleId
    from department t
	inner join UserDepartmentRole on UserDepartmentRole.DepartmentId = t.Id 
    where userId = @UserId and DeletedOn IS NULL

    union all

    select t.id, t.DepartmentParentId, t.OrganizationId, c.RoleId
    from department t
    inner join cte c on (c.Id=t.DepartmentParentId)
)
select distinct t.id as DepartmentId, t. DepartmentParentId, t.OrganizationId, t.RoleId from cte t;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_UserRole_GetRoleByUserAndDepartment]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_UserRole_GetRoleByUserAndDepartment]
	@UserId  NVARCHAR(255)
	, @DepartmentId	INT
AS
BEGIN
	SET NOCOUNT ON;

	WITH CTE
	AS (
		SELECT 1 AS I,  D.Id, D.DepartmentParentId
		FROM Department D
		WHERE D.Id = @DepartmentId
		UNION ALL
		SELECT (CTE.I+1) AS I, D.Id, D.DepartmentParentId
		FROM CTE
			INNER JOIN Department D ON D.Id = CTE.DepartmentParentId
	)
	SELECT TOP 1 R.[Id], R.[Label], R.[Sku], R.[Description]
	FROM CTE
		INNER JOIN [dbo].[UserDepartmentRole] UDR ON UDR.DepartmentId = CTE.Id AND UDR.UserId = @UserId
		INNER JOIN [dbo].[Role] R ON R.Id = UDR.RoleId
	ORDER BY I ASC; -- We want to retreive the role with the thinnest scope
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMImagesManager_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMImagesManager_GetById]
	@Id INT
AS
BEGIN

	SELECT
		[Id]
		,[Label]
		,[Publisher]
		,[Offer]
		,[Sku]
		,[Version]
	FROM [dbo].[VMImage]
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMImagesManager_List]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMImagesManager_List]
AS
BEGIN

	SELECT
		[Id]
		,[Label]
		,[Publisher]
		,[Offer]
		,[Sku]
		,[Version]
	FROM [dbo].[VMImage] WITH (NOLOCK);

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMPack_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMPack_GetById]
	@Id INT
AS
BEGIN

	SELECT
		[Id]
		,[Label]
		,[Description]
		,[IsAvailable]
		,[Sku]
		,[Version]
	FROM [dbo].[VMPack]
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMPack_List]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMPack_List]
AS
BEGIN
	SELECT
		[Id]
		,[Label]
		,[Description]
		,[IsAvailable]
		,[Sku]
		,[Version]
	FROM [dbo].[VMPack];
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMSizesManager_GetById]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMSizesManager_GetById]
	@Id INT
AS
BEGIN

	SELECT
		[Id]
		,[Label]
		,[Description]
		,[Sku]
	FROM [dbo].[VMSize]
	WHERE [Id] = @Id;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMSizesManager_List]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMSizesManager_List]
AS
BEGIN

	SELECT
		[Id]
		,[Label]
		,[Description]
		,[Sku]
	FROM [dbo].[VMSize] WITH (NOLOCK);

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Api_VMTools_List]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Api_VMTools_List]
AS
BEGIN
	SELECT 
	  [VmToolVersion].[Id],
	  [VmTool].[Label] VmToolLabel,
	  [VmToolVersion].[Label] VmToolVersionLabel,
	  [VmTool].[Sku] VmToolSku,
	  [VmToolVersion].[Sku] VmToolVersionSku
	FROM [dbo].[VMToolVersion]
	INNER JOIN [dbo].[VMTool] ON [VMTool].[Id] = [VmToolVersion].[VmToolId]

END
GO
/****** Object:  StoredProcedure [dbo].[usp_Core_ClassroomConfiguration_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Core_ClassroomConfiguration_Upsert]
	@ClassroomId INT,
	@ClassroomConfiguration [dbo].[ClassroomConfigurationDataType] READONLY,
	@UpsertedBy NVARCHAR(255),
	@ClassroomConfigurationId INT = NULL OUTPUT
AS
BEGIN

	/************************************************************/
	/*	IMPORTANT												*/
	/*	ONE & ONLY ONE ROW EXPECTED FOR	@ClassroomConfiguration	*/
	/*	ONLY ONE CONFIGURATION BY CLASSROOM						*/
	/*		-> TODO: MODIFY MODEL								*/
	/************************************************************/

	-- USE @ClassroomId to get current @ClassroomConfigurationId
	SET @ClassroomConfigurationId = NULL;

	/********************************************/
	/*	CHECK IF CLASSROOM CONFIGURATION EXISTS	*/
	/*	INITIALIZE @ClassroomConfigurationId	*/
	/********************************************/
	SELECT TOP 1 @ClassroomConfigurationId = [Id]
	FROM [dbo].[ClassroomConfiguration]
	WHERE [ClassroomId] = @ClassroomId
	
	/********************************************/
	/*	IF @ClassroomConfigurationId is null	*/
	/*		-> CREATE ClassroomConfiguration	*/
	/********************************************/
	IF (@ClassroomConfigurationId IS NULL)
	BEGIN

		INSERT INTO [dbo].[ClassroomConfiguration]
			([ClassroomId], [M365GroupName], [RgIndex], [RgName], [RgDeploymentUrl], [RgTemplateLink],
			[RgOperationUrl], [BastionDeploymentUrl], [BastionTemplateLink], [BastionOperationUrl], [MeetingUrl],
			[CreatedBy], [CreatedOn])
		SELECT TOP 1
			@ClassroomId, [M365GroupName], [RgIndex], [RgName], [RgDeploymentUrl], [RgTemplateLink],
			[RgOperationUrl], [BastionDeploymentUrl], [BastionTemplateLink], [BastionOperationUrl], [MeetingUrl],
			@UpsertedBy, GETUTCDATE()
		FROM @ClassroomConfiguration;

		SET @ClassroomConfigurationId = SCOPE_IDENTITY();

	END
	/************************************************/
	/*	IF @ClassroomConfigurationId is not null	*/
	/*		-> UPDATE ClassroomConfiguration		*/
	/************************************************/
	ELSE
	BEGIN
		
		UPDATE [dbo].[ClassroomConfiguration]
		SET
			[ClassroomId] = @ClassroomId
			,[M365GroupName] = CC.[M365GroupName]
			,[RgIndex] = CC.[RgIndex]
			,[RgName] = CC.[RgName]
			,[RgDeploymentUrl] = CC.[RgDeploymentUrl]
			,[RgTemplateLink] = CC.[RgTemplateLink]
			,[RgOperationUrl] = CC.[RgOperationUrl]
			,[BastionDeploymentUrl] = CC.[BastionDeploymentUrl]
			,[BastionTemplateLink] = CC.[BastionTemplateLink]
			,[BastionOperationUrl] = CC.[BastionOperationUrl]
			,[UpdatedBy] = @UpsertedBy
			,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @ClassroomConfiguration) CC
		WHERE [Id] = @ClassroomConfigurationId;

	END

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Core_ClassroomSchedule_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Core_ClassroomSchedule_Upsert]
	@ClassroomId INT,
	@ClassroomSchedule [dbo].[ClassroomScheduleDataType] READONLY,
	@UpsertedBy NVARCHAR(255),
	@ClassroomScheduleId INT = NULL OUTPUT
AS
BEGIN

	/********************************************************/
	/*	IMPORTANT											*/
	/*	ONE & ONLY ONE ROW EXPECTED FOR	@ClassroomSchedule	*/
	/*	ONLY ONE SCHEDULE BY CLASSROOM						*/
	/*		-> TODO: MODIFY MODEL							*/
	/********************************************************/

	-- USE @ClassroomId to get @ClassroomScheduleId
	SET @ClassroomScheduleId = NULL;

	/****************************************/
	/*	CHECK IF CLASSROOM SCHEDULE EXISTS	*/
	/*	INITIALIZE @ClassroomScheduleId		*/
	/****************************************/
	SELECT TOP 1 @ClassroomScheduleId = [Id]
	FROM [dbo].[ClassroomSchedule]
	WHERE [ClassroomId] = @ClassroomId
	
	/************************************/
	/*	IF @ClassroomScheduleId is null	*/
	/*		-> CREATE ClassroomSchedule	*/
	/************************************/
	IF (@ClassroomScheduleId IS NULL)
	BEGIN

		INSERT INTO [dbo].[ClassroomSchedule]
			([ClassroomId], [TimeZone], [StartDay], [EndDay], [StartTime], [EndTime],
			[Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday],
			[CreatedBy], [CreatedOn])
		SELECT TOP 1
			@ClassroomId, [TimeZone], [StartDay], [EndDay], [StartTime], [EndTime],
			[Monday], [Tuesday], [Wednesday], [Thursday], [Friday], [Saturday], [Sunday],
			@UpsertedBy, GETUTCDATE()
		FROM @ClassroomSchedule;

		SET @ClassroomScheduleId = SCOPE_IDENTITY();

	END
	/****************************************/
	/*	IF @ClassroomScheduleId is not null	*/
	/*		-> UPDATE ClassroomSchedule		*/
	/****************************************/
	ELSE
	BEGIN
		
		UPDATE [dbo].[ClassroomSchedule]
		SET
			[ClassroomId] = @ClassroomId
			,[TimeZone] = CS.[TimeZone]
			,[StartDay] = CS.[StartDay]
			,[EndDay] = CS.[EndDay]
			,[StartTime] = CS.[StartTime]
			,[EndTime] = CS.[EndTime]
			,[Monday] = CS.[Monday]
			,[Tuesday] = CS.[Tuesday]
			,[Wednesday] = CS.[Wednesday]
			,[Thursday] = CS.[Thursday]
			,[Friday] = CS.[Friday]
			,[Saturday] = CS.[Saturday]
			,[Sunday] = CS.[Sunday]
			,[UpdatedBy] = @UpsertedBy
			,[UpdatedOn] = GETUTCDATE()
		FROM (SELECT TOP 1 * FROM @ClassroomSchedule) CS
		WHERE [Id] = @ClassroomScheduleId;

	END

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Core_ClassroomStudent_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Core_ClassroomStudent_Upsert]
	@ClassroomId INT,
	@ClassroomStudents [dbo].[ClassroomStudentDataType] READONLY,
	@DepartmentId INT,
	@UpsertedBy NVARCHAR(255)
AS
BEGIN

	-- DELETE REMOVED STUDENTS FROM CLASSRROM
	DELETE CS
	FROM [dbo].[ClassroomStudent] CS
	LEFT OUTER JOIN @ClassroomStudents _CS
		ON (@ClassroomId = CS.[ClassroomId] AND _CS.[StudentId] = CS.[StudentId])
	WHERE
		CS.[ClassroomId] = @ClassroomId
		AND _CS.[StudentId] IS NULL;

	-- UPDATE STUDENTS FROM CLASSRROM
	UPDATE CS
	SET
		[StudentIndex] = _CS.[StudentIndex]
		,[UpdatedBy] = @UpsertedBy
		,[UpdatedOn] = GETUTCDATE()
	FROM [dbo].[ClassroomStudent] CS
	INNER JOIN  @ClassroomStudents _CS
		ON (@ClassroomId = CS.[ClassroomId] AND _CS.[StudentId] = CS.[StudentId]);

	-- ADD  NEW STUDENTS TO CLASSRROM
	INSERT INTO [dbo].[ClassroomStudent]
		([ClassroomId], [StudentId], [StudentIndex], [CreatedBy], [CreatedOn])
	SELECT
		@ClassroomId
		,_CS.[StudentId]
		,_CS.[StudentIndex]
		,@UpsertedBy
		,GETUTCDATE()
	FROM @ClassroomStudents _CS
	LEFT OUTER JOIN [dbo].[ClassroomStudent] CS
		ON (CS.[StudentId] = _CS.[StudentId] AND CS.[ClassroomId] = @ClassroomId)
	WHERE CS.[StudentId] IS NULL;

	-- CREATE USER DEPARTMENT ROLE FOR STUDENTS	
	DECLARE @RoleSku NVARCHAR(255) = 'class_student';
	DECLARE @RoleId INT = (SELECT Id FROM Role WHERE Sku=@RoleSku);
	
	IF @RoleId IS NULL
	BEGIN
		DECLARE @ErrorMsg NVARCHAR(255);			
		SET @ErrorMsg='Role with Sku ' + @RoleSku + ' not exists';			
		RAISERROR(@ErrorMsg, 1, 1);
	END
	
	DECLARE @UserDepartmentRole UserDepartmentRoleType;

	INSERT INTO @UserDepartmentRole(Id, DepartmentId, RoleId, UserId)
	SELECT 0, @DepartmentId, @RoleId, _CS.StudentId
	FROM @ClassroomStudents _CS
	LEFT OUTER JOIN [dbo].[UserDepartmentRole] UDR
		ON (UDR.UserId = _CS.StudentId AND UDR.DepartmentId = @DepartmentId AND UDR.RoleId = @RoleId)
	WHERE UDR.[Id] IS NULL;
	
	EXEC [dbo].[usp_Api_UserDepartmentRole_Add] @UserDepartmentRole;

END;
GO
/****** Object:  StoredProcedure [dbo].[usp_Core_ClassroomTrainer_Add]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Core_ClassroomTrainer_Add]
(
	@DepartmentId INT,
	@InstructorId NVARCHAR(255)
)
AS
BEGIN
	DECLARE @RoleSku NVARCHAR(255) = 'class_trainer';
	DECLARE @RoleId INT = (SELECT Id FROM Role WHERE Sku=@RoleSku);
	
	IF @RoleId IS NULL
	BEGIN
		DECLARE @ErrorMsg NVARCHAR(255);			
		SET @ErrorMsg='Role with Sku ' + @RoleSku + ' not exists';			
		RAISERROR(@ErrorMsg, 1, 1);
	END

	IF NOT EXISTS (SELECT TOP 1 1 FROM [dbo].[UserDepartmentRole] WHERE DepartmentId = @DepartmentId AND UserId = @InstructorId AND RoleId = @RoleId)
	BEGIN
		DECLARE @UserDepartmentRole UserDepartmentRoleType;

		INSERT INTO @UserDepartmentRole(Id, DepartmentId, RoleId, UserId)
		VALUES (0, @DepartmentId, @RoleId, @InstructorId);

		EXEC [dbo].[usp_Api_UserDepartmentRole_Add] @UserDepartmentRole;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Core_ClassroomVmTools_Upsert]    Script Date: 12/10/2023 15:35:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Core_ClassroomVmTools_Upsert]
	@ClassroomId INT,
	@VmToolVersionIds [dbo].[IdsList] READONLY
AS
BEGIN
    MERGE INTO [dbo].[ClassroomVmTools] as Target 
    USING (SELECT [Id] FROM @VmToolVersionIds) as SOURCE
    on Target.VmToolVersionId = SOURCE.Id and Target.ClassroomId = @ClassroomId
    WHEN NOT MATCHED BY SOURCE and Target.ClassroomId = @ClassroomId THEN 
    DELETE 
    WHEN NOT MATCHED BY TARGET THEN 
    INSERT ([ClassroomId],[VmToolVersionId])
    VALUES (@ClassroomId, [Id])
    ;
END;
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=N'refactoring log' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'__RefactorLog'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Represent Rg Index defined during creation process - to improve' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ClassroomConfiguration', @level2type=N'COLUMN',@level2name=N'RgIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'microsoft_database_tools_support', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sysdiagrams'
GO
ALTER DATABASE [for-virtualeo-testing-name4] SET  READ_WRITE 
GO
