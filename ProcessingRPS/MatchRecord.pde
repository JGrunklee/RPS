/**
* MatchRecord
* 
* A class in which to store the outcome of a single RPS match.
* Just for the heck of it, when we want to store the outcome
* of a bunch of matches, we'll chain them together in a linked list.
**/

class MatchRecord {
    
    private Move player1Move;       //Move by player 1
    private Move player2Move;       //Move by player 2
                                    // Rock = 0
                                    // Paper = 1
                                    // Scissors = 2
    
    private int winner;             // -1 if player 1
                                    // 0 if tie
                                    // 1 if player 2
                                    
    private MatchRecord next;       //Record for the match after this one
    
    // Typical constructor.
    public MatchRecord(Move p1Move, Move p2Move) {
        player1Move = p1Move;
        player2Move = p2Move;
        
        //Determine winner
        if(player1Move.defeats(player2Move)) { //player 1 wins
          winner = -1;
        } else if (player2Move.defeats(player1Move)) { //player 2 wins
          winner = 1;
        } else { //tie
          winner = 0;
        }
        
        next = null;
    }
    
    // Blank constructor (for head nodes)
    public MatchRecord() {
        player1Move = Move.NONE;
        player2Move = Move.NONE;
        winner = 0;
        next = null;
    }
    
    // Get method for player1Move
    public Move getP1Move() {
        return player1Move;
    }
    
    // Get method for player2Move
    public Move getP2Move() {
        return player2Move;
    }
    
    // Get method for player1Won
    public int getWinner() {
        return winner;
    }
    
    // Is another record attached to this one?
    public boolean hasNext() {
        return (next != null);
    }
    
    
    // Get method for the attached record
    public MatchRecord getNext() {
        return next;
    }
    
    // Attach a record
    public void setNext(MatchRecord rec) {
        next = rec;
    }
    
    // Inserts a new MatchRecord between this and this.next
    public void insert(MatchRecord rec) {
      rec.setNext(next.getNext());
      next = rec;
    }
    
    //public static void main(String[] args) {
    //    //If we ever need to test this class by itself,
    //    //the code could go here
    //    System.out.println("This is the MatchRecord class");
    //}
}
