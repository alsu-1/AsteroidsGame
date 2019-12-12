class Asteroid extends Floater
{
	public Asteroid()
	{
		corners = 8;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = (int)(Math.random() * 12) + 4;
		yCorners[0] = (int)(Math.random() * 28) + 4;
		xCorners[1] = (int)(Math.random() * 28) + 4;
		yCorners[1] = (int)(Math.random() * 12) + 4;
		xCorners[2] = (int)(Math.random() * 28) + 4;
		yCorners[2] = (int)(Math.random() * -12) - 4;
		xCorners[3] = (int)(Math.random() * 12) + 4;
		yCorners[3] = (int)(Math.random() * -28) - 4;
		xCorners[4] = (int)(Math.random() * -12) - 4;
		yCorners[4] = (int)(Math.random() * -28) - 4;
		xCorners[5] = (int)(Math.random() * -28) - 4;
		yCorners[5] = (int)(Math.random() * -12) - 4;
		xCorners[6] = (int)(Math.random() * -28) - 4;
		yCorners[6] = (int)(Math.random() * 12) + 4;
		xCorners[7] = (int)(Math.random() * -12) - 4;
		yCorners[7] = (int)(Math.random() * 28) + 4;

		myCenterX = (int)(Math.random() * 1800) - 900;
		myCenterY = (int)(Math.random() * 1800) - 900;
		myDirectionX = (int)(Math.random() * 6) - (int)(Math.random() * 5);
		myDirectionY = (int)(Math.random() * 6) - (int)(Math.random() * 5);
		myPointDirection = 0;
		myColor = 166;
		while(rotationSpeed == 0)
			rotationSpeed = (int)(Math.random() * 6) - 3;
	}
	private int rotationSpeed = (int)(Math.random() * 6) - 3;
	public void move()
	{
		turn(rotationSpeed);
		super.move();
	}

	public int getX() {return (int)myCenterX;}   
	public int getY() {return (int)myCenterY;}

}