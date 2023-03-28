CREATE DATABASE songsdb;
#DROP DATABASE songsdb;

USE songsdb;


#-----------------------------------------------
#	ARTISTS
#----------------------------------------------
CREATE TABLE artists(
id int not null unique auto_increment,
artistname varchar(300) not null
);

ALTER TABLE artists ADD
CONSTRAINT PK_artists PRIMARY KEY(id);

#-----------------------------------------------
#	ALBUMS
#----------------------------------------------
CREATE TABLE albums(
id int not null unique auto_increment,
albumname varchar(300),
id_artist int,
releasedate date,
durationtime time
);

ALTER TABLE albums ADD
CONSTRAINT PK_albums PRIMARY KEY(id);

ALTER TABLE albums ADD
CONSTRAINT FK_algums_artists FOREIGN KEY(id_artist)
REFERENCES artists(id);

#-----------------------------------------------
#	SONGS
#----------------------------------------------
CREATE TABLE songs(
id int not null unique auto_increment,
songname varchar(300),
id_album int,
durationtime time 
);

ALTER TABLE songs ADD
CONSTRAINT PK_songs PRIMARY KEY(id);

ALTER TABLE songs ADD
CONSTRAINT FK_songs_albums FOREIGN KEY(id_album)
REFERENCES albums(id);