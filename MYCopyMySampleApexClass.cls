public class MySampleApexClass {       //Class definition and body
   public static Integer myValue = 0;  //Class Member variable
   public static String myString = ''; //Class Member variable
	
	public static void mainMethodDupe(){
		System.out.pringln("new method creation in the class");
		int i=0;
		int j=3;
		int k=i+j;
		System.out.println(" K Value = "+k)
	}
	
	public static Integer getCalculatedValue () {
   // Method definition and body
   // do some calculation
      myValue = myValue+10;
      return myValue;
   }
   
   public static void getCalculatedValue () {
    
     
   }
	public static Integer getCalculatedValue () {
   // Method definition and body
   // do some calculation
      return myValue;
   }
		public static Integer getCalculatedValue () {
   // Method definition and body
   // do some calculation
      return myValue;
   }
}
