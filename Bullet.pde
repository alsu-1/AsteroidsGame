class Bullet extends Floater
{
	public Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getCenterX();
		myCenterY = theShip.getCenterY();
		myPointDirection = theShip.getPointDirection() ;
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = theShip.getDirectionX() + 5*Math.cos(dRadians);
		myDirectionY = theShip.getDirectionY() + 5*Math.sin(dRadians);
		myColor = color(212, 175, 55);
	}

	public void show()
	{
		fill(myColor);
  		noStroke();
  		ellipse((int)myCenterX, (int)myCenterY, 10, 10);
	}

  	public int getX() {return (int)myCenterX;}   
	public int getY() {return (int)myCenterY;}

}