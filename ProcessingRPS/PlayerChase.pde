/**
* PlayerRandy
* 
* "Chases" the opponent by copying their previous move.
* Opens with ROCK by default
*/

public class PlayerChase extends RPSPlayer {
  private Move opener;
  private boolean isFirstMove;
  
  public PlayerChase(boolean isp1) {
   super("Chase", isp1);
   opener = Move.ROCK;
   isFirstMove = true;
   System.out.println("Hello, Chase.");
  }
  
  public PlayerChase(boolean isp1, Move firstMove) {
    super("Chase", isp1);
    opener = firstMove;
    isFirstMove = true;
    System.out.println("Hello, custom Chase");
  }
  
  public Move getMove() {
    //First time is a special case
    if(isFirstMove) {
      isFirstMove = false;
      return opener;
    }
    
    if(isPlayer1()) {
      return getRecord().getNext().getP2Move();
    } else {
      return getRecord().getNext().getP1Move();
    }
  }
}
