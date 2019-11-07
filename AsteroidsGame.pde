Spaceship chip;
public void setup() 
{
  	size(600, 600);
  	chip = new Spaceship();
}
public void draw() 
{
  	background(0);
  	chip.show();
  	chip.move();
}
public void keyPressed()
{
	if(key == 'w')
	{
		chip.accelerate(0.1);
	}
	if(key == 'd')
	{
		chip.turn(5);
	}
	if(key == 'a')
	{
		chip.turn(-5);
	}
}