USE [DoctorWho]
GO
/****** Object:  UserDefinedFunction [dbo].[FnEnemies1]    Script Date: 9/18/2022 3:22:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER   Function [dbo].[FnEnemies1](@EpisodeID int)
Returns varchar (255)
Begin 
Declare @ret varchar(255);
select @ret=e.EnemyName from DoctorWho.dbo.tblEpisodeEnemy C
	left join DoctorWho.dbo.tblEnemy e on C.EnemyID=e.EnemyID
	where c.EpisodeID=@EpisodeID
	Return @ret
	end;

