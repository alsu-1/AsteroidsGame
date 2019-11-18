class Star
{
  int myX, myY, myColor;

  public Star()
  {
  	myX = (int)(Math.random() * 600);
  	myY = (int)(Math.random() * 600);
  }

  public void show()
  {
  	fill(255);
  	noStroke();
  	ellipse(myX, myY, 3, 3);
  }
}
