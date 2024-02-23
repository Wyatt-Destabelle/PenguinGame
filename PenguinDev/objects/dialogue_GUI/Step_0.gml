if(array_length(dialogueArray) == 0)
{
	global.dialogue = 0;
				audio_stop_sound(Penguin___Sound_Effect__ProSounds);
	instance_destroy()
	return;
}

if(!writingDone)
{
	if(keyboard_check_pressed(vk_space))
	{
		writingDone = 1;
		s = dialogueArray[i];
		letterN = string_length(dialogueArray[i]);
	}
	else if(letterN <= string_length(dialogueArray[i])) 
	{
		s+= string_char_at(dialogueArray[i],letterN);
		letterN += 1;
	}
	else 
	{
		writingDone = 1;
	}
}
else
{
	if(keyboard_check_pressed(vk_space))
	{
		
		letterN= 1;
		s = "";
		i += 1;
		writingDone = 0;
		if(array_length(dialogueArray) == i)
		{
			global.dialogue = 0;
			audio_stop_sound(Penguin___Sound_Effect__ProSounds);
			instance_destroy();
		}
	}
}


