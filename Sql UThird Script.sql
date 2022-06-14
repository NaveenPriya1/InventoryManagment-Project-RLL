/********************************************************************************************************************************************

*********************************************************************************************************************************************/
USE KYHBE
GO

SET NOCOUNT ON

DECLARE	 @UpdateDate datetime2(3),
         @CreateDate datetime2(3),

		@CountBeforeApplicationInsert int = 0,
        @CountAfterApplicationInsert int = 0,


/**********************************************************************************************************************************************
*************************************************************************************************************************************************/

  set @CreateDate = GETDATE();
 set @UpdateDate = GETDATE();

/************************************************************************************************************************************************
*************************************************************************************************************************************************/
BEGIN TRAN

SELECT @CountBeforeApplicationInsert = @CountBeforeApplicationInsert + COUNT(1) 
FROM KYHBE.ApplicationRegistration.Application


INSERT INTO KYHBE.ApplicationRegistration.Application(ApplicantID,ApplicantName,ApplicantFatherName,ApplicantMotherName,Qualifications,
MobileNumber,AadhaarNumber,CreateDate,UpdateDate)
VALUES (1001,'GONAPA SAIRAM','KRISHNA RAO','INDIRAMMA','B-Tech',7680056988,564032157048,@CreateDate,@UpdateDate)


SELECT @CountAfterApplicationInsert = @CountAfterApplicationInsert + @@ROWCOUNT;

SELECT 'Records to  be Inserted in [ApplicationRegistration].[Application]' ,    @CountBeforeApplicationInsert


SELECT 'Records Inserted in [ApplicationRegistration].[Application]' ,    @CountAfterApplicationInsert 


/*********************************************************************************************************************************************
**********************************************************************************************************************************************/
--COMMIT TRAN
--ROLLBACK TRAN

   