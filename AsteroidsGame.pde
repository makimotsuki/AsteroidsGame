//your variable declarations here
Spaceship bob = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();
Star[] nightSky = new Star[200];
public void setup() 
{
  //your code here
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i<10; i++)
  {
    rocks.add(new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  for (int i = 0; i<rocks.size(); i++)
  {
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((int)bob.getShipX(), (int)bob.getShipY(), (int)rocks.get(i).getCenterX(), (int)rocks.get(i).getCenterY());
    if (d<20)
    {
      rocks.remove(i);
    }
  }
  for (int i = 0; i<shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
    
  }
}
public void keyPressed()
{
  if(key=='4')
    bob.turn(-5);
  if(key=='6')
    bob.turn(5);
  if(key=='5')
    bob.accelerate(0.3);
  if(key=='h')
    bob.hyperspace();
  if(key==' ')
    shots.add(new Bullet(bob));
}
