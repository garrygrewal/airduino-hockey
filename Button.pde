PFont font;

class Button {
  PVector position;
  boolean clicked;

  Button(PVector position) {
    this.position=position;
    font = createFont("BAUERG__.TTF", 48);
  }

  void draw() {
    pushMatrix();
    translate(position.x, position.y);
    fill(255, 255, 255);
    stroke(255, 0, 0);
    rectMode(CENTER);
    rect(0, 0, 225, 75, 10);
    rectMode(CORNER);
    stroke(255);
    popMatrix();
  }

  void startButton() {
    textFont(font, 48);
    fill(60, 110, 253);
    text("START", width/2-300, height/2+15);
    //if statement to check if button is clicked
    if (mouseX>width/2-300-113 && mouseX<width/2-300+113&& mouseY>height/2-37.5 && mouseY<height/2+37.5) {
      if (mousePressed) {
        //do something here
        state=3;
        println("Clicked start");
        
      }
    }
  }
  
  void howButton() {
    //how to play button
    textFont(font, 26);
    fill(60, 110, 253);
    text("HOW TO\nPLAY", width/2+300, height/2-13);

    if (mouseX>width/2+300-113 && mouseX<width/2+300+113&& mouseY>height/2-37.5 && mouseY<height/2+37.5) {
      if (mousePressed) {
        //do something here
        state=2;
        println("Clicked how to play");
        
      }
    }
  }
  
  void backButton(){
    textFont(font, 48);
    fill(60, 110, 253);
    text("BACK", width/2+300, height/2+325);

    if (mouseX>width/2+300-113 && mouseX<width/2+300+113&& mouseY>height/2+263 && mouseY<height/2+337) {
      if (mousePressed) {
        //do something here
        state=1;
        println("Clicked exit");
        
      }
    }
  }
  
}