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
	s = s - (.05*(direction/90) +.01);
}
else
{
	s = s - (.11*((direction-360)/90));
}
speed = s;


direction += moveX
image_angle += moveX