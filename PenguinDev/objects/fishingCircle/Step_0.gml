timer += 1;

if(keyboard_check_pressed(vk_space))
{
	idCirc = collision_circle(x,y,sprite_width/2,closingRing,true,true)
	if(idCirc)
	{
		instance_destroy(idCirc);
	}
	else
	{
		fisherPointer.complete = 1;
		instance_destroy();
	}
		
}
if(timer % 180 == 0)
{
	curCircle = instance_create_depth(x,y,0,closingRing);
	curCircle.parent = id;
}
if(missed)
{
		fisherPointer.complete = 1;
		instance_destroy();
}
if(timer > 710)
{
fisherPointer.won = 1;
fisherPointer.complete = 1;
instance_destroy();

}





