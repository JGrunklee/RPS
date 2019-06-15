/**
* Move
*
* This enumerated type (enum) represents RPS moves.
*  - This is where it all begins - 
*/

public enum Move
{
  NONE(-1), ROCK(0), PAPER(1), SCISSORS(2);
  private final int mcode;
  
  private Move(int mcode) {
    this.mcode = mcode;
  }
  
  public boolean defeats(Move m) {
    switch(this.mcode) {
      case 0: //rock...
        return (m.mcode == 2); //...beats scissors
        
      case 1: //paper...
       return (m.mcode == 0); //...breats rock
       
      case 2: //scissors...
        return (m.mcode == 1); //...beats paper
      default:
        return false;
    }
  }
}
