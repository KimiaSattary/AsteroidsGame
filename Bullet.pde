class Bullet extends Floater
{

  public Bullet(Spaceship theship)
  {
    myCenterX = theship.getXCoord();
    myCenterY = theship.getYCoord();
    
    myPointDirection = rocket.getPoint();
    myDirectionX = rocket.getX();
    myDirectionY = rocket.getY();
    accelerate(12);
  }
  public void show()
  {
    fill(255);
    stroke(255);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public void move()
  {
    myCenterX+=myDirectionX;
    myCenterY+=myDirectionY;
  }
  public float getX()
  {
    return (float)myCenterX;
  }
  public float getY()
  {
    return (float)myCenterY;
  }
  public float getMyDirectionX()
  {
    return (float)myDirectionX;
  }
  public float getMyDirectionY()
  {
    return (float)myDirectionY;
  }
}
