class Bullet extends Floater
{
  public Bullet(Spaceship jim){
    
    myColor= color(245,37,117);
    myCenterX= jim.getX();
    myCenterY= jim.getY();
    myXspeed=myYspeed= 20;
    myPointDirection= jim.getPointDirection();
    accelerate(6);
  }
  
  public Bullet(){
    
  }

public void show(){
  fill(94,232,77);
  ellipse((float)myCenterX,(float)myCenterY,10,10);
}

public void shoot(){
    double dRadians =myPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    myXspeed += ((dRadians) * Math.cos(myXspeed));    
    myYspeed += ((dRadians) * Math.sin(myXspeed)); 
}
}
