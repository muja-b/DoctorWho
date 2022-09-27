CREATE OR ALTER   Function [dbo].[spSummariseEpisodesEnimies]()
Returns varchar (255)
Begin 
Declare @ids varchar (255) 
 select top(3) @ids=string_agg(EnemyID,',') 
	from tblEpisodeEnemy 
	Group by EnemyID
	order by Count(EpisodeID) 
	Return @ids;
end;
