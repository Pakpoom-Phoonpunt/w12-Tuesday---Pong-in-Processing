PongGame game;
void setup (){
 size (1500,1000);
 game = new PongGame();
}
void draw(){
  background(100);
  game.clickAndMove();
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
    rect(this.positionX,this.positionY,50,500);
  }
  void move (){ // move ball
    this.positionY = mouseY-250;
    rect(this.positionX,this.positionY,50,500);
  }
}

class Pongball {
  float velocity_x,velocity_y;
  float velocity;
  //float positionX,positionY,size;
  float ballposx,ballposy,size;
  Pongball(){
    this.ballposx = width/2;
    this.ballposy = height/2;
    this.size = 50;
  }
  
  void move (){ // move ball
    
  }
  
  void draw (){
    ellipse(this.ballposx,this.ballposy,this.size,this.size);
  }  
}

class PongGame {
  
  float posx1,posx2,posy1,posy2;
  Pongball ball = new Pongball();
  PongPaddle player1;
  PongPaddle player2;
  
  
  PongGame(){
    this.posx1 = 0.00;
    this.posx2 = width-50;
    this.posy1 = height/2-250;
    this.posy2 = height/2-250;
    this.player1 = new PongPaddle("0",this.posx1,this.posy1,50);
    this.player2 = new PongPaddle("0",this.posx2,this.posy2,50);
  }
  
  void serveBall(float velo){ // velocity for start ball
  
  }
  
  void update(){ //update score and position
  
  }
  
  void clickAndMove (){ //click and move paddle
    if(mousePressed){
      if(mouseX < width/2){
        this.player1.move();
      }
      if(mouseX > width/2){
        this.player2.move();
      }
    }
  }
  
  void draw (){
    line(width/2,0,width/2,height);
    this.player1.draw();
    this.player2.draw();
    ball.draw();
  }
}
