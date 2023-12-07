class Bullet extends Floater
{
  public Bullet(){
    
    myColor= color(245,37,117);
    myCenterX= jim.getX();
    myCenterY= jim.getY();
    myXspeed= jim.getXSpeed();
    myYspeed= jim.getYSpeed();
    myPointDirection= jim.getPointDirection();
  }

public void show(){
  ellipse((float)myCenterX,(float)myCenterY,10,10);
}
}
