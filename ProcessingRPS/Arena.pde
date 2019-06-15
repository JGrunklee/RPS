/**
 * Arena
 * 
 * This class makes 2 players and does all of the game stuff
 */

public class Arena {
  private RPSPlayer p1;
  private RPSPlayer p2;

  private MatchRecord masterRecord;
  private int numMatches;

  public Arena(RPSPlayer one, RPSPlayer two) {
    this.p1 = one;
    this.p2 = two;
    this.numMatches = 0;
    this.masterRecord = new MatchRecord();
  }

  public void playMatch() {
    if (numMatches <= 0) {
      System.out.println("Arena.playMatch: numMatches must be set.");
    } else {
      //Get the moves
      Move m1 = p1.getMove();
      Move m2 = p2.getMove();

      //Notify everyone
      MatchRecord current = new MatchRecord(m1, m2);
      masterRecord.insert(current);
      p1.updateRecord(current);
      p2.updateRecord(current);

      numMatches--;
      System.out.println("P1: " + current.getP1Move() + 
                        "\tP2: " +current.getP2Move() +
                        "\tWinner: " + current.toString());
    }
  }

  public void setNumMatches(int matches) {
    numMatches = matches;
  }

  public int getNumMatches() {
    return numMatches;
  }
  
  public void announceWinner() {
    int p1Score = masterRecord.calculatePlayerScore(true);
    int p2Score = masterRecord.calculatePlayerScore(false);
    
    System.out.println("Player 1 Score: " + p1Score);
    System.out.println("Player 2 Score: " + p2Score);
    
    if(p1Score > p2Score) {
      System.out.println("Player 1 won!");
    } else if (p2Score > p1Score) {
      System.out.println("Player 2 won!");
    } else {
      System.out.println("There was a tie!");
    }
  }
}
