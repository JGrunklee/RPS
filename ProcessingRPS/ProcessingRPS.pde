/**
* ProcessingRPS
*
* This is the runner for the Rock Paper Scissors (RPS) AI arena.
* Switches between a setup menu and displaying the game
*/

Arena arena;
RPSPlayer p1;
RPSPlayer p2;

enum GameState {MENU, GAME}
GameState currentState;

void setup() {
  //State machine things
  currentState = GameState.MENU;
  
  //Window things
  size(820, 640);
}

void draw() {
  switch(currentState){
    case MENU: //Display the setup menu
    
    
    break;
    
    case GAME: //Play the game!
    
    break;
    
    default: //Go back to Menu if the switch breaks
    currentState = GameState.MENU;
  }
}
