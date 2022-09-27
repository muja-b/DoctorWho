Create or alter Function fnCompanians(@EpisodeID int)
Returns varchar (250)
Begin 
Declare @ret varchar(255);
select @ret=string_agg(CompanianName,',' )  
	from tblCompanian as a where a.CompanianID in (select CompanianID from tblEpisodeCompanion where EpisodeID=@EpisodeID)
	Return @ret
end;
