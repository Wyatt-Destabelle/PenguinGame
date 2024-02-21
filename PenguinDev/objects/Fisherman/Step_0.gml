if(place_meeting(x+50,y,Player))
{
	triggerable = 1;
	if(!hint && !text)
		drawHint();
	
}
else
{
	
	triggerable = 0;
	hint = 0;
	
	if(hintID)
		destroyHint();
	if(textID)
		destroyText();
	text = 0;
	sprite_index = FisherSleep;
}

if(triggerable)
{
	if(keyboard_check(vk_space))
	{
		if(hintID)
			destroyHint();
		if(textID)
			destroyText();
		drawText();
	}
}

function drawHint()
{
	hintID = instance_create_layer(x-100,y-250,"text",textbox_obj);
	hintID.sprite_index = textbox[0];
	hint = 1;
}
function drawText()
{
	sprite_index = FisherTalk;
	textID = instance_create_layer(x-100,y-250,"text",textbox_obj);
	textID.sprite_index = Sprite12;
	text = 1;
}

function destroyHint()
{
	instance_destroy(hintID);
}
function destroyText()
{
	instance_destroy(textID);
}