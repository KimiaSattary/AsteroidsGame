class Spaceship extends Floater  
{   

  public Spaceship()
  { 
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myColor = color(250, 250, 250);
    myCenterX = 200;
    myCenterY = 200;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
  }
  public double getX()
  {
    return myDirectionX;
  }
  public double getY()
  {
    return myDirectionY;
  }
  public double getXCoord()
  {
    return myCenterX;
  }
  public double getYCoord()
  {
    return myCenterY;
  }


public void hyperspace()
{
  myCenterX = Math.random()*350+10;
  myCenterY = Math.random()*350+10;
  myDirectionX = 0;
  myDirectionY = 0;
  myPointDirection = Math.random()*360;
}

public void fire()
{
  fill(255, 0, 0);   
  stroke(0);    

  //translate the (x,y) center of the ship to the correct position
  translate((float)myCenterX, (float)myCenterY);

  //convert degrees to radians for rotate()     
  float dRadians = (float)(myPointDirection*(Math.PI/180));

  //rotate so that the polygon will be drawn in the correct direction
  rotate(dRadians);

  //draw the polygon
  triangle(-2, 0, -20, 5, -20, -5);

  //"unrotate" and "untranslate" in reverse order
  rotate(-1*dRadians);
  translate(-1*(float)myCenterX, -1*(float)myCenterY);
}

}
