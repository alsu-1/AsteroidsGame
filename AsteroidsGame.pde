Spaceship chip;
Star[] astro;
boolean w, a, d, f;
int cooldown;
public void setup() 
{
  	size(600, 600);
  	chip = new Spaceship();
  	astro = new Star[100];
  	for(int i = 0; i < astro.length; i++){
  		astro[i] = new Star();
  	}
}

public void draw() 
{
	background(150);
	for(int i = 0; i < astro.length; i++){
  		astro[i].show();
  	}
  	//text(cooldown, 100, 100);
  	//if (cooldown < 1000){
  	//	cooldown += 1;
  	//}
  	if(w){
  		chip.accelerate(0.08);
  	}
  	if(d){
  		chip.turn(3);
  	}
  	if(a){
  		chip.turn(-3);
  	}
  	if(f){
  		//if(cooldown == 1000){
	  		chip.setCenterX(Math.random() * 600);
	  		chip.setCenterY(Math.random() * 600);
	  		chip.setDirectionX(0);
	  		chip.setDirectionY(0);
	  		chip.setPointDirection(Math.random() * 360);
	  		cooldown = 0;
	  	//}
  	}
  	chip.show();
  	chip.move();
}

public void keyPressed()
{
	if(key == 'w')
	{
		w = true;
	}
	if(key == 'd')
	{
		d = true;
	}
	if(key == 'a')
	{
		a = true;
	}
	if(key == 'f')
	{
		f = true;
	}
}

public void keyReleased()
{
	if(key == 'w')
	{
		w = false;
	}
	if(key == 'd')
	{
		d = false;
	}
	if(key == 'a')
	{
		a = false;
	}
	if(key == 'f')
	{
		f = false;
	}
}
