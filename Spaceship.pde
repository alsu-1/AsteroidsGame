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
	}
	public void show()
	{
		stroke(255);
		line(xCorners[0], yCorners[0], xCorners[1], yCorners[1]);
		line(xCorners[1], yCorners[1], xCorners[2], yCorners[2]);
		line(xCorners[2], yCorners[2], xCorners[3], yCorners[3]);
		line(xCorners[3], yCorners[3], xCorners[0], yCorners[0]);
	}
	public void move()
	{      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
}
