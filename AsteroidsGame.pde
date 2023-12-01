Spaceship jim;
Star[] field;
ArrayList <Asteroid> spock;



public void setup(){
 jim= new Spaceship();
 //spock= new ArrayList <Asteroid>();
 
size(500,500);
field= new Star[300];
for( int i=0; i<field.length; i++){
  field[i]=new Star();
}
spock= new ArrayList <Asteroid>();
for(int i=0; i<
}
//  for(int i=0; i<spock.size(); i++){
//    spock.get(i)= new Asteroid();
//  }
//}
 
public void draw() 
{
  background(0);
  jim.show();
 jim.move();
 spock.show();
 spock.move();
  noStroke();
  for(int i=0; i<field.length; i++){
    field[i].show();
  }
    // for(int i=0; i< spock.size();i++){
    //spock.get(i).show();
    //spock.get(i).move();
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
