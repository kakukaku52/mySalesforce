public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> accts){
        List<Account> newAccountList = new List<Account>();
        for ( Account acct : accts){
            if(acct.ShippingState != acct.BillingState){
                acct.ShippingState = acct.BillingState;
            }
        }
    }
}