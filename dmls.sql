USE [DoctorWho]
GO

UPDATE [dbo].[tblEpisode]
   SET 
     [Title] = '{ORIGINAL_EPISODE_NAME}_CANCELLED'
      
 WHERE DoctorID=null;
GO

USE [DoctorWho]
GO


	
select string_agg(CompanianName,',' )  
	from tblCompanian as a where a.CompanianID in (select CompanianID from tblEpisodeCompanion where EpisodeID=1)
	
	--where e.EpisodeID=@EpisodeID
select STRING_AGG(CompanianName,',') from tblCompanian 
left join tblEpisodeCompanion on tblCompanian.CompanianID=tblEpisodeCompanion.CompanianID
where tblEpisodeCompanion.EpisodeID=2