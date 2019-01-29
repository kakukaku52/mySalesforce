@isTest
public class TestRestrictContactByName {
    @isTest static void TestInsertContact(){
        System.Test.startTest();
        List<Contact> conts = new List<Contact>();
        Contact cont2 = new Contact(LastName='INVALIDNAME');
        Contact cont1 = new Contact(FirstName='Francesco', LastName='Riggio' , email='Test@test.com');
        conts.add(cont1);
        conts.add(cont2);
        try{
            
            insert conts;
        }catch(Exception ex){
            Boolean expectedException = ex.getMessage().contains('INVALIDNAME') ? true : false; 
            System.assertEquals(expectedException, true);
        }
        
        System.Test.stopTest();
    }
}