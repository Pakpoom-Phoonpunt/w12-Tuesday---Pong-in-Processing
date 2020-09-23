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
  float ballposx,ballposy,size;
  int xdirection,ydirection;
  Pongball(){
    this.ballposx = width/2;
    this.ballposy = height/2;
    this.size = 50;
    this.velocity_x = 1.1;
    this.velocity_y = 1.1;
    this.xdirection = 1;
    this.ydirection = 1;
  }
  
  void move (){ // move ball
    this.ballposx = this.ballposx + (5*this.velocity_x*this.xdirection);
    this.ballposy = this.ballposy + (5*this.velocity_y*this.ydirection);
    ellipse(this.ballposx,this.ballposy,this.size,this.size);
  }
  
  void draw (){
    ellipse(this.ballposx,this.ballposy,this.size,this.size);
  }  
}

class PongGame {
  
  Pongball ball = new Pongball();
  PongPaddle player1;
  PongPaddle player2;
  
  PongGame(){
    this.player1 = new PongPaddle("0",0.00,height/2-250,50);
    this.player2 = new PongPaddle("0",width-50,height/2-250,50);
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
    ball.move();
    
    if ((ball.ballposx > width-50) || (ball.ballposx < 50)  ){
      ball.xdirection *= -1;
    }
    if ((ball.ballposy > height-50) || (ball.ballposy < 50)  ){
      ball.ydirection *= -1;
    }
  }
}
