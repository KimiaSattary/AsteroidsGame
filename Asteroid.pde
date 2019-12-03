class Asteroid extends Floater
{
  public Asteroid()
  {
    corners = 5;
    xCorners = new int[]{-12, 0, 12, 9, -9};
    yCorners = new int[]{0, -12, 0, 12, 12};
    myColor = color(250, 250, 250);
    myCenterX = (0);
    myCenterY = (float)(Math.random()*400);
    myDirectionX = (float)Math.random()*30;
    myDirectionY = 0;
    myPointDirection = 0;
  }
  public double getRockX()
  {
    return myCenterX;
  }
  public void setRockX(int x)
  {
    myCenterX = x;
  }
  public double getRockY()
  {
    return myCenterY;
  }
  public void move()
  {
    pushMatrix();
    frameRate(30);
    
    // super.move();
    
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width+20)
    {     
      myCenterX = 0; 
      myCenterY = (float)(Math.random()*400);
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }  
  
    myPointDirection = myPointDirection + (float)(Math.random()*10);
   
    popMatrix();
    
  }
  public void show()
  {
    noFill();   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
      
  }
}
