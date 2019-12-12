Spaceship chip;
Star[] astro;
boolean w, a, d, f, e;
int cooldown, bulletCooldown;
double dist1;
ArrayList <Asteroid> JunkList = new ArrayList<Asteroid>();
ArrayList <Bullet> pew = new ArrayList<Bullet>();
public void setup() 
{
  	size(900, 900);
  	chip = new Spaceship();
  	astro = new Star[100];
  	for(int i = 0; i < astro.length; i++)
  	{
  		astro[i] = new Star();
  	}
  	for(int i = 0; i < 20; i++)
  	{
  		JunkList.add(new Asteroid());
  	}
  	cooldown = 1000;
}

public void draw() 
{
	background(0);
	for(int i = 0; i < astro.length; i++){
  		astro[i].show();
  	}
  	for(int i = 0; i < JunkList.size(); i++){
  		JunkList.get(i).show();
  		JunkList.get(i).move();
  	}
  	text(cooldown, 100, 100);
  	if (cooldown < 1000){
  		cooldown += 1;
  	}
  	if (bulletCooldown < 25){
  		bulletCooldown += 1;
  	}
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
  		if(cooldown == 1000){
	  		chip.setCenterX(Math.random() * 600);
	  		chip.setCenterY(Math.random() * 600);
	  		chip.setDirectionX(0);
	  		chip.setDirectionY(0);
	  		chip.setPointDirection(Math.random() * 360);
	  		cooldown = 0;
	  	}
  	}
  	if(e && bulletCooldown == 25){
  		pew.add(new Bullet(chip));
  		bulletCooldown = 0;
  	}
  	for(Bullet tempPew : pew){
  		tempPew.show();
  		tempPew.move();
  	}
  	for(int i = 0; i < JunkList.size(); i++){
  		for(int j = 0; j < pew.size(); j++){
  			dist1 = dist(JunkList.get(i).getX(), JunkList.get(i).getY(), pew.get(j).getX(), pew.get(j).getY());
  			if (dist1 < 25) {
  				JunkList.remove(i);
  				pew.remove(j);
  				break;
  			}
  		}
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
	if(key == 'e')
	{
		e = true;
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
	if(key == 'e')
	{
		e = false;
	}
}
