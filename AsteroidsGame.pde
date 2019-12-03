Spaceship rocket = new Spaceship();
Star[] sky = new Star[100];
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
public void setup() 
{
  background(5,5,20);
  size(400, 400);
  for(int i = 0; i<100; i++)
  {
    sky[i] = new Star();
  }
  for(int i =0; i<3; i++)
  {
    Asteroid stone = new Asteroid();
    rocks.add(stone);
  }
}
public void draw() 
{
  background(5,5,20);
  for(int i = 0; i<100; i++)
  {
    sky[i].show();
  }
  rocket.move();
  rocket.show();
  if(rocket.getX()>0 || rocket.getY()>0)
  rocket.fire();
  for(int k=0; k<3; k++)
  {
    
    rocks.get(k).move();
    rocks.get(k).show();
    if(dist((float)rocks.get(k).getRockX(), (float)rocks.get(k).getRockY(), (float)rocket.getXCoord(), (float)rocket.getYCoord())<30)
    {
      rocks.remove(rocks.get(k));
      Asteroid stone = new Asteroid();
      rocks.add(stone);
    }
  }

}
public void keyPressed()
{
  //rocket.fire();
  if (key == CODED)
  {
  
    if (keyCode == RIGHT)
    {
      rocket.turn(10);
    }
    if (keyCode == LEFT)
    {
      rocket.turn(-10);
    }
    if (keyCode == UP)
    {
      rocket.accelerate(2.0);
    }
    if (keyCode == DOWN)
    {
      rocket.accelerate(-2);
    }
    if(keyCode == SHIFT)
    {
      rocket.hyperspace();
    }
    
  }
 
 
}
