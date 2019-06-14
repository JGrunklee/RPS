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
    
    this.masterRecord = new MatchRecord();
  }
  
  public void playMatch() {
    //Get the moves
    Move m1 = p1.getMove();
    Move m2 = p2.getMove();
    
    //Notify everyone
    MatchRecord current = new MatchRecord(m1, m2);
    masterRecord.insert(current);
    p1.updateRecord(current);
    p2.updateRecord(current);
    
    numMatches--;
    
    
  }
  
  public int getNumMatches() {
    return numMatches;
  }
}
