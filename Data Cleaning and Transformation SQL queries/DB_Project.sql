USE [master]
GO
/****** Object:  Database [project]    Script Date: 4/24/2020 5:44:10 AM ******/
CREATE DATABASE [project]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SS2019\MSSQL\DATA\project.mdf' , SIZE = 3416064KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'project_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SS2019\MSSQL\DATA\project_log.ldf' , SIZE = 1253376KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [project] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project] SET ARITHABORT OFF 
GO
ALTER DATABASE [project] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [project] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project] SET  DISABLE_BROKER 
GO
ALTER DATABASE [project] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project] SET RECOVERY FULL 
GO
ALTER DATABASE [project] SET  MULTI_USER 
GO
ALTER DATABASE [project] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [project] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'project', N'ON'
GO
ALTER DATABASE [project] SET QUERY_STORE = OFF
GO
USE [project]
GO
/****** Object:  Table [dbo].[final_table_hha]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_table_hha](
	[Provider ID] [varchar](50) NULL,
	[Agency Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Total Episodes (non-LUPA)] [int] NULL,
	[Distinct Beneficiaries (non-LUPA)] [int] NULL,
	[Average Number of Total Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Skilled Nursing Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of PT Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of OT Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of  ST Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Home Health Aide Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Medical-Social Visits Per Episode (non-LUPA)] [float] NULL,
	[Total HHA Charge Amount (non-LUPA)] [int] NULL,
	[Total HHA Medicare Payment Amount (non-LUPA)] [int] NULL,
	[Total HHA Medicare Standard Payment Amount (non-LUPA)] [int] NULL,
	[Outlier Payments as a Percent of Medicare Payment Amount (non-LUPA)] [float] NULL,
	[Total LUPA Episodes] [int] NULL,
	[Total HHA Medicare Payment Amount for LUPAs] [int] NULL,
	[Average Age] [float] NULL,
	[Male Beneficiaries] [int] NULL,
	[Female Beneficiaries] [int] NULL,
	[Nondual Beneficiaries] [int] NULL,
	[Dual Beneficiaries] [int] NULL,
	[White Beneficiaries] [int] NULL,
	[Black Beneficiaries] [int] NULL,
	[Asian Pacific Islander Beneficiaries] [int] NULL,
	[Hispanic Beneficiaries] [int] NULL,
	[American Indian or Alaska Native Beneficiaries] [int] NULL,
	[Other  Unknown Beneficiaries] [int] NULL,
	[Average HCC Score] [float] NULL,
	[Percent of Beneficiaries with Atrial Fibrillation] [float] NULL,
	[Percent of Beneficiaries with Alzheimer's] [float] NULL,
	[Percent of Beneficiaries with Asthma] [float] NULL,
	[Percent of Beneficiaries with Cancer] [float] NULL,
	[Percent of Beneficiaries with CHF] [float] NULL,
	[Percent of Beneficiaries with Chronic Kidney Disease] [float] NULL,
	[Percent of Beneficiaries with COPD] [float] NULL,
	[Percent of Beneficiaries with Depression] [float] NULL,
	[Percent of Beneficiaries with Diabetes] [float] NULL,
	[Percent of Beneficiaries with Hyperlipidemia] [float] NULL,
	[Percent of Beneficiaries with Hypertension] [float] NULL,
	[Percent of Beneficiaries with IHD] [float] NULL,
	[Percent of Beneficiaries with Osteoporosis] [float] NULL,
	[Percent of Beneficiaries with RA OA] [float] NULL,
	[Percent of Beneficiaries with Schizophrenia] [float] NULL,
	[Percent of Beneficiaries with Stroke] [float] NULL,
	[Year] [nvarchar](4) NULL,
	[unique id] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[final_table_hos]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_table_hos](
	[Provider ID] [varchar](50) NULL,
	[Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[ZIP Code] [varchar](255) NULL,
	[HRR] [varchar](255) NULL,
	[Hospice beneficiaries] [int] NULL,
	[Total Days] [int] NULL,
	[Total Medicare Payment Amount] [float] NULL,
	[Total Medicare Standard Payment Amount] [float] NULL,
	[Total Charge Amount] [float] NULL,
	[Percent Routine Home Care Days] [float] NULL,
	[Physician Services] [int] NULL,
	[Home Health Visit Hours per Day] [float] NULL,
	[Skilled Nursing Visit Hours per Day] [float] NULL,
	[Social Service Visit Hours per Day] [float] NULL,
	[Total Live Discharges] [int] NULL,
	[Hospice beneficiaries with 7 or fewer hospice care days] [int] NULL,
	[Hospice beneficiaries with more than 60 hospice care days] [int] NULL,
	[Hospice beneficiaries with more than 180 hospice care days] [int] NULL,
	[Home Health Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Skilled Nursing Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Social Service Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Average Age] [float] NULL,
	[Male hospice beneficiaries] [int] NULL,
	[Female hospice beneficiaries] [int] NULL,
	[White hospice beneficiaries] [int] NULL,
	[Black hospice beneficiaries] [int] NULL,
	[Asian hospice beneficiaries] [int] NULL,
	[Hispanic hospice beneficiaries] [int] NULL,
	[Other unknown race hospice beneficiaries] [int] NULL,
	[Medicare Advantage hospice beneficiaries] [int] NULL,
	[Medicaid Eligible hospice beneficiaries] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of cancer] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of dementia] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of stroke] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of circulatory heart disease] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of respiratory disease] [int] NULL,
	[Hospice beneficiaries with other primary diagnoses ] [int] NULL,
	[Site-of-service - Home hospice beneficiaries] [int] NULL,
	[Site-of-service - Assisted Living Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Long-term-care or non-skilled Nursing Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Skilled Nursing Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Inpatient Hospital hospice beneficiaries] [int] NULL,
	[Site-of-service - Inpatient Hospice hospice beneficiaries] [int] NULL,
	[Site-of-service - Other Facility hospice beneficiaries] [int] NULL,
	[Year] [nvarchar](4) NULL,
	[unique id] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[final_table_imp]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_table_imp](
	[DRG Definition] [varchar](255) NULL,
	[Provider Id] [varchar](50) NULL,
	[Provider Name] [varchar](255) NULL,
	[Provider Street Address] [varchar](255) NULL,
	[Provider City] [varchar](255) NULL,
	[Provider State] [varchar](255) NULL,
	[Provider Zip Code] [varchar](255) NULL,
	[Hospital Referral Region (HRR) Description] [varchar](255) NULL,
	[Total Discharges] [int] NULL,
	[Average Covered Charges] [float] NULL,
	[Average Total Payments] [float] NULL,
	[Average Medicare Payments] [float] NULL,
	[Year] [nvarchar](4) NULL,
	[unique id] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[final_table_Nurse]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_table_Nurse](
	[Provider ID] [varchar](50) NULL,
	[Facility Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Total Stays] [int] NULL,
	[Distinct Beneficiaries Per Provider] [int] NULL,
	[Average Length of Stay (Days)] [float] NULL,
	[Total SNF Charge Amount] [int] NULL,
	[Total SNF Medicare Allowed Amount] [int] NULL,
	[Total SNF Medicare Payment Amount] [int] NULL,
	[Total SNF Medicare Standard Payment Amount] [int] NULL,
	[Average Age] [float] NULL,
	[Male Beneficiaries] [int] NULL,
	[Female Beneficiaries] [int] NULL,
	[Nondual Beneficiaries] [int] NULL,
	[Dual Beneficiaries] [int] NULL,
	[White Beneficiaries] [int] NULL,
	[Black Beneficiaries] [int] NULL,
	[Asian Pacific Islander Beneficiaries] [int] NULL,
	[Hispanic Beneficiaries] [int] NULL,
	[American Indian or Alaska Native Beneficiaries] [int] NULL,
	[Other  Unknown Beneficiaries] [int] NULL,
	[Average HCC Score] [float] NULL,
	[Percent of Beneficiaries with Atrial Fibrillation] [float] NULL,
	[Percent of Beneficiaries with Alzheimer's] [float] NULL,
	[Percent of Beneficiaries with Asthma] [float] NULL,
	[Percent of Beneficiaries with Cancer] [float] NULL,
	[Percent of Beneficiaries with CHF] [float] NULL,
	[Percent of Beneficiaries with Chronic Kidney Disease] [float] NULL,
	[Percent of Beneficiaries with COPD] [float] NULL,
	[Percent of Beneficiaries with Depression] [float] NULL,
	[Percent of Beneficiaries with Diabetes] [float] NULL,
	[Percent of Beneficiaries with Hyperlipidemia] [float] NULL,
	[Percent of Beneficiaries with Hypertension] [float] NULL,
	[Percent of Beneficiaries with IHD] [float] NULL,
	[Percent of Beneficiaries with Osteoporosis] [float] NULL,
	[Percent of Beneficiaries with RA OA] [float] NULL,
	[Percent of Beneficiaries with Schizophrenia] [float] NULL,
	[Percent of Beneficiaries with Stroke] [float] NULL,
	[Year] [nvarchar](4) NULL,
	[unique id] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[final_table_out]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[final_table_out](
	[Provider ID] [varchar](50) NULL,
	[Provider Name] [varchar](255) NULL,
	[Provider Street Address] [varchar](255) NULL,
	[Provider City] [varchar](255) NULL,
	[Provider State] [varchar](255) NULL,
	[Provider Zip Code] [varchar](255) NULL,
	[Provider HRR] [varchar](255) NULL,
	[APC] [varchar](255) NULL,
	[APC Description] [varchar](255) NULL,
	[Beneficiaries] [int] NULL,
	[Comprehensive APC Services] [int] NULL,
	[Average Estimated Total Submitted Charges] [float] NULL,
	[Average Medicare Allowed Amount] [float] NULL,
	[Average Medicare Payment Amount] [float] NULL,
	[Outlier Comprehensive APC Services] [int] NULL,
	[Average Medicare Outlier Amount] [float] NULL,
	[Year] [nvarchar](4) NULL,
	[unique id] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[out_2]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[out_2](
	[apc_id] [int] NULL,
	[unique id] [varchar](255) NULL,
	[APC] [varchar](255) NULL,
	[APC Description] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider_address]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider_address](
	[unique id] [varchar](255) NULL,
	[Name of the provider] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[run_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_HHA_2015]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_HHA_2015](
	[Provider ID] [varchar](50) NULL,
	[Agency Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Total Episodes (non-LUPA)] [int] NULL,
	[Distinct Beneficiaries (non-LUPA)] [int] NULL,
	[Average Number of Total Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Skilled Nursing Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of PT Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of OT Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of  ST Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Home Health Aide Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Medical-Social Visits Per Episode (non-LUPA)] [float] NULL,
	[Total HHA Charge Amount (non-LUPA)] [int] NULL,
	[Total HHA Medicare Payment Amount (non-LUPA)] [int] NULL,
	[Total HHA Medicare Standard Payment Amount (non-LUPA)] [int] NULL,
	[Outlier Payments as a Percent of Medicare Payment Amount (non-LUPA)] [float] NULL,
	[Total LUPA Episodes] [int] NULL,
	[Total HHA Medicare Payment Amount for LUPAs] [int] NULL,
	[Average Age] [float] NULL,
	[Male Beneficiaries] [int] NULL,
	[Female Beneficiaries] [int] NULL,
	[Nondual Beneficiaries] [int] NULL,
	[Dual Beneficiaries] [int] NULL,
	[White Beneficiaries] [int] NULL,
	[Black Beneficiaries] [int] NULL,
	[Asian Pacific Islander Beneficiaries] [int] NULL,
	[Hispanic Beneficiaries] [int] NULL,
	[American Indian or Alaska Native Beneficiaries] [int] NULL,
	[Other  Unknown Beneficiaries] [int] NULL,
	[Average HCC Score] [float] NULL,
	[Percent of Beneficiaries with Atrial Fibrillation] [float] NULL,
	[Percent of Beneficiaries with Alzheimer's] [float] NULL,
	[Percent of Beneficiaries with Asthma] [float] NULL,
	[Percent of Beneficiaries with Cancer] [float] NULL,
	[Percent of Beneficiaries with CHF] [float] NULL,
	[Percent of Beneficiaries with Chronic Kidney Disease] [float] NULL,
	[Percent of Beneficiaries with COPD] [float] NULL,
	[Percent of Beneficiaries with Depression] [float] NULL,
	[Percent of Beneficiaries with Diabetes] [float] NULL,
	[Percent of Beneficiaries with Hyperlipidemia] [float] NULL,
	[Percent of Beneficiaries with Hypertension] [float] NULL,
	[Percent of Beneficiaries with IHD] [float] NULL,
	[Percent of Beneficiaries with Osteoporosis] [float] NULL,
	[Percent of Beneficiaries with RA OA] [float] NULL,
	[Percent of Beneficiaries with Schizophrenia] [float] NULL,
	[Percent of Beneficiaries with Stroke] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_HHA_2016]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_HHA_2016](
	[Provider ID] [varchar](50) NULL,
	[Agency Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Total Episodes (non-LUPA)] [int] NULL,
	[Distinct Beneficiaries (non-LUPA)] [int] NULL,
	[Average Number of Total Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Skilled Nursing Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of PT Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of OT Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of  ST Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Home Health Aide Visits Per Episode (non-LUPA)] [float] NULL,
	[Average Number of Medical-Social Visits Per Episode (non-LUPA)] [float] NULL,
	[Total HHA Charge Amount (non-LUPA)] [int] NULL,
	[Total HHA Medicare Payment Amount (non-LUPA)] [int] NULL,
	[Total HHA Medicare Standard Payment Amount (non-LUPA)] [int] NULL,
	[Outlier Payments as a Percent of Medicare Payment Amount (non-LUPA)] [float] NULL,
	[Total LUPA Episodes] [int] NULL,
	[Total HHA Medicare Payment Amount for LUPAs] [int] NULL,
	[Average Age] [float] NULL,
	[Male Beneficiaries] [int] NULL,
	[Female Beneficiaries] [int] NULL,
	[Nondual Beneficiaries] [int] NULL,
	[Dual Beneficiaries] [int] NULL,
	[White Beneficiaries] [int] NULL,
	[Black Beneficiaries] [int] NULL,
	[Asian Pacific Islander Beneficiaries] [int] NULL,
	[Hispanic Beneficiaries] [int] NULL,
	[American Indian or Alaska Native Beneficiaries] [int] NULL,
	[Other  Unknown Beneficiaries] [int] NULL,
	[Average HCC Score] [float] NULL,
	[Percent of Beneficiaries with Atrial Fibrillation] [float] NULL,
	[Percent of Beneficiaries with Alzheimer's] [float] NULL,
	[Percent of Beneficiaries with Asthma] [float] NULL,
	[Percent of Beneficiaries with Cancer] [float] NULL,
	[Percent of Beneficiaries with CHF] [float] NULL,
	[Percent of Beneficiaries with Chronic Kidney Disease] [float] NULL,
	[Percent of Beneficiaries with COPD] [float] NULL,
	[Percent of Beneficiaries with Depression] [float] NULL,
	[Percent of Beneficiaries with Diabetes] [float] NULL,
	[Percent of Beneficiaries with Hyperlipidemia] [float] NULL,
	[Percent of Beneficiaries with Hypertension] [float] NULL,
	[Percent of Beneficiaries with IHD] [float] NULL,
	[Percent of Beneficiaries with Osteoporosis] [float] NULL,
	[Percent of Beneficiaries with RA OA] [float] NULL,
	[Percent of Beneficiaries with Schizophrenia] [float] NULL,
	[Percent of Beneficiaries with Stroke] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_HOS_2015]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_HOS_2015](
	[Provider ID] [varchar](50) NULL,
	[Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[ZIP Code] [varchar](255) NULL,
	[HRR] [varchar](255) NULL,
	[Hospice beneficiaries] [int] NULL,
	[Total Days] [int] NULL,
	[Total Medicare Payment Amount] [float] NULL,
	[Total Medicare Standard Payment Amount] [float] NULL,
	[Total Charge Amount] [float] NULL,
	[Percent Routine Home Care Days] [float] NULL,
	[Physician Services] [int] NULL,
	[Home Health Visit Hours per Day] [float] NULL,
	[Skilled Nursing Visit Hours per Day] [float] NULL,
	[Social Service Visit Hours per Day] [float] NULL,
	[Total Live Discharges] [int] NULL,
	[Hospice beneficiaries with 7 or fewer hospice care days] [int] NULL,
	[Hospice beneficiaries with more than 60 hospice care days] [int] NULL,
	[Hospice beneficiaries with more than 180 hospice care days] [int] NULL,
	[Home Health Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Skilled Nursing Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Social Service Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Average Age] [float] NULL,
	[Male hospice beneficiaries] [int] NULL,
	[Female hospice beneficiaries] [int] NULL,
	[White hospice beneficiaries] [int] NULL,
	[Black hospice beneficiaries] [int] NULL,
	[Asian hospice beneficiaries] [int] NULL,
	[Hispanic hospice beneficiaries] [int] NULL,
	[Other unknown race hospice beneficiaries] [int] NULL,
	[Medicare Advantage hospice beneficiaries] [int] NULL,
	[Medicaid Eligible hospice beneficiaries] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of cancer] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of dementia] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of stroke] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of circulatory heart disease] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of respiratory disease] [int] NULL,
	[Hospice beneficiaries with other primary diagnoses ] [int] NULL,
	[Site-of-service - Home hospice beneficiaries] [int] NULL,
	[Site-of-service - Assisted Living Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Long-term-care or non-skilled Nursing Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Skilled Nursing Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Inpatient Hospital hospice beneficiaries] [int] NULL,
	[Site-of-service - Inpatient Hospice hospice beneficiaries] [int] NULL,
	[Site-of-service - Other Facility hospice beneficiaries] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_HOS_2016]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_HOS_2016](
	[Provider ID] [varchar](50) NULL,
	[Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[ZIP Code] [varchar](255) NULL,
	[HRR] [varchar](255) NULL,
	[Hospice beneficiaries] [int] NULL,
	[Total Days] [int] NULL,
	[Total Medicare Payment Amount] [float] NULL,
	[Total Medicare Standard Payment Amount] [float] NULL,
	[Total Charge Amount] [float] NULL,
	[Percent Routine Home Care Days] [float] NULL,
	[Physician Services] [int] NULL,
	[Home Health Visit Hours per Day] [float] NULL,
	[Skilled Nursing Visit Hours per Day] [float] NULL,
	[Social Service Visit Hours per Day] [float] NULL,
	[Total Live Discharges] [int] NULL,
	[Hospice beneficiaries with 7 or fewer hospice care days] [int] NULL,
	[Hospice beneficiaries with more than 60 hospice care days] [int] NULL,
	[Hospice beneficiaries with more than 180 hospice care days] [int] NULL,
	[Home Health Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Skilled Nursing Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Social Service Visit Hours per Day During Week Prior to Death] [float] NULL,
	[Average Age] [float] NULL,
	[Male hospice beneficiaries] [int] NULL,
	[Female hospice beneficiaries] [int] NULL,
	[White hospice beneficiaries] [int] NULL,
	[Black hospice beneficiaries] [int] NULL,
	[Asian hospice beneficiaries] [int] NULL,
	[Hispanic hospice beneficiaries] [int] NULL,
	[Other unknown race hospice beneficiaries] [int] NULL,
	[Medicare Advantage hospice beneficiaries] [int] NULL,
	[Medicaid Eligible hospice beneficiaries] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of cancer] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of dementia] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of stroke] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of circulatory heart disease] [int] NULL,
	[Hospice beneficiaries with a primary diagnosis of respiratory disease] [int] NULL,
	[Hospice beneficiaries with other primary diagnoses ] [int] NULL,
	[Site-of-service - Home hospice beneficiaries] [int] NULL,
	[Site-of-service - Assisted Living Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Long-term-care or non-skilled Nursing Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Skilled Nursing Facility hospice beneficiaries] [int] NULL,
	[Site-of-service - Inpatient Hospital hospice beneficiaries] [int] NULL,
	[Site-of-service - Inpatient Hospice hospice beneficiaries] [int] NULL,
	[Site-of-service - Other Facility hospice beneficiaries] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_Imp_2015]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_Imp_2015](
	[DRG Definition] [varchar](255) NULL,
	[Provider Id] [varchar](50) NULL,
	[Provider Name] [varchar](255) NULL,
	[Provider Street Address] [varchar](255) NULL,
	[Provider City] [varchar](255) NULL,
	[Provider State] [varchar](255) NULL,
	[Provider Zip Code] [varchar](255) NULL,
	[Hospital Referral Region (HRR) Description] [varchar](255) NULL,
	[Total Discharges] [int] NULL,
	[Average Covered Charges] [float] NULL,
	[Average Total Payments] [float] NULL,
	[Average Medicare Payments] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_Imp_2016]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_Imp_2016](
	[DRG Definition] [varchar](255) NULL,
	[Provider Id] [varchar](50) NULL,
	[Provider Name] [varchar](255) NULL,
	[Provider Street Address] [varchar](255) NULL,
	[Provider City] [varchar](255) NULL,
	[Provider State] [varchar](255) NULL,
	[Provider Zip Code] [varchar](255) NULL,
	[Hospital Referral Region (HRR) Description] [varchar](255) NULL,
	[Total Discharges] [int] NULL,
	[Average Covered Charges] [float] NULL,
	[Average Total Payments] [float] NULL,
	[Average Medicare Payments] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_Nurse_2015]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_Nurse_2015](
	[Provider ID] [varchar](50) NULL,
	[Facility Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Total Stays] [int] NULL,
	[Distinct Beneficiaries Per Provider] [int] NULL,
	[Average Length of Stay (Days)] [float] NULL,
	[Total SNF Charge Amount] [int] NULL,
	[Total SNF Medicare Allowed Amount] [int] NULL,
	[Total SNF Medicare Payment Amount] [int] NULL,
	[Total SNF Medicare Standard Payment Amount] [int] NULL,
	[Average Age] [float] NULL,
	[Male Beneficiaries] [int] NULL,
	[Female Beneficiaries] [int] NULL,
	[Nondual Beneficiaries] [int] NULL,
	[Dual Beneficiaries] [int] NULL,
	[White Beneficiaries] [int] NULL,
	[Black Beneficiaries] [int] NULL,
	[Asian Pacific Islander Beneficiaries] [int] NULL,
	[Hispanic Beneficiaries] [int] NULL,
	[American Indian or Alaska Native Beneficiaries] [int] NULL,
	[Other  Unknown Beneficiaries] [int] NULL,
	[Average HCC Score] [float] NULL,
	[Percent of Beneficiaries with Atrial Fibrillation] [float] NULL,
	[Percent of Beneficiaries with Alzheimer's] [float] NULL,
	[Percent of Beneficiaries with Asthma] [float] NULL,
	[Percent of Beneficiaries with Cancer] [float] NULL,
	[Percent of Beneficiaries with CHF] [float] NULL,
	[Percent of Beneficiaries with Chronic Kidney Disease] [float] NULL,
	[Percent of Beneficiaries with COPD] [float] NULL,
	[Percent of Beneficiaries with Depression] [float] NULL,
	[Percent of Beneficiaries with Diabetes] [float] NULL,
	[Percent of Beneficiaries with Hyperlipidemia] [float] NULL,
	[Percent of Beneficiaries with Hypertension] [float] NULL,
	[Percent of Beneficiaries with IHD] [float] NULL,
	[Percent of Beneficiaries with Osteoporosis] [float] NULL,
	[Percent of Beneficiaries with RA OA] [float] NULL,
	[Percent of Beneficiaries with Schizophrenia] [float] NULL,
	[Percent of Beneficiaries with Stroke] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_Nurse_2016]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_Nurse_2016](
	[Provider ID] [varchar](50) NULL,
	[Facility Name] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[Total Stays] [int] NULL,
	[Distinct Beneficiaries Per Provider] [int] NULL,
	[Average Length of Stay (Days)] [float] NULL,
	[Total SNF Charge Amount] [int] NULL,
	[Total SNF Medicare Allowed Amount] [int] NULL,
	[Total SNF Medicare Payment Amount] [int] NULL,
	[Total SNF Medicare Standard Payment Amount] [int] NULL,
	[Average Age] [float] NULL,
	[Male Beneficiaries] [int] NULL,
	[Female Beneficiaries] [int] NULL,
	[Nondual Beneficiaries] [int] NULL,
	[Dual Beneficiaries] [int] NULL,
	[White Beneficiaries] [int] NULL,
	[Black Beneficiaries] [int] NULL,
	[Asian Pacific Islander Beneficiaries] [int] NULL,
	[Hispanic Beneficiaries] [int] NULL,
	[American Indian or Alaska Native Beneficiaries] [int] NULL,
	[Other  Unknown Beneficiaries] [int] NULL,
	[Average HCC Score] [float] NULL,
	[Percent of Beneficiaries with Atrial Fibrillation] [float] NULL,
	[Percent of Beneficiaries with Alzheimer's] [float] NULL,
	[Percent of Beneficiaries with Asthma] [float] NULL,
	[Percent of Beneficiaries with Cancer] [float] NULL,
	[Percent of Beneficiaries with CHF] [float] NULL,
	[Percent of Beneficiaries with Chronic Kidney Disease] [float] NULL,
	[Percent of Beneficiaries with COPD] [float] NULL,
	[Percent of Beneficiaries with Depression] [float] NULL,
	[Percent of Beneficiaries with Diabetes] [float] NULL,
	[Percent of Beneficiaries with Hyperlipidemia] [float] NULL,
	[Percent of Beneficiaries with Hypertension] [float] NULL,
	[Percent of Beneficiaries with IHD] [float] NULL,
	[Percent of Beneficiaries with Osteoporosis] [float] NULL,
	[Percent of Beneficiaries with RA OA] [float] NULL,
	[Percent of Beneficiaries with Schizophrenia] [float] NULL,
	[Percent of Beneficiaries with Stroke] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_Out_2015]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_Out_2015](
	[Provider ID] [varchar](50) NULL,
	[Provider Name] [varchar](255) NULL,
	[Provider Street Address] [varchar](255) NULL,
	[Provider City] [varchar](255) NULL,
	[Provider State] [varchar](255) NULL,
	[Provider Zip Code] [varchar](255) NULL,
	[Provider HRR] [varchar](255) NULL,
	[APC] [varchar](255) NULL,
	[APC Description] [varchar](255) NULL,
	[Beneficiaries] [int] NULL,
	[Comprehensive APC Services] [int] NULL,
	[Average Estimated Total Submitted Charges] [float] NULL,
	[Average Medicare Allowed Amount] [float] NULL,
	[Average Medicare Payment Amount] [float] NULL,
	[Outlier Comprehensive APC Services] [int] NULL,
	[Average Medicare Outlier Amount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stag_Out_2016]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stag_Out_2016](
	[Provider ID] [varchar](50) NULL,
	[Provider Name] [varchar](255) NULL,
	[Provider Street Address] [varchar](255) NULL,
	[Provider City] [varchar](255) NULL,
	[Provider State] [varchar](255) NULL,
	[Provider Zip Code] [varchar](255) NULL,
	[Provider HRR] [varchar](255) NULL,
	[APC] [varchar](255) NULL,
	[APC Description] [varchar](255) NULL,
	[Beneficiaries] [int] NULL,
	[Comprehensive APC Services] [int] NULL,
	[Average Estimated Total Submitted Charges] [float] NULL,
	[Average Medicare Allowed Amount] [float] NULL,
	[Average Medicare Payment Amount] [float] NULL,
	[Outlier Comprehensive APC Services] [int] NULL,
	[Average Medicare Outlier Amount] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_2]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_2](
	[apc_id] [int] NULL,
	[unique id] [varchar](255) NULL,
	[APC] [varchar](255) NULL,
	[APC Description] [varchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_3]    Script Date: 4/24/2020 5:44:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_3](
	[unique id] [varchar](255) NULL,
	[Name of the provider] [varchar](255) NULL,
	[Street Address] [varchar](255) NULL,
	[City] [varchar](255) NULL,
	[State] [varchar](255) NULL,
	[Zip Code] [varchar](255) NULL,
	[run_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [project] SET  READ_WRITE 
GO
