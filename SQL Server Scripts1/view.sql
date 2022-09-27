
create or alter view viewEpisodes As
(Select R.AuthourName, D.DoctorName,dbo.FnEnemies1(E.EpisodeID)as Enimies,dbo.fnCompanians(E.EpisodeID)as Companians from DoctorWho.dbo.tblAuthor R , DoctorWho.dbo.tblDoctor D ,DoctorWho.dbo.tblEpisode E
where E.AuthorID=R.AuthorID and E.DoctorID=D.DoctorID 
)



