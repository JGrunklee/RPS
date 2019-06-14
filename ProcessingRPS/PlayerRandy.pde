/**
* PlayerRandy
* 
* Randy plays a random move 
*/

public class PlayerRandy extends RPSPlayer {
  
  public PlayerRandy(boolean isp1) {
    super("Randy", isp1);
    System.out.println("Hello, Randy."); //Might delete later
  }  
  
  //Randy plays a random move
  public Move getMove() {
    switch(int(random(0,2.9))) {
      case 0: return Move.ROCK;
      case 1: return Move.PAPER;
      case 2: return Move.SCISSORS;
      default: return Move.NONE;
    }
  }
}
