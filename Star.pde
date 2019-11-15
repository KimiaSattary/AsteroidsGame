class Star //note that this class does NOT extend Floater
{
  private float myX, myY, h;

  public Star()
  {
    myX = (float)Math.random()*400;
    myY = (float)Math.random()*400;
    h = 2.5;
  
  }
  public float getX()
  {
    return myX;
  }
  public float getY()
  {
    return myY;
  }
  public void show()
  {

    fill(68,95,118,110);
    noStroke();
    triangle(myX-2*h, myY+h, myX, myY-2*h, myX+2*h, myY+h);
    triangle(myX-2*h, myY-h, myX, myY+2*h, myX+2*h, myY-h); 

  }
  
}
