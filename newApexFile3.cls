public class MyHelloWorld {
   public static void applyDiscount(Book__c[] books) {
      for (Book__c b :books){
         system.out.print();
         b.Price__c *= 0.9;
      }
   }
}
