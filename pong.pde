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
  int score ;
  float positionX,positionY,size;
  
  PongPaddle(int score, float positionX, float positionY,float size){
    this.score = 0;
    this.positionX = positionX;
    this.positionY = positionY;
    this.size = 50;
  }
  
  void bounce_ball(Pongball ball){
    ball.xdirection *= -1;
    ball.velocity_x +=0.5;
    ball.velocity_y +=0.5;
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
      this.ballposx = this.ballposx + (2*this.velocity_x*this.xdirection);
      this.ballposy = this.ballposy + (2*this.velocity_y*this.ydirection);
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
    this.player1 = new PongPaddle(0,0.00,height/2-250,50);
    this.player2 = new PongPaddle(0,width-50,height/2-250,50);
  }
  
  void serveBall(Pongball ball,boolean p2){ // velocity for start ball
    if (p2){
      ball.ballposx += 2;
    }else{
      ball.ballposx -= 2;
    }
  }
  
  void update(PongPaddle p){ //update score
    p.score += 1;
    ball.ballposx = width/2;
    ball.ballposy = height/2;
    ball.velocity_x = 1.1;
    ball.velocity_y = 1.1;
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
    textSize(32);
    text(player1.score , width/4, 100);
    text(player2.score , width - (width/4) , 100);
    
    
    if (((ball.ballposx-50 < player1.positionX+50) & (ball.ballposy+50 > player1.positionY) & (ball.ballposy-50 < player1.positionY+500))){
      player1.bounce_ball(ball);
    }
    
    else if (ball.ballposx-50 < 0){
      this.update(player2);
    }
    
    if (((ball.ballposx+50 > player2.positionX) & (ball.ballposy+50 > player2.positionY) & (ball.ballposy-50 < player2.positionY+500))) {
      player2.bounce_ball(ball);
    }
    
    else if (ball.ballposx+50 > width){
      this.update(player1);
    }
    
    if ((ball.ballposy+50 > height) || (ball.ballposy-50 < 0)){
      ball.ydirection *= -1;
    }
  }
}
