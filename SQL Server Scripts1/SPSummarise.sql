CREATE OR ALTER   Function [dbo].[spSummariseEpisodes]()
Returns table  (
enemiesID varchar(255),
CompID varchar(255))
Begin
Declare @tab table(
enemiesID varchar(255),
CompID varchar(255)
); 
Declare @ids varchar (255)
Declare @idsE varchar (255) 
 select top(3) @ids=string_agg(CompanianID,',') 
	from tblEpisodeCompanion 
	Group by CompanianID
	order by Count(EpisodeID) 
	
 select top(3) @idsE=string_agg(EnemyID,',') 
	from tblEpisodeEnemy 
	Group by EnemyID
	order by Count(EpisodeID) 
	insert into @tab(enemiesID,CompID) Values (@ids,@idsE)

	
end;



    