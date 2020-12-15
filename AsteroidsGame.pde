//your variable declarations here
boolean gameOver = false;
int bulletsLeft = 30;
int asteroidsLeft = 10;
int shipHealth = 60;
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
  fill(255);
  textSize(30);
  text("Bullets Left: " +bulletsLeft,20,30);
  text("Ship Health: " +shipHealth,20,60);
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
    if (d<25)
    {
      rocks.remove(i);
      asteroidsLeft--;
      shipHealth=shipHealth-20;
    }
  }
  for (int i = 0; i<shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
    for (int j = 0; j<rocks.size(); j++)
  {
    float d = dist((int)rocks.get(j).getCenterX(), (int)rocks.get(j).getCenterY(), (int)shots.get(i).getCenterX(), (int)shots.get(i).getCenterY());
    if (d<15)
    {
      shots.remove(i);
      rocks.remove(j);
      asteroidsLeft--;
      break;
    }
  }
  }
  if(bulletsLeft==0 || shipHealth==0){
    background(0);
    fill(255);
    textSize(15);
    text("You Lost! Be wise with your bullets and avoid the asteroids!",30,250);
    text("Click to restart!",170,280);
    gameOver = true;
    noLoop();
  }
  if(asteroidsLeft==0){
    background(0);
    fill(255);
    textSize(25);
    text("You won! Good Job!",20,250);
    text("Click to play again!",140,280);
    gameOver = true;
    noLoop();
  }
}
public void mouseClicked()
{
  if(gameOver==true)
    gameOver = false;    
    loop();
    bulletsLeft = 30;
    asteroidsLeft=10;
    shipHealth = 60;
    bob.setCenterX(250);
    bob.setCenterY(250);
    bob.setXspeed(0);
    bob.setYspeed(0);
    for (int i = rocks.size()-1; i>=0;i--)
    {
      rocks.remove(i);
    }
    for (int i = 0; i<10; i++)
    {
    rocks.add(new Asteroid());
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
  if(key==' '){
    shots.add(new Bullet(bob));
    bulletsLeft--;
  }
}
