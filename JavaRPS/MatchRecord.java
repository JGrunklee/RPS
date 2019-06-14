/**
* MatchRecord.java
* 
* A class in which to store the outcome of a single RPS match.
* Just for the heck of it, when we want to store the outcome
* of a bunch of matches, we'll chain them together in a linked list.
**/

public class MatchRecord {
    
    private int player1Move;        //Move by player 1
    private int player2Move;        //Move by player 2
                                    // Rock = 0
                                    // Paper = 1
                                    // Scissors = 2
    
    private int winner;             // 1 if player 1
                                    // 2 if player 2
                                    // 0 if tie
    private MatchRecord next;       //Record for the match after this one
    
    // Typical constructor.
    public MatchRecord(int p1Move, int p2Move) {
        player1Move = p1Move;
        player2Move = p2Move;
        winner = calcWinner(player1Move, player2Move);
        next = null;
    }
    
    // Blank constructor (for head nodes)
    public MatchRecord() {
        player1Move = -1;
        player2Move = -1;
        winner = -1;
        next = null;
    }
    
    //Returns true if player 1 won
    //If a number other than 0,1,2 is entered, the %3 is
    //automatically taken
    public int calcWinner(int p1Move, int p2Move) {
        // Rock = 0
        // Paper = 1
        // Scissors = 2
        
        p1Move %= 3;
        p2Move %= 3;
        
        int diff = p1Move - p2Move;
        
        if(diff == 0) {
            return 0; //Tie
        }
        
        if(diff==1 || diff==-2) {
            return 1; //Player 1 won
        }
        else {
            return 2; //Player 2 won
        }
    }
    
    
    // Get method for player1Move
    public int getP1Move() {
        return player1Move;
    }
    
    // Get method for player2Move
    public int getP2Move() {
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
    public void append(MatchRecord rec) {
        next = rec;
    }
    
    public static void main(String[] args) {
        //If we ever need to test this class by itself,
        //the code could go here
        System.out.println("This is the MatchRecord class");
    }
}