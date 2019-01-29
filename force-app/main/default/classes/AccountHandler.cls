public with sharing class AccountHandler {
    public static void CreateNewOpportunity (List<Account> accts){
        for (Account a :accts){
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + 'Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.today().addMonths(1);
            //testtest
            insert opp;
        }
    }
}