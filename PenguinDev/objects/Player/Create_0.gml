moveSpeed = 7;
characterDirection = 1;
forwardBackward = 0;
walkingSprites  = [PlayerWalkRight,PlayerWalkLeft,PlayerWalkBack,PlayerWalkFront];
standingSprites = [playerIdleFront,PlayerIdleBack];
collidable = [Fisherman,Mother,SurferDude];
global.player = id;

if(global.gamePhase == 8)
{
	x = 3200;
	y = 4600;
}