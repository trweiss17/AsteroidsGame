Spaceship jim;
Star[] field;


public void setup(){
 jim= new Spaceship();
size(500,500);
field= new Star[300];
for( int i=0; i<field.length; i++){
  field[i]=new Star();
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
