public class MySampleApexClass {       //Class definition and body
   public static Integer myValue = 0;  //Class Member variable
   public static String myString = '';
   public static Integer getCalculatedValue () {
@isTest 
private class HelloWorldTestClass {
    static testMethod void validateHelloWorld() {
       Book__c b = new Book__c(Name='Behind the Cloud', Price__c=100);
       System.debug('Price before inserting new book: ' + b.Price__c);

       // Insert book
       insert b;
    
       // Retrieve the new book
       b = [SELECT Price__c FROM Book__c WHERE Id =:b.Id];
       System.debug('Price after trigger fired: ' + b.Price__c);

       // Test that the trigger correctly updated the price
       System.assertEquals(90, b.Price__c);
    }
}}}