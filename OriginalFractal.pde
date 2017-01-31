public void setup()
{
	size(500, 500);
	background(0);
}

public void draw()
{
	Fractals(100, 100, 300);
}

public void Fractals(int x, int y, int siz)
{
	
	if(siz <= 10)
	{
		stroke(255);
		fill(255);
		rect(x, y, siz, siz/2);
	}


	else
	{
		stroke(255);
		fill(255);
		rect(x, y, siz, siz/2);
		Fractals(x, y, siz-10);
		Fractals(x + siz*2, y, siz-20);
	}
}