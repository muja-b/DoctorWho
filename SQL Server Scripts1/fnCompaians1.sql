Create or alter Function fnCompanians1(@EpisodeID int)
Returns varchar (255)
Begin 
Declare @ret varchar(255);
select @ret=STRING_AGG(CompanianName,',') from tblCompanian 
left join tblEpisodeCompanion on tblCompanian.CompanianID=tblEpisodeCompanion.CompanianID
where tblEpisodeCompanion.EpisodeID=@EpisodeID
	Return @ret
end;
