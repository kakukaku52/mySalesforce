public class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String str1){
        List<List<SObject>> object_list = [FIND :str1 IN ALL FIELDS RETURNING Contact(Name),lead(Name)];
            return object_list;
    }
}