Spaceship jim;
Star[] field;
ArrayList <Asteroid> spock;
int spockStart= 15;



public void setup(){
 jim= new Spaceship();

 
size(500,500);
field= new Star[300];
for( int i=0; i<field.length; i++){
  field[i]=new Star();
}
spock= new ArrayList <Asteroid>();
for(int i=0; i<spockStart; i++){
  spock.add(new Asteroid());
}
}
 
public void draw() 
{
  background(0);
  jim.show();
 jim.move();
  noStroke();
  for(int i=0; i<field.length; i++){
    field[i].show();
  }
  for(int i=0; i< spock.size();i++){
 spock.get(i).show();
 spock.get(i).move();
 float d= dist((float)jim.getX(),(float)jim.getY(),(float)spock.get(i).getX(),(float)spock.get(i).getY());
 if(d<10)
 spock.remove(i);
 }
}


  public void keyPressed(){
  if(key=='h'){
    jim.hyperspace();
  }
  if (key==  'w'){
    jim.accelerate(10);
  } else if (key== 'a'){
    jim.turn(10);
  }else if (key=='s'){
    jim.turn(-10);
}
}
