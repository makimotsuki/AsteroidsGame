class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, mySize;
  public Star()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*5);
  }
  public void show()
  {
    fill(255);
    stroke(255,255,153);
    ellipse(myX,myY,mySize,mySize);
  }
}
