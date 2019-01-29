public class AccountUtils {
    public static List<Account> accountsByState (String state){
        List<Account> list_result = [select Id,Name from Account where BillingState =:state];
        return list_result;
    }
}