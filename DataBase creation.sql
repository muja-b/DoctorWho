create table tblEnemy(
EnemyID int Not null,
EnemyName varchar(255),
Descreption varchar(255),
primary key(EnemyID)
);
create table tblEpisodeEnemy(
EpisodeEnemyID int not null,
EpisodeID int,
EnemyID int,
primary key(EpisodeEnemyID),
foreign key (EnemyID) references tblEnemy(EnemyID)
);

Create table tblAuthor(
AuthorID int not null,
AuthourName varchar(255),
primary key (AuthorID)
);
Create table tblEpisode(
EpisodeID int not null,
SeriesNumber int,
EpisodeNumber int,
EpisodeType varchar(255),
Title varchar(255),
EpisodeDate date,
AuthorID int,
DoctorID int,
Notes varchar(255)
primary key(EpisodeID),
foreign key(AuthorID) references tblAuthor(AuthorID)
);

alter table tblEpisodeEnemy
add Foreign key(EpisodeID) references tblEpisode(EpisodeID);

create table tblCompanian(
CompanianID int not null,
CompanianName varchar(255),
WhoPlayed varchar(255)
primary key(CompanianID)
);

create table tblEpisodeCompanion(
EpisodeCompainianID int not null,
EpisodeID int,
CompanianID int,
primary key(EpisodeCompainianID),
foreign key(EpisodeID) references tblEpisode(EpisodeID),
foreign key(CompanianID) references tblCompanian(CompanianID)
);

create table tblDoctor(
DoctorID int not null,
DoctorNumber int,
DoctorName varchar(255),
BirthDate date,
FirstEpisode int,
LastEpisode int,
primary key(DoctorID)
);

alter table tblEpisode
add Foreign key(DoctorID) references tblDoctor(DoctorID);
