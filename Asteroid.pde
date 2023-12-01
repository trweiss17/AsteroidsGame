class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    
     corners= 16;          
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0]= 9;
    yCorners[0]= -12;
    xCorners[1]= 9;
    yCorners[1]= -15;
    xCorners[2]= 0;
    yCorners[2]= -11;
    xCorners[3]= -4;
    yCorners[3]= -13;
    xCorners[4]= -6;
    yCorners[4]= -10;
    xCorners[5]=-10;
    yCorners[5]=-7;
    xCorners[6]= -11;
    yCorners[6]= 8;
    xCorners[7]= -13;
    yCorners[7]= 6;
    xCorners[8]= -12;
    yCorners[8]= 9;
    xCorners[9]= -4;
    yCorners[9]= 9;
    xCorners[10]= -3;
    yCorners[10]= 11;
    xCorners[11]= 5;
    yCorners[11]= 10;
    xCorners[12]= 7;
    yCorners[12]= 10;
    xCorners[13]= 9;
    yCorners[13]= 7;
    xCorners[14]= 9;
    yCorners[14]= -3;
    xCorners[15]= 10;
    yCorners[15]= -10;
    
    
    
    
    myColor= color(191,191,191);
    myCenterX= (Math.random()*500);
    myCenterY= (Math.random()*500);
    myXspeed=(Math.random()*5)-1;
    myYspeed= (Math.random()*5)-1;
    myPointDirection=(Math.random()*360);
    rotSpeed= 5;
  }
  
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
    
}
