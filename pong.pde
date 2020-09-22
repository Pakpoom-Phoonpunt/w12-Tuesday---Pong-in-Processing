PongGame game = new PongGame();
void setup (){
 size (1500,1000);
}
void draw(){
  game.draw();
}

class PongPaddle {
  String score ;
  float positionX,positionY,size;
  
  PongPaddle(String score, float positionX, float positionY,float size){
    this.score = "0";
    this.positionX = positionX;
    this.positionY = positionY;
    this.size = 50;
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
  {
  float posx1,posx2,posy1,posy2 ;
  posx1 = 0.00;
  posx2 = width;
  posy1 = height/2;
  posy2 = height/2;
  Pongball ball = new Pongball();
  PongPaddle player1 = new PongPaddle("0",posx1,posy1,50); 
  PongPaddle player2 = new PongPaddle("0",posx2,posy2,50);
  }
  PongGame(){
  
  }
  
  void serveBall(float velo){ // velocity for start ball
  
  }
  
  void update(){ //update score and position
  
  }
  
  void clickAndMove (){ //click and move paddle
  
  }
  
  void draw (){
    line(width/2,0,width/2,height);
    
  }
}
