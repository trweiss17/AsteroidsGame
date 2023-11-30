class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    
     corners= 16;          
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0]= 7;
    yCorners[0]= -10;
    xCorners[1]= 5;
    yCorners[1]= -13;
    xCorners[2]= 0;
    yCorners[2]= -11;
    xCorners[3]= -2;
    yCorners[3]= -11;
    xCorners[4]= -4;
    yCorners[4]= -8;
    xCorners[5]=-8;
    yCorners[5]=-5;
    xCorners[6]= -9;
    yCorners[6]= 3;
    xCorners[7]= -11;
    yCorners[7]= 4;
    xCorners[8]= -10;
    yCorners[8]= 7;
    xCorners[9]= -2;
    yCorners[9]= 7;
    xCorners[10]= -1;
    yCorners[10]= 9;
    xCorners[11]= 0;
    yCorners[11]= 8;
    xCorners[12]= 1;
    yCorners[12]= 6;
    xCorners[13]= 4;
    yCorners[13]= 5;
    xCorners[14]= 7;
    yCorners[14]= -1;
    xCorners[15]= 6;
    yCorners[15]= -8;
    
    
    
    
    myColor= color(191,191,191);
    myCenterX= (Math.random()*500);
    myCenterY= (Math.random()*500);
    myXspeed=(Math.random()*3)-1;
    myYspeed= (Math.random()*3)-1;
    myPointDirection= 0;
  }
  
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
    
}
