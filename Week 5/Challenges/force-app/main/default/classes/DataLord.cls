public class DataLord {
    //SOSL
    //1
    public static Integer NumAccounts(){
    List<Account> accs = new List <Account>();
       accs = [SELECT Id FROM Account];
       return accs.size();
    }
    //2
    public static Integer NumHot(){
    List<Account> accRating = new List<Account>();
        accRating = [SELECT Id FROM Account WHERE Rating = 'Hot'];
        return accRating.size();
    }
    //4
    public static void BigFive(){
    List<Account> topAccts = new List <Account>();
        topAccts = [SELECT Name FROM Account ORDER BY AnnualRevenue DESC NULLS last LIMIT 5];
       System.debug(topAccts);
    }
    //3
    public static Integer NumComplex(){
        List<Account> Accts = new List<Account>();
        Accts = [SELECT Name FROM Account WHERE Name LIKE '%&%'];
        return Accts.size();
    }
    //5
    public static Opportunity LastBigOpportunity(){
       	Opportunity bigOpp = [SELECT Name FROM Opportunity WHERE Amount > 100000 ORDER BY CloseDate DESC NULLS last LIMIT 1];
        return bigOpp; 
    }
    //6
    public static List<Contact> MajorPlayers(){
        List<Contact> majPlay = new List<Contact>();
        majPlay = [SELECT Name FROM Contact WHERE Account.Rating = 'Hot'];
        return majPlay;   
    }
    //7
     public static String MostPopularAccount(){
    List<Account> mostPop= [SELECT Name, (SELECT AccountId FROM Contacts) FROM Account];
         Integer mp = 0;
         String mpa = '';
         for (Account mPop: mostPop){
             if( mp < mPop.Contacts.size()){
               mp = mPop.Contacts.size();  
               mpa = mPop.Name;
             } 
          }
		 return mpa; 
          
        
    }
}