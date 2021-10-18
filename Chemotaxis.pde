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
