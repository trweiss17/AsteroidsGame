class Star
{
  private int myX;
  private int myY;
  private int mySize;
 
  public Star(){
    myX= (int)(Math.random()*500);
    myY= (int)(Math.random()*500);
    mySize= (int)(Math.random()*4)+3;
    
  }
  
  public int getX(){
    return myX;
  }
  
  public int getY(){
    return myY;
  }
  
  public int getSize(){
    return mySize;
  }

  public void show(){
    fill(250,250,250);
    ellipse(getX(),getY(),getSize(),getSize());
}
}
