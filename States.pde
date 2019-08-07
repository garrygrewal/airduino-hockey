float textScale = 128; //used to make game title smaller on intro screen
PFont fontScore;

void introScreen() {
  player1Score=0;
  player2Score=0;
  
  //drawScene();
  
  //title
  textFont(font, textScale);
  fill(60, 110, 253);
  textAlign(CENTER);
  text("AIRDUINO\nHOCKEY", width/2, height/2-200);
  if (textScale>=48) {
    textScale-= (float) 0.75;
  }
  
  startButton.draw();
  startButton.startButton();
  howToPlayButton.draw();
  howToPlayButton.howButton();
}

void howToScreen(){
  textFont(font, 72);
  fill(60, 110, 253);
  textAlign(CENTER);
  text("HIT THE PUCK.......", width/2, height/2-200);
  
  backButton.draw();
  backButton.backButton();
}

void startGame(){
  
  textFont(font, 48);
  fill(60, 110, 253);
  textAlign(CENTER);
  text("Player 1", width/2-300, height/2-200);
  text("Player 2", width/2+300, height/2-200);
  
  
  fill(255,255,255);
  rectMode(CENTER);
  stroke(255, 0, 0);
  rect(width/2-300, height/2-100, 200, 100);
  rect(width/2+300, height/2-100, 200, 100);
  stroke(255);

  
  fontScore = createFont("digital-7.ttf", 116);
  textFont(fontScore, 116);
  fill(255,0,0);
  text(player1Score, width/2-250, height/2-65);
  text(player2Score, width/2+350, height/2-65);
  
  backButton.draw();
  backButton.backButton();

}