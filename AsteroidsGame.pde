//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  //your code here
  size(500,500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
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
}

