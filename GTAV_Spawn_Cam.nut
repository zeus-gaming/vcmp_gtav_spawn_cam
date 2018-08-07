function GTAVSpawn( player, pPosition ) {
	player.Immunity = 127;
	player.Frozen = true;

	player.Pos = pPosition;
	SetGTAVSpawnCameraHigh( player );
}

function SetCameraAbovePlayer ( playerID , fDistance ) {
	local player = FindPlayer( playerID );
	player.SetCameraPos( Vector ( player.Pos.x , player.Pos.y , player.Pos.z + fDistance ), player.Pos );
	return 1;
}

function SetGTAVSpawnCameraHigh ( player ) {
	NewTimer ( "SetGTAVSpawnCameraMedium" , 3000 , 1 , player.ID );
	SetCameraAbovePlayer( player.ID , 1000.0 );
}

function SetGTAVSpawnCameraMedium ( playerID ) {
	local player = FindPlayer( playerID );
	SetCameraAbovePlayer( player.ID , 400.0 );

	NewTimer ( "SetGTAVSpawnCameraLow" , 3000 , 1 , player.ID );
}

function SetGTAVSpawnCameraLow ( playerID ) {
	local player = FindPlayer( playerID );
	SetCameraAbovePlayer( player.ID , 50.0 );

	NewTimer ( "SetGTAVSpawnCameraRestore" , 3000 , 1 , player.ID );
}

function SetGTAVSpawnCameraRestore ( playerID ) {
	local player = FindPlayer( playerID );
	player.RestoreCamera( );

	player.Frozen = false;
	player.Immunity = 0;
	return true;
}
