//Challenge #3 
public class MyController {
	
    private Account account;
    
    public MyController() {
        account = [SELECT Id, Name FROM Account WHERE Id = :ApexPages.currentPage().
                  getParameters().get('id') LIMIT 1];
    }
    Public Account getAccount(){
        return account;
    }
}