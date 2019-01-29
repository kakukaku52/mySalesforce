public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer int1,String str1){
        List<Contact> conts = new List<Contact>();
        
        for (integer i=0;i<int1;i++){
            Contact cont = new Contact(FirstName='TEST' + i);
            conts.add(cont);
        }
        return conts;
    }
}