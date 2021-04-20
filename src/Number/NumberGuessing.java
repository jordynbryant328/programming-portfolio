import java.util.Random;
import java.util.Scanner;

class Main {
  public static void main(String[] args) {
    Random rand = new Random();
    int random = rand.nextInt(100); 
    int guess = 0;
    Scanner input = new Scanner(System.in);
    System.out.println("Welcome to the guessing game! Guess a number from 0 to 100");
    guess = input.nextInt();
    while(guess != random) {
      if(random>guess) {
       System.out.println( "That number is too low. Guess again.");
       guess = input.nextInt();
      }else if(random<guess) {
       System.out.println( "That number is too high. Guess again.");
       guess = input.nextInt();
      }
    }
  }
}
