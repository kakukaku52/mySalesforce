public class Test {
    public static void test(){
        List<Account> cont = [select Id,Name from Account];
        String str = cont[0].Name;
            }
}