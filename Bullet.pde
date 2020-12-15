class Bullet extends Floater{
  public Bullet (Spaceship theShip){
    myCenterX=theShip.getShipX();
    myCenterY=theShip.getShipY();
    myPointDirection = theShip.getPointDirection();
    accelerate(10);
  }
  public void show(){
    fill(57,255,20);
    stroke(57,255,20);
    rect((float)myCenterX,(float)myCenterY,5,5);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
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

