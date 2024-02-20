moveX = 0;

if(keyboard_check(ord("A")))
{

	moveX += 2;
}
if(keyboard_check(ord("D")))
{

	moveX -= 2
}
if(y > 1500&& direction  > 100)
{
	y = 0 - (y - 1500);
}
if(y < 0 && direction < 100)
{
	y = -y + 1500;
}

if(direction > 95 && direction < 265)
{
	instance_destroy();
}
if(direction < 180)
{
	speed = 8 - (.5*(direction/90));
}
else
{
	speed = 8 - (.5*((direction-360)/90));
}

direction += moveX
image_angle += moveX