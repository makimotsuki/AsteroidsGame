class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid()
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -13;
    yCorners[0] = -13;
    xCorners[1] = 9;
    yCorners[1] = -14;
    xCorners[2] = 15;
    yCorners[2] = 0;
    xCorners[3] = 8;
    yCorners[3] = 12;
    xCorners[4] = -13;
    yCorners[4] = 11;
    xCorners[5] = -16;
    yCorners[5] = 0;
    myColor = color(192,192,192);
    myCenterX = (int)(Math.random()*4);
    myCenterY = (int)(Math.random()*4);
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
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
