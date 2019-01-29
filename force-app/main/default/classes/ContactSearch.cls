public class ContactSearch {
    public static List<Contact > searchForContacts(String str1,String str2){
        Contact[] contacts = [SELECT ID,Name   
                          FROM Contact WHERE LastName=:str1 and MailingPostalCode=:str2 ]; 
        return contacts;
    }
}