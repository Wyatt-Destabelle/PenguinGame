if(place_meeting(x+50,y,Player) || place_meeting(x-50,y,Player) || place_meeting(x,y+50,Player) || place_meeting(x,y-50,Player))
{
	if(global.gamePhase == 4)
		hint = 1;
}
else 
{
hint = 0;
}

if(hint)
{
	
	if(keyboard_check_pressed(vk_space))
	{
		global.gamePhase = 5;
		sprite_index = fishcook;
		hint = 0;
	}
}