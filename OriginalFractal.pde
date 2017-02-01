public void setup()
{
	size(500, 500);
	background(0);
}

public void draw()
{
	Fractals(250, 250, 100);
}

public void Fractals(int x, int y, int siz)
{
	
	if(siz < 10)
	{
		stroke(255);
		// rect(x, y, siz, siz-5);
		System.out.println("Stop");
	}


	else
	{
		stroke(255);
		ellipse(x, y, siz, siz);
		rotate(PI/18);
		Fractals(x-siz/3, y, siz/2);
	}
}