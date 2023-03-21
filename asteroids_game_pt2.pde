Spaceship bob = new Spaceship ();
Star[] nightSky = new Star[200];
///Asteroid me = new SubClass(3);
ArrayList <Asteroid> myAsteroid = new ArrayList <Asteroid> ();
//int nAsteroid =10;
//Asteroid nAs;

public void setup()
{
  size (500, 500);
  for (int i =0; i < nightSky.length; i++) {
    nightSky[i]= new Star();
  }

  for (int i=0; i <=15; i++) {
    myAsteroid.add(new Asteroid());
  }
}
public void draw()
{
  background (0);
  for (int i = 0; i < nightSky.length; i++) {
    nightSky[i].show();
  }
  // System.out.println(me.getNum());
  for (int i = 0; i < myAsteroid.size(); i++) {
    myAsteroid.get(i).move();
    myAsteroid.get(i).show();
  }
  bob.show();
  ///bob.show();
}

public void keyPressed() {
  if (key == 'h') {
    bob.hyperspace();
  }
  if (keyCode == UP) {
    bob.myCenterY -=6;
  }
  if (keyCode == DOWN) {
    bob.myCenterY +=6;
  }
  if (keyCode == LEFT) {
    bob.myCenterX -=6;
  }
  if (keyCode == RIGHT) {
    bob.myCenterX +=6;
  }
}
