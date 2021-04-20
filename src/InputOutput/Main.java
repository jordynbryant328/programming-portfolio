import java.io.*;
import java.util.Scanner;
class Main {
  public static void main(String[] args) throws IOException {
   
   Scanner input = new Scanner(System.in);
   String [] Array = {"", "", "", "", "", "", "", "", "", ""};
   FileOutputStream out = null;
   BufferedWriter writer = new BufferedWriter(new FileWriter("output.txt"));
   
   System.out.println("\t Your Favorites");
   

   System.out.println("What is your favorite animal?");
   Array[0] = input.nextLine();
    
   System.out.println("What is your favorite food?");
   Array[1] = input.nextLine();
   
   System.out.println("What is your favorite sport?");
   Array[2] = input.nextLine();

   System.out.println("What is your favorite school subject?");
   Array[3] = input.nextLine();
    
   System.out.println("What is your favorite season?");
   Array[4] = input.nextLine();

   System.out.println("Why is " + Array[4]+ " your favorite season?");
   Array[5] = input.nextLine();

   System.out.println("What is your favorite color?");
   Array[6] = input.nextLine();
    
   System.out.println("What does the color " + Array[6]+ " remind you of?");
   Array[7] = input.nextLine();
   
   System.out.println("What is your favorite place?");
   Array[8] = input.nextLine();

   System.out.println("What do you do there?");
   Array[9] = input.nextLine();
   
   String str = "\t Your Favorites \n What is your favorite animal? " + Array [0] + "\n What is your favorite food? " + Array[1] + "\n What is your favorite sport? " + Array[2] + "\n What is your favorite school subject? " + Array[3] + "\n What is your favorite season? " + Array[4] + "\n Why is " + Array[4]+ " your favorite season? " + Array[5] + "\n What is your favorite color? " + Array[6] + "\n What does the color " + Array[6]+ " remind you of?" + Array[7] + "\n What is your favorite place? " + Array[8] + "\n What do you do there? " + Array[9];
   {out = new FileOutputStream("output.txt");
   writer.write(str);
   writer.close(); }
  }
}

