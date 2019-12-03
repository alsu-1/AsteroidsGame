class Star
{
  int myX, myY, myColor, mySize;

  public Star()
  {
  	myX = (int)(Math.random() * 600);
  	myY = (int)(Math.random() * 600);
    mySize = (int)(Math.random() * 5) + 1;
  }

  public void show()
  {
  	fill(255);
  	noStroke();
  	ellipse(myX, myY, mySize, mySize);
  }
}
