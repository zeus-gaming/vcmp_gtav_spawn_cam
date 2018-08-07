# vcmp_gtav_spawn_cam
Spawn camera from Grand Theft Auto V created for Liberty Unleashed ported to Vice City Multiplayer

##### Quote By #### VortrexFTW
> The GTA V spawn camera is pretty neat. The three step birds eye view, each getting closer until finally restoring view and control to the player. There's usually a little interesting dialog in GTA V for this, but I didn't put that in here.
> 
> So, I've created one for [Liberty Unleashed](http://liberty-unleashed.co.uk/), a GTA III multiplayer mod.

**Instructions:**
Put the "GTAV_Spawn_Pos.nut" file into your Scripts folder of your server.
The proper directory structure should be: *MainServerDir/Scripts/GTAV_Spawn_Pos.nut*

In order to use this, you must use this in `onPlayerSpawn( player )`

`GTAVSpawn ( player, Vector pPosition );`

> The spawn camera script takes care of the rest.