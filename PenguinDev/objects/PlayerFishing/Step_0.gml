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
		global.gamePhase = 4;
		sprite_index = doneFishing;
	}
	else
	{
	instance_create_depth(x,y,0,Player);
	instance_destroy();
	}
}


