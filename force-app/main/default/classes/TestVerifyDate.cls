@isTest
public class TestVerifyDate {
    @isTest static void CheckDatesTest(){
        Date date1 = system.today();
        Date date2 = date1.addDays(1);
        Date testdt = VerifyDate.CheckDates(date1, date2);
        Date newtestdt = Date.newInstance(2018, 11, 26);
        system.assertEquals(newtestdt,testdt);
    }
    @isTest static void CheckDatesTest2(){
        Date date2 = system.today();
        Date date1 = date2.addDays(1);
        Date testdt = VerifyDate.CheckDates(date1, date2);
        Date newtestdt = Date.newInstance(2018, 11, 30);
        system.assertEquals(newtestdt,testdt);
    }
}