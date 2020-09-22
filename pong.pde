void setup (){

}
void draw(){

}

class PongPaddle {
  String score ;
  float positionX,positionY,size;
  
  PongPaddle(String score, float positionX, float positionY,float size){
    this.score = "0";
    this.positionX = positionX;
    this.positionY = positionY;
    this.size = size;
  }
  
  void  bounce_ball(Pongball ball){
   // wait for coding
  }
  
  void draw (){
  
  }
}

class Pongball {
  float velocity_x,velocity_y;
  float velocity;
  float positionX,positionY,size;
  Pongball(){
  
  }
  
  void move (){ // move ball
  // wait for coding
  }
  
  void draw (){
  
  }  
}

class PongGame {
  Pongball ball = new Pongball();
  PongPaddle player1 = new PongPaddle("0"); 
  PongPaddle player2 = new PongPaddle("0");
  
  void serve_ball (float velo){ // velocity for start ball
  
  }
  
  void update(){ //update score and position
  
  }
  
  void clickandmove (float posx){ //click and move paddle
  
  }
}
