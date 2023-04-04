//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[200];
ArrayList <Asteroid> asteroidsGroup;
int numAsteroids;
int asteroidsCounter ;

public void setup()
{
  numAsteroids = 10;
  asteroidsCounter = 0;
  asteroidsGroup = new ArrayList <Asteroid>();
  size(750, 750);

  for (int i = 0; i< nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }

  for (int i=0; i < numAsteroids; i++)
  {
    asteroidsGroup.add(new Asteroid());
    asteroidsCounter ++;
  }
  print(asteroidsGroup.size());
}
public void draw()
{
  background(0);
  noStroke();
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  bob.show();
  bob.move();
  for (int i=asteroidsGroup.size()-1; i>=0; i--)
  {
    asteroidsGroup.get(i).move();
    asteroidsGroup.get(i).show();
  }

  // bob.keyPressed();
}
public void keyPressed()
{
  if (key == 'h')
  {
    bob.hyperspace();
  }
  if (key == 'a')
  {
    bob.setPointDirection(bob.myPointDirection-5);
  }
  if (key == 'd')
  {
    bob.setPointDirection(bob.myPointDirection+5);
  }
  if (key == 'w')
  {
    bob.accelerate(0.05);
  }
  // if (key == 's')
  //{
  //  bob.accelerate(-0.05);
  //}
}
