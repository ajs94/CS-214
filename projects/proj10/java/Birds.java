/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by:
 * Date:
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Duck bird0 = new Duck("Donald");
      bird0.print();
      Goose bird1 = new Goose("Mother Goose");
      bird1.print();
      Owl bird2 = new Owl("Woodsey");  
      bird2.print();
	  
	  Penguin bird3 = new Penguin("Peter");
	  bird3.print();
	  Ostrich bird4 = new Ostrich("Orville");
	  bird4.print();
	  Kiwi bird5 = new Kiwi("Kiki");
	  bird5.print();
	  
      System.out.println();
    }
}

