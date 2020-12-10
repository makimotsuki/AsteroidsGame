//class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -11;
    xCorners[1] = 7;
    yCorners[1] = -12;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -14;
    yCorners[5] = 0;
    myColor = color(192,192,192);
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myXspeed = Math.random()*3-2;
    myYspeed = Math.random()*3-2;
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (Math.random()*11)-5;
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX()
  {
    return myCenterX;
  }
  public double getCenterY()
  {
    return myCenterY;
  }
}
