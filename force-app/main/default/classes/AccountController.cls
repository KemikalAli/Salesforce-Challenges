//challenge 7 & 8 //

public with sharing class AccountController {

    public Account a {get; set;}
    
    public List<Account> samepage {get; set;}
    
    public List<Contact> newpage {get;set;}
    
    public AccountController(){
        a = new Account();
    }
    public void save(){
        insert a;
       
     newpage= [SELECT Name FROM Contact WHERE AccountId= :a.Id] ;   
	}
     
}