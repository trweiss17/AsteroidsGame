class Spaceship extends Floater{

  
  public Spaceship(){
    corners= 4;
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0]= -10;
    yCorners[0]= -10;
    xCorners[1]= 18;
    yCorners[1]= 0;
    xCorners[2]= -10;
    yCorners[2]= 10;
    xCorners[3]= -4;
    yCorners[3]= 0;
    
    myColor= color(250,223,66);
    myCenterX=myCenterY=250;
    myXspeed=myYspeed= 0;
    myPointDirection= 0;
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getXSpeed(){
    return myXspeed;
  }
  public double getYSpeed(){
    return myYSpeed;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  
  public void hyperspace(){
    myCenterX=(Math.random()*500);
    myCenterY=(Math.random()*500);
    myXspeed=myYspeed=0;
    myPointDirection=(Math.random()*360);
  }
}
