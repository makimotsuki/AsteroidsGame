class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
    corners = 3;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
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
  public double getCenterX()
  {
    return myCenterX;
  }
  public double getCenterY()
  {
    return myCenterY;
  }
  public double getPointDirection()
  {
    return myPointDirection;
  }
}
