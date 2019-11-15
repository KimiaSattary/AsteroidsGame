Spaceship rocket = new Spaceship();
Star[] sky = new Star[100];
public void setup() 
{
  background(0);
  size(400, 400);
  for(int i = 0; i<100; i++)
  {
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<100; i++)
  {
    sky[i].show();
  }
  rocket.show();
  rocket.move();

}
public void keyPressed()
{
  rocket.fire();
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
