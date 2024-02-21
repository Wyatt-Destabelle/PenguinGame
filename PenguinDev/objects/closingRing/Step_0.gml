image_xscale -=s;
image_yscale -= s;
if(!instance_exists(parent))
{
		instance_destroy()
}

if(image_xscale < .3)
{
	parent.missed = true;
	instance_destroy()
}