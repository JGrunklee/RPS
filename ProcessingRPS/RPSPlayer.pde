/**
* RPSPlayer
* 
* Represents a single AI for the RPS Project. This class is abstract,
* which means it is just a template for making acutal players.
**/

public abstract class RPSPlayer {
    
    private String name;            //String identifier for the player
    private boolean isPlayer1;      //In a given bout, there may only
                                    //  be 2 players. One will be referred
                                    //  to as Player1, and the other Player2
    private MatchRecord head;       //Empty record which points to the
                                    //  outcome of the first match
    
    public RPSPlayer(String n, boolean isp1) {
        isPlayer1 = isp1;
        name = n;
        head = new MatchRecord();
    }
    
    //Called during a match.
    //This function will calculate and return the player's next move.
    public abstract Move getMove();
    
    //Called after a match.
    //Allows the player to learn the match results.
    //Appends rec at the top of the linked list
    public void updateRecord(MatchRecord rec) {
      head.insert(rec);
    }
    
    public String getName() {
      return name;
    }
    
    public boolean isPlayer1() {
      return isPlayer1;
    }
    
}
