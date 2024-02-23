if(place_meeting(x+20,y+20,Player) && !text)
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
		sprite_index = blueTalk;
		if(global.gamePhase == 9)
		{
			dialogueBox.dialogueArray = ["You got it!? AWESOME!!!","Lets start this party!"];
			ed = 1;
		}
		if(global.gamePhase >= 6 && global.gamePhase <= 8)
		{
			dialogueBox.dialogueArray = ["Go get those fireworks Pip! You got this!"];
		}
		if(global.gamePhase == 5)
		{
			global.gamePhase = 6;
			dialogueBox.dialogueArray = ["Now we need to go get fireworks for the party!", "I bet Bohdi's got some fireworks..", "That delinquent...","He's usually on the south beach."];
		}
		if(global.gamePhase == 4)
		{
			
			dialogueBox.dialogueArray = ["You got the fish! Awesome!", "Just go ahead and put it on the fire."];
			
		}
		else if(global.gamePhase >=  2 && global.gamePhase <= 3)
		{
			dialogueBox.dialogueArray = ["Go talk to Albert! We need that fish..."];
		}
		else if(global.gamePhase == 1)
		{
			dialogueBox.dialogueArray = ["You have to help Pip!", "A seagull ran off with our fish and fireworks! How are we going to have our party now!?", "I need you to go get another fish. Go ask Albert- He can help you get one.", "I heard he was near the pier to the east."];
			global.gamePhase = 2;
		}
	}
}
if(text)
{
	if(!global.dialogue)
	{
		text = 0;
		sprite_index = blueIdle;
	}
	
}
	
	if(ed == 1 && !global.dialogue)
		room = StartPage;