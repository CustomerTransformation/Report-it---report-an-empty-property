USE [ProdCommunity]
GO

/****** Object:  StoredProcedure [dbo].[ReportItProc]    Script Date: 09/07/2019 16:35:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 04/02/2019
-- Description:	Captures Report it forms submitted for statistical purpose
-- =============================================
CREATE PROCEDURE [dbo].[ReportItProc]
	-- Add the parameters for the stored procedure here
@caseRef varchar(20),
@formName varchar(max),
@whatIssue varchar(max),
@goToCourt varchar(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	Declare @Date date
	SET @Date = GETDATE()

	INSERT INTO ReportIt (
	Date,
	caseRef,
	formName,
	whatIssue,
	goToCourt)

	Values(
	@Date,
	@caseRef,
	@formName,
	@whatIssue,
	@goToCourt)

END
GO

