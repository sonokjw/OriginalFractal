int d = 0;

public void setup()
{
	size(500, 500);
	background(0);
	Fractals(250, 250, 100);
}

public void draw()
{
	if(mousePressed == true)
	{
		
		d = (int)(Math.random()*150);
	}
	background(0);
	Fractals(mouseX, mouseY, d);
	d+=2;
	if(d>=150)
	{
		d =0;
	}
}

public void Fractals(int x, int y, int siz)
{
	
	if(siz < 10)
	{
		// rect(x, y, siz, siz-5);
		System.out.println("Stop");
	}


	else
	{
		noStroke();
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		ellipse(x, y, siz, siz);
			
			Fractals(x-siz, y, siz/2);
			Fractals(x-siz/2, y-siz/2, siz/2);
			Fractals(x, y-siz, siz/2);
			Fractals(x+siz/2, y-siz/2, siz/2);
			Fractals(x+siz, y, siz/2);
			Fractals(x+siz/2, y+siz/2, siz/2);
			Fractals(x, y+siz, siz/2);
			Fractals(x+siz/2, y+siz/2, siz/2);
			Fractals(x, y+siz, siz/2);
			Fractals(x-siz/2, y+siz/2, siz/2);
		
	}
}