class Spaceship extends Floater  
{   
	public Spaceship() 
	{
		corners = 4;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = 16;
		yCorners[0] = 0;
		xCorners[1] = -8;
		yCorners[1] = 8;
		xCorners[2] = -2;
		yCorners[2] = 0;
		xCorners[3] = -8;
		yCorners[3] = -8;

		myCenterX = 450;
		myCenterY = 450;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
		myColor = 255;
	}
	public void setCenterX(double x){myCenterX = x;}
	public double getCenterX(){return (double) myCenterX;}
	public void setCenterY(double y){myCenterY = y;}
	public double getCenterY(){return (double) myCenterY;}
	public void setDirectionX(double x){myDirectionX = x;}
	public double getDirectionX(){return (double) myDirectionX;}
	public void setDirectionY(double y){myDirectionY = y;}
	public double getDirectionY(){return (double) myDirectionY;}
	public void setPointDirection(double degrees){myPointDirection = degrees;}
	public double getPointDirection(){return (double) myPointDirection;}

}
