class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
    corners = 5;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -12;
    yCorners[0] = -10;
    xCorners[1] = -6;
    yCorners[1] = -4;
    xCorners[2] = 16;
    yCorners[2] = 0;
    xCorners[3] = -6;
    yCorners[3] = 4;
    xCorners[4] = -12;
    yCorners[4] = 10;
    myColor = color(255,255,255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
  }
  public void setXspeed (double newXspeed){
    myXspeed = newXspeed;
  }
  public void setYspeed (double newYspeed){
    myYspeed = newYspeed;
  }
  public void setCenterX (int newCenterX){
    myCenterX = newCenterX;
  }
  public void setCenterY (int newCenterY){
    myCenterY = newCenterY;
  }
  public void setPointDirection (int newPointDirection){
    myPointDirection = newPointDirection;
  }
  public void hyperspace()
  {
    setXspeed(0);
    setYspeed(0);
    setCenterX((int)(Math.random()*500));
    setCenterY((int)(Math.random()*500));
    setPointDirection((int)(Math.random()*360));
  }
  public double getShipX()
  {
    return myCenterX;
  }
  public double getShipY()
  {
    return myCenterY;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
}
