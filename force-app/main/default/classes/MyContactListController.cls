public class MyContactListController {
    @AuraEnabled
    public static List<Contact> getContacts(Id recordId){
      return [select Id, FirstName, LastName, Email, Phone from Contact where Id = :recordId ]  ;
    }
}