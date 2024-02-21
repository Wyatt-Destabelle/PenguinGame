if(global.fish == 1)
	instance_destroy();

if(place_meeting(x+50,y,Player) || place_meeting(x-50,y,Player) || place_meeting(x,y+50,Player) || place_meeting(x,y-50,Player))
{
	triggerable = 1;
	if(!hint)
		drawHint();
	
}
else
{
	
	triggerable = 0;
	hint = 0;
	
	if(hintID)
		destroyHint();

}

if(triggerable)
{
	if(keyboard_check_pressed(vk_space))
	{
		if(hintID)
			destroyHint();
		tempX = global.player.x;
		tempY = global.player.y;
		instance_destroy(global.player);
		instance_create_depth(tempX,tempY,0,PlayerFishing);

	}
}

function drawHint()
{
	hintID = instance_create_layer(x-200,y-350,"text",textbox_obj);
	hintID.sprite_index = textbox[0];
	hint = 1;
}

function destroyHint()
{
	instance_destroy(hintID);
}
