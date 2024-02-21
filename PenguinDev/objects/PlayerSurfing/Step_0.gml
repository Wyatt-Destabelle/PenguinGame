moveX = 0;

if(keyboard_check(ord("A")))
{

	moveX += 2;
}
if(keyboard_check(ord("D")))
{

	moveX -= 2
}
if(y > 1600&& direction)
{
	instance_destroy();
}


if(direction > 95 && direction < 265)
{
	instance_destroy();
}
if(direction < 180)
{
	speed = s - (2*(direction/90));
}
else
{
	speed = s - (8*((direction-360)/90));
}
if(boost)
{
	if(s>9)
		s -= .1;
	else 
	{
		s = 9;
		boost = false;
	}
}

direction += moveX
image_angle += moveX