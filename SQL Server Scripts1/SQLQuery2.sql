Create or alter Function fnCompanians(@EpisodeID int)
Returns varchar 
Begin 
Declare @ret varchar;
select @ret= e.CompanianName as tags 
	from tblEpisodeCompanion as e 
	left join tblCompanian as C on C.CompanianID =e.CompanianID
	--where e.EpisodeID=@EpisodeID
	Group by e.EpisodeID
	Return @ret
end;
	

