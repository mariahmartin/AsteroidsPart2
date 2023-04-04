class Spaceship extends Floater
{
  public Spaceship()
  {
    super();
    myColor = 150;//(int)(Math.random() * 255);
    myCenterX = width/2;
    myCenterY = height/2;
    corners = 4;
    xCorners = new int[]{-8, 16, -8, -2};
    yCorners = new int[]{-8, 0, 8, 0};
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    /*
      xCorners = new int[corners];
     yCorners = new int[corners];
     xCorners[0] = -8;
     yCorners[0] = -8;
     xCorners[1] = 16;
     yCorners[1] = 0;
     xCorners[2] = -8;
     yCorners[2] = 8;
     xCorners[3] = -2;
     yCorners[3] = 0;
     */
  }
  public void setXspeed (double x)
  {
    myXspeed = x;
  }

  public void setYspeed (double y)
  {
    myXspeed = y;
  }

  public void setXCenter(double x)
  {
    myCenterX = x;
  }
  public void setYCenter(double y)
  {
    myCenterY = y;
  }
  public void setPointDirection (double angle)
  {
    myPointDirection = angle;
  }
  public void hyperspace()
  {
    myCenterX = 0;
    myCenterY = 0;
    setXspeed(0);
    setYspeed(0);
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    setXspeed(0);
    setYspeed(0);
  }

  
}
