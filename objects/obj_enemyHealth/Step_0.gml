if global.enemyHP = 0
{
	switch(room)
	{
		case rm_tutorialFight:
			audio_stop_sound(mus_tutorial);
			room_goto(rm_dummyExplodesCutscene);
		break;
		case rm_prologueFIGHT:
			audio_stop_sound(mus_donutz);
			if combatStats.rank = "terrible"
			{
				room_goto(rm_bucketTerribleRankScreen);
			}
			if combatStats.rank = "good"
			{
				room_goto(rm_bucketGoodRankScreen);
			}		
			if combatStats.rank = "perfect"
			{
				room_goto(rm_bucketPerfectRankScreen);
			}
		break;
		case rm_DMoneysDayOutFight:
			audio_stop_sound(mus_copFight)
			if combatStats.rank = "terrible"
			{
				room_goto(rm_dmoneyTerribleRank);
			}
			if combatStats.rank = "good"
			{
				room_goto(rm_dmoneyGoodRank);
			}		
			if combatStats.rank = "perfect"
			{
				room_goto(rm_dmoneyPerfect);
			};
		break;
	}
}