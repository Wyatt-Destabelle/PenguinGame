timer += 1;

if(timer == 240)
{
	circleID = instance_create_depth(x+600,y+150,0,fishingCircle);
	circleID.fisherPointer = id;
}
if(complete)
{
	if(won)
	{
		global.fish = 1;
		instance_create_depth(x,y,0,Wave);
	}
	instance_create_depth(x,y,0,Player);
	instance_destroy();
}


