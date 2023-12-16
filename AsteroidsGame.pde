Spaceship jim;
Star[] field;
ArrayList <Asteroid> spock;
int spockStart= 15;
ArrayList <Bullet> scotty;

public boolean shot= false;
public int ammo = 305;




public void setup(){

size(500,500);
field= new Star[300];
for( int i=0; i<field.length; i++){
  field[i]=new Star();
}

spock= new ArrayList <Asteroid>();
for(int i=0; i<spockStart; i++){
  spock.add(new Asteroid());
}
scotty= new ArrayList <Bullet>();

 jim= new Spaceship();

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
 if(shot==true){
   if(ammo>0){
     scotty.add(new Bullet(jim));
     ammo--;
   }
}else{
  if(ammo<305){ammo++;}
}
for(int i=0; i< scotty.size();i++){
  scotty.get(i).show();
  scotty.get(i).shoot();
}

for(int i=0; i<scotty.size();i++){
  if(scotty.get(i).myCenterX > width){
    scotty.remove(i);
    break;
  }
  else if (scotty.get(i).myCenterX < 0){
    scotty.remove(i);
    break;
  }
  if (scotty.get(i).myCenterY > height){
    scotty.remove(i);
    break;
  } else if (scotty.get(i).myCenterY < 0){
    scotty.remove(i);
  }
}

for(int i=0; i< scotty.size(); i++){
  for(int j= 0; j < spock.size(); j++){
    if(dist((float)scotty.get(i).myCenterX,(float)scotty.get(i).myCenterY,(float) spock.get(j).getX(),(float)spock.get(j).getY())<20){
      spock.remove(j);
      scotty.remove(i);
      break;
    }
  }
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
if(key=='f'){
  shot= true;
}
 }
 public void keyReleased(){
   if(key=='f'){
     shot=false;
   }
 }
