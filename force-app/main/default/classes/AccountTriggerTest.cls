@isTest
public class AccountTriggerTest {
    @isTest static void TestCreateNewAccountInBulk(){
        List<Account> accts = new List<Account>();
        for(Integer i=0; i < 200; i++) {
            Account acct = new Account(Name='Test Account'+i,BillingState='CA');
            accts.add(acct);
        }
        System.Test.startTest();
        insert accts;
        System.Test.stopTest();
        for (Account a:accts){
                System.assertEquals('CA', a.ShippingState, 'ERROR');
            }
    }
}