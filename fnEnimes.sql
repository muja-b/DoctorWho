Create OR ALTER Function FnEnemies1(@EpisodeID int)
Returns varchar(255)
Begin 
Declare @ret varchar(255);
select @ret=String_agg(e.EnemyName,',')  from DoctorWho.dbo.tblEpisodeEnemy C
	left join DoctorWho.dbo.tblEnemy e on C.EnemyID=e.EnemyID
	where c.EpisodeID=@EpisodeID
	Return @ret
	end;

	