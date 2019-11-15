class Star //note that this class does NOT extend Floater
{
  int myX, myY, myColor;

  public void Star()
  {
  	myX = (int)(Math.random() * 500);
  	myY = (int)(Math.random() * 500);
  }

  public void show()
  {
  	fill(255);
  	noStroke();
  	ellipse(myX, myY, 50, 50);
  }
}
