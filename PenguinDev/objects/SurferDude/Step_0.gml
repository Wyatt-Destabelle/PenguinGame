if(place_meeting(x-50,y,Player) && !text)
{
hint = 1;
}
else 
{
	hint = 0;
}

if(hint && !text)
{
	if(keyboard_check_pressed(vk_space))
	{
		sprite_index = surferTalk;
		hint = 0;
		text = 1; 
		dialogueBox = instance_create_depth(x,y,0,dialogue_GUI);
		if(global.gamePhase == 6)
		{
			dialogueBox.dialogueArray = dialoguePreSurf;
			global.gamePhase = 7;
		}
		if(global.gamePhase == 8)
		{
			global.gamePhase = 9;
			dialogueBox.dialogueArray = ["THAT", "WAS", "GNARLY BRO!!!","As agreed, the fireworks are yours."];
		}
		else if(array_length(dialogueBox.dialogueArray) == 0)
			dialogueBox.dialogueArray = ["Hang loose brah!"];
	}
}
if(text)
{
	
	if(!global.dialogue)
	{
		text = 0;
		sprite_index = surferIdle;
	}
}
	
