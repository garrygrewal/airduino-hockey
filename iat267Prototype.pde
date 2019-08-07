Button startButton;
Button howToPlayButton;
Button backButton;

int state;

int player1Score;
int player2Score;


void setup() {
  size(1200, 800);
  
  startButton = new Button(new PVector(width/2-300, height/2));
  howToPlayButton = new Button(new PVector(width/2+300, height/2));
  backButton = new Button(new PVector(width/2+300, height/2+300));
  player1Score=0;
  player2Score=0;
  
  loadAssets();
  
  state=1;
}

void draw() {
  background(background);
  switch(state){
    case 1: 
      introScreen();
      break;
    case 2:
      howToScreen();
      break;
    case 3:
      startGame();
      break;
    default:
      break;
  }
  
}