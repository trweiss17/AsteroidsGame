class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    
     corners= 11;          
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0]= 0;
    yCorners[0]= 8;
    xCorners[1]= 1;
    yCorners[1]= 6;
    xCorners[2]= 4;
    yCorners[2]= 5;
    xCorners[3]= 7;
    yCorners[3]= -1;
    xCorners[4]= 6;
    yCorners[4]= -8;
    xCorners[5]= 7;
    yCorners[5]= -10;
    xCorners[6]= 5;
    yCorners[6]= -13;
    xCorners[7]= 0;
    yCorners[7]= -11;
    xCorners[8]= -2;
    yCorners[8]= -12;
    xCorners[9]= -4;
    yCorners[9]= -8;
    xCorners[10]= -9;
    yCorners[10]= -3;
   
   
    
    
    
    
    myColor= color(191,191,191);
    myCenterX= (Math.random()*500);
    myCenterY= (Math.random()*500);
    myXspeed=(Math.random()*2)-1;
    myYspeed= (Math.random()*2)-1;
    myPointDirection=(Math.random()*360);
    rotSpeed= 5;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
    
}
  
