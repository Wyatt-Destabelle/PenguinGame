if(place_meeting(x+50,y,Player) && !text)
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
		hint = 0;
		text = 1; 
		dialogueBox = instance_create_depth(x,y,0,dialogue_GUI);
		sprite_index = FisherTalk;
		if(global.gamePhase == 4)
		{
			
			dialogueBox.dialogueArray = ["What? Oh!!","Great job Pip! I can't wait to eat it!","Wake me up when the food is ready!"];
			
		}
		else if(global.gamePhase == 2)
		{
			dialogueBox.dialogueArray = ["Wh.... what!?", "!!!! !!! !!!","The fish got stolen? Well.... I'm too tired to get another...", "Oh I know, how about you do it Pip!", "Go down to the end of the pier and cast your line!","Press space to cast your line, then hit the spacebar when the red circle is inside the ring!", "Wait what's a space bar?","I'll uhhh... supervise...."];
			global.gamePhase = 3;
		}
		else
		{
			sprite_index = FisherSleep;
			dialogueBox.dialogueArray = ["ZZZZZZZZZZZZZZZZZ","zzzzZZZZZzzzzZZZZ"];
		}
	}
}
if(text)
{
	if(!global.dialogue)
	{
		text = 0;
		sprite_index = FisherSleep;
	}
	
}
	