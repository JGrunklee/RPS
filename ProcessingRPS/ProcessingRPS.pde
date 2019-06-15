/**
* ProcessingRPS
*
* This is the runner for the Rock Paper Scissors (RPS) AI arena.
* Switches between a setup menu and displaying the game
*/

//Players and Arena
Arena arena;
RPSPlayer p1;
RPSPlayer p2;

//Background things
enum GameState {MENU, GAME}
GameState currentState;
int prevMatchTime; //Time of previous match
final int delayms = 5; //Delay between matches

void setup() {
  //State machine things
  currentState = GameState.MENU;
  prevMatchTime = millis();
  
  //Window things
  size(820, 640);
}

void draw() {
  switch(currentState){  
    case MENU: //Display the setup menu
    
    //This is just for testing for now
    p1 = new PlayerChase(true);
    p2 = new PlayerRandy(false);
    arena = new Arena(p1, p2);
    arena.setNumMatches(100);
    currentState = GameState.GAME;
    //
    
    break;
    
    case GAME: //Play the game!
    /* Game things */
    if(millis()-prevMatchTime > delayms) {
      prevMatchTime = millis();
      
      arena.playMatch();
      if(arena.getNumMatches() <= 0) {
        
        arena.announceWinner();
        exit();
      }
      
    }
    
    /* Graphics things */
    
    break;
    
    default: //Go back to Menu if the switch breaks
    currentState = GameState.MENU;
  }
}
