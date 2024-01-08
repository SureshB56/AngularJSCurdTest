
ALTER PROCEDURE [dbo].[UspUserDelete]
   
   @UserTableID INT  
  
    ,@IsSucced				BIGINT OUTPUT
AS

SET NOCOUNT ON;

BEGIN

BEGIN TRY

		BEGIN TRANSACTION
		   BEGIN
			Update UserTable  SET IsDelete =1 ,  Createddate = GETDATE()   Where 	UserTableID= @UserTableID
					    SET @IsSucced = 3
		  END 
		 
		 
		  COMMIT TRANSACTION

	END TRY

	BEGIN CATCH

		
		ROLLBACK TRANSACTION

		


	END CATCH

END


SET NOCOUNT OFF;
  



	
        
