USE [DoctorWho]
GO

INSERT INTO [dbo].[tblAuthor]
           ([AuthorID]
           ,[AuthourName])
     VALUES
           ('1','sudqi'
          )
		  ,('2','maysam')
		  ,('3','muja')
		  ,('4','RealG')
		  ,('5','De')
GO
USE [DoctorWho]
GO

INSERT INTO [dbo].[tblCompanian]
           ([CompanianID]
           ,[CompanianName]
		   ,[WhoPlayed])
     VALUES
           ('1','sudqi','mike'
          )
		  ,('2','maysam','el')
		  ,('3','muja','dustin')
		  ,('4','RealG','solaire')
		  ,('5','De','randomDude')
GO

USE [DoctorWho]
GO

INSERT INTO [dbo].[tblDoctor]
           ([DoctorID]
           ,[DoctorNumber]
           ,[DoctorName]
           ,[BirthDate]
           ,[FirstEpisode]
           ,[LastEpisode])
     VALUES
           ('1','01','jane','1-4-2000','1','2'),
		   ('2','02','wane','2-6-2000','2','5'),
		   ('3','03','fane','5-10-2000','2','7'),
		   ('4','04','dane','10-7-2000','7','14'),
		   ('5','05','tane','11-4-2000','11','20')
GO

USE [DoctorWho]
GO

INSERT INTO [dbo].[tblEnemy]
           ([EnemyID]
           ,[EnemyName]
           ,[Descreption])
     VALUES
           ('1','evilyazan','didnt eat for a while'),
		   ('2','evilmuja','didnt sleep for a while'),
		   ('3','evilsudqi','doesnt use vim'),
		   ('4','evilmaysam','didnt study for a day'),
		   ('5','evilkhalid','doesnt like ammar')
GO

USE [DoctorWho]
GO

INSERT INTO [dbo].[tblEpisode]
           ([EpisodeID]
           ,[SeriesNumber]
           ,[EpisodeNumber]
           ,[EpisodeType]
           ,[Title]
           ,[EpisodeDate]
           ,[AuthorID]
           ,[DoctorID]
           ,[Notes])
     VALUES
           (1,1,1,'fantasy','the appearnce of dark vaders','2020-3-10',1,1,'cool episaode'),
		   (2,2,2,'dark fantasy','intro I','2020-3-16',2,2,'will the hero save the day'),
		   (3,3,3,'dark fantasy','intro II','2020-3-22',2,2,'the transformation of the hero'),
		   (4,4,4,'fantasy','from zero to hero','2020-4-1',4,4,'some cool txt'),
		   (5,5,5,'fantasy','the end of dark vaders','2020-4-10',5,5,'vary cool episaode')
GO

USE [DoctorWho]
GO

INSERT INTO [dbo].[tblEpisodeCompanion]
           ([EpisodeCompainianID]
           ,[EpisodeID]
           ,[CompanianID])
     VALUES
           (1,1,1),
		   (2,2,2),
		   (3,3,3),
		   (4,4,4),
		   (5,5,5)
GO

USE [DoctorWho]
GO

INSERT INTO [dbo].[tblEpisodeEnemy]
           ([EpisodeEnemyID]
           ,[EpisodeID]
           ,[EnemyID])
     VALUES
           (1,1,1),
		   (2,2,2),
		   (3,3,3),
		   (4,4,4),
		   (5,5,5)
GO






