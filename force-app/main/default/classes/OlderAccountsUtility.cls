public class OlderAccountsUtility {
    public static void updateOlderAccounts(){
        Account[] oldAccounts = [select Id,Description from Account order by CreatedDate asc limit 5];
    for (Account acct : oldAccounts) {
          acct.Description = 'Heritage Account';
      }
    update oldAccounts;
    }
}