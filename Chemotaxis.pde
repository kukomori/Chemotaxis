//declare bacteria variables here
Bacteria [] colony;
void setup()   
{     
  //initialize bacteria variables here
  size(300,300);
  colony = new Bacteria[100];
  for(int i = 0; i < colony.length; i++)
  {
    colony[i] = new Bacteria();
  }

} 
void draw()   
{    
  //move and show the bacteria
  background(145);
  dog();
  for(int i = 0; i < colony.length; i++)
  {
    colony[i].move();
    colony[i].show();
  }
}
void mousePressed(){
  setup();
}
class Bacteria    
{
  //lots of java!
  
  int myX, myY, myColor;
  Bacteria(){
    myX = myY = 150;
    int number = (int)(Math.random()*255);
    myColor = color(255,number,number);
  }
  void move(){
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
    if(myX <= 150){
      myX = myX - (int)(Math.random()*3);
    }else{
      myX = myX + (int)(Math.random()*3);
    }
    if(myY <= 150){
      myY = myY - (int)(Math.random()*3);
    }else{
      myY = myY + (int)(Math.random()*3);
    }
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse(myX,myY,10,10);
  }
}    

void dog(){
  fill(255);
  int x = 125;
  int y = 125;
  
  rect(8 + x,32 + y,32,2);
  rect(26 + x,18 + y,14,14);
  rect(26 + x,14 + y,4,4);
  rect(30 + x,16 + y,4,2);
  rect(8 + x,34 + y,4,4);
  rect(16 + x,34 + y,4,4);
  rect(28 + x,34 + y,4,4);
  rect(36 + x,34 + y,4,4);
  rect(8 + x,38 + y,2,2);
  rect(16 + x,38 + y,2,2);
  rect(28 + x,38 + y,2,2);
  rect(36 + x,38 + y,2,2);
    
  // top of head
  rect(12 + x,6 + y,8,2);
  rect(8 + x,8 + y,16,4);
  rect(24 + x,10 + y,2,2);
  
  // ears
  rect(8 + x,6 + y,2,2);
  rect(22 + x,6 + y,2,2);
  
  // face (normal)
  rect(6 + x,12 + y,4,6);
  rect(12 + x,12 + y,4,4);
  rect(18 + x,12 + y,8,6);
  rect(10 + x,14 + y,2,6);
  rect(16 + x,14 + y,2,6);
  rect(14 + x,18 + y,2,2);
  rect(6 + x,12 + y,2,20);
  rect(8 + x,20 + y,2,12);
  rect(10 + x,22 + y,8,10);
  rect(18 + x,20 + y,8,12);
  rect(20 + x,18 + y,6,2);
  
  // tail up
  rect(40 + x,12 + y,2,18);
}
