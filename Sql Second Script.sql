/**********************************************************************************************************************************
    ** Datafix to update Columns in ApplicationRegistration.Application

	** Author: Sairam
	** Create Date = 10-05-2022


**************************************************************************************************************************************/

USE KYHBE

GO

Declare  @CreateDate DATETIME2(3),
         @UpdateDate DATETIME2(3),
        @ApplicationRecordsBeforeInsert int = 0,
		@ApplicationRecordsAfterInsert int = 0;


/*************************************************************************************************************************************************
   Begin : Mandatory Section for all Scripts
*************************************************************************************************************************************************/

 set @CreateDate =GETDATE();
 set @UpdateDate = GETDATE();

/***************************************************************************************************************************************************
   End: Mandatory Section for all Scripts
****************************************************************************************************************************************************/
BEGIN TRAN


Select @ApplicationRecordsBeforeInsert = @ApplicationRecordsBeforeInsert+count(1)

INSERT INTO ApplicationRegistration.Application(ApplicantID,ApplicantName,ApplicantAddress,ApplicantFatherName,ApplicantMotherName,
Qualifications,MobileNumber,AadhaarNumber,CreateDate,UpdateDate)

VALUES  (1001, 'Sairam', 'Kaviti','   Krishna','  Indiramma',  'B-Tech',  7989274475,    564032157048,  @CreateDate,   @Updatedate),
        (1002, 'Kasi',  'Rajapuram',  'Anand',    'Gangamma',   'B-Tech' ,  8975649930,  79871236549,   @CreateDate,   @Updatedate),
		(1003, 'Arun',   'Kotturu',   'Ramana',    'Rani',      'B-Com' ,   7475641230,  3987897149,    @CreateDate,   @Updatedate),
	    (1004, 'Madhu',  'Benkili',    'JanakiRao',  'Sredevi',  'M -Tech',   6875641230,  522371236549, @CreateDate,  @Updatedate),
        (1005, 'Jagga',   'Karapadu',  'Raju',      'Janaki',     'Agri-B-Sc', 9875641230,  898258236549, @CreateDate,  @Updatedate),
        (1006, 'Lasya',   'Tuni'    ,  'Surendra',   'Gowri',     'MA' ,      7575641230,   59875536549,  @CreateDate,   @Updatedate),
        (1007,  'Ramu',   'Pragada',    'Pullaya',    'Pullamma',  'LLB' ,    9675641230,   49872236549,   @CreateDate,   @Updatedate);

Select @ApplicationRecordsAfterInsert = @ApplicationRecordsAfterInsert+@@ROWCOUNT


SELECT 'Records to be Inserted into ApplicationRegistration.Application ' , @ApplicationRecordsAfterInsert

SELECT 'Records Actually Inserted into ApplicationRegistration.Application ' , @ApplicationRecordsAfterInsert


		 





/***********************************************************************************************************************************************
  **Commit or Rollback- leave the below commented
 ***********************************************************************************************************************************************/

 --ROLLBACK TRAN
  --COMMIT TRAN


 






	             






