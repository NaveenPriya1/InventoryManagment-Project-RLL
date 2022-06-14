/**********************************************************************************************************************************
    ** Datafix to update Columns in dbo.Students.Info

	** Author: Sairam
	** Create Date = 09-05-2022


**************************************************************************************************************************************/

USE Students

GO

Declare  @CreateUpdatedate DATETIME2(3),
        @StudentsRecordsBeforeUpdate int = 0,
		@StudentsRecordsAfterUpdate int = 0;


/*************************************************************************************************************************************************
   Begin : Mandatory Section for all Scripts
*************************************************************************************************************************************************/

 set @CreateUpdatedate =GETDATE();

/***************************************************************************************************************************************************
   End: Mandatory Section for all Scripts
****************************************************************************************************************************************************/
BEGIN TRAN


Select @StudentsRecordsBeforeUpdate = @StudentsRecordsBeforeUpdate+count(1)
from dbo.StudentsInfo 
where StudentID =1
and   StudentName = 'Sairam'
and    ParentName = 'Krishna Rao'
and    PhoneNumber = 7989274475

            
Update dbo.StudentsInfo
SET StudentName = 'Arjun',
    ParentName  = 'Balu',
	PhoneNumber = '8956321474',
	UpdateDate = @CreateUpdatedate
    from dbo.StudentsInfo 

    where AddressofStudent = 'kaviti'
	and   City   = 'Srikakulam'
	and   Country = 'India'

set @StudentsRecordsAfterUpdate = @StudentsRecordsAfterUpdate+@@ROWCOUNT

Select 'Records to be Updated in dbo.StudentsInfo' ,@StudentsRecordsBeforeUpdate

Select 'Records  Updated in dbo.StudentsInfo' ,@StudentsRecordsAfterUpdate



/***********************************************************************************************************************************************
  **Commit or Rollback- leave the below commented
 ***********************************************************************************************************************************************/

 --COMMIT TRAN
 --ROLLBACK TRAN

 






	             






