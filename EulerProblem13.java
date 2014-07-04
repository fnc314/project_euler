// Help comes from http://www.homeandlearn.co.uk/java/read_a_textfile_in_java.html
// Successfully compiles but is still not where it needs to be
// Work will continue at another point

import java.io.IOException;
import java.io.FileReader;
import java.io.BufferedReader;
import java.math.*;

public class EulerProblem13 {

  String path = "/Users/FrancoNColaizzi/Desktop/EulerProblems";

  public void main() throws IOException {
    try {
      int goal;
      goal = numOfLines();
      System.out.println(" " + goal);
    } catch (IOException e) {
      System.out.println( e.getMessage() );
    }

  }

  public BigInteger 


  public int numOfLines() throws IOException {

    String aLine;
    int num_of_lines = 0;

    try {
      FileReader fr = new FileReader("EulerProblem13.txt");
      BufferedReader br = new BufferedReader(fr);

      while ( (aLine = br.readLine() ) != null ){
        num_of_lines++;
      }
      br.close();

    } catch (IOException e) {
      System.out.println( e.getMessage() );
    }

    return num_of_lines;
  }

}
