import java.util.Scanner;

class Main {
  public static void main(String[] args) {
   Scanner input = new Scanner(System.in);
   String [] Array = {"", "", "", "", "", "", "", "", "", "", "", "",};
   
   
   System.out.println("Make a Madlib!"); 
   
   System.out.println("Enter a school subject:");
   Array[0] = input.nextLine();

   System.out.println("Enter an emotion:");
   Array[1] = input.nextLine();
    
   System.out.println("Enter a number:");
   Array[2] = input.nextLine();
   
   System.out.println("Enter a color:");
   Array[3] = input.nextLine();

   System.out.println("Enter a flying animal plural:");
   Array[4] = input.nextLine();
    
   System.out.println("Enter an item of clothing:");
   Array[5] = input.nextLine();

   System.out.println("Enter a body part plural:");
   Array[6] = input.nextLine();

   System.out.println("Enter a period of time:");
   Array[7] = input.nextLine();
    
   System.out.println("Enter the same school subject:");
   Array[8] = input.nextLine();
   
   System.out.println("Enter a writing utensil:");
   Array[9] = input.nextLine();

   System.out.println("Enter an animal plural:");
   Array[10] = input.nextLine();
    
   System.out.println("Enter an action:");
   Array[11] = input.nextLine();

    System.out.println("The Test \n We have a test today in " + Array[0] + ". I'm so " + Array[1] + "! I studied for " + Array[2] + " hours last night until the words in my book started to turn " + Array[3] + " . I tried to eat breakfast this morning, but it felt like there were " + Array[4] + " in my stomach. Then, when I went to put my " + Array[5] + " on, my " + Array[6] + " were shaking so badly I couldn't. \n After what feels like " + Array[7] + " , I get to " + Array[8] + " . When I sit down at my desk, I pull out my " + Array[9] + " and look at the first question: How do " + Array[10] + " " + Array[11] + "? \n I'm going to fail this test.");
  }
}