
moveX = 0;
moveY = 0;


if(keyboard_check(ord("W")))
{
	
	moveY = -1;
	characterDirection = 2;
	forwardBackward = 1;
		if(place_meeting(x,y-5,collidable))
		moveY = 0;

}
else if(keyboard_check(ord("S")))
{
	moveY = 1;
	characterDirection = 3;
	forwardBackward = 0;
	if(place_meeting(x,y+5,collidable))
		moveY = 0;
	
}
if(keyboard_check(ord("D")))
{
	moveX = 1;
	characterDirection = 0;
	if(place_meeting(x+15,y,collidable))
		moveX = 0;
}
else if(keyboard_check(ord("A")))
{
	moveX = -1;
	characterDirection = 1;
	if(place_meeting(x-15,y,collidable))
		moveX = 0;
}

x += moveX * moveSpeed;
y += moveY * moveSpeed;

if(moveX != 0 || moveY != 0)
{
	sprite_index = walkingSprites[characterDirection];
}
else
{
	sprite_index = standingSprites[forwardBackward];
}
depth = -y;




