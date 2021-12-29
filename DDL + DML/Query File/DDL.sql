CREATE DATABASE Netplix
GO

USE Netplix
GO

CREATE TABLE Actor(
	[actor_id] CHAR(6) NOT NULL,
	[name] VARCHAR(50) NOT NULL,
	[image_url] VARCHAR(255) NOT NULL,
	[gender] VARCHAR(50) NOT NULL,
	[dob] DATE NOT NULL,
	[place_of_birth] VARCHAR(255) NOT NULL,
	[biography] VARCHAR(1000) NOT NULL,
	[popularity] FLOAT NOT NULL

	CONSTRAINT PK_actor PRIMARY KEY([actor_id]),
	CONSTRAINT check_actor_id CHECK([actor_id] LIKE 'ACT[0-9][0-9][0-9]')
)

CREATE TABLE [User](
    [user_id] CHAR(6) NOT NULL,
    [name] VARCHAR(50) NOT NULL,
    [email] VARCHAR(50) NOT NULL UNIQUE,
    [password] VARCHAR(50) NOT NULL,
    [dob] DATE,
    [date_joined] DATE NOT NULL,
    [phone] VARCHAR(12) UNIQUE,
	[image_url] VARCHAR(255) UNIQUE,

    CONSTRAINT PK_user PRIMARY KEY([user_id]),
	CONSTRAINT check_user_id CHECK ([user_id] LIKE 'USR[0-9][0-9][0-9]'),
	CONSTRAINT check_user_email CHECK ([email] LIKE '%@%'),
	CONSTRAINT check_user_phone CHECK (
			[phone] LIKE '08[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' 
			OR [phone] LIKE '08[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
			OR [phone] LIKE '08[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'
	)
	
)


CREATE TABLE Genre(
	[genre_id] CHAR(6) NOT NULL,
	[name] VARCHAR(50) NOT NULL UNIQUE,

	CONSTRAINT PK_genre PRIMARY KEY([genre_id]),
	CONSTRAINT check_genre_id CHECK([genre_id] LIKE 'GEN[0-9][0-9][0-9]')
)

CREATE TABLE ShowCategory(
	[category_id] CHAR(6) NOT NULL,
	[name] VARCHAR(50) NOT NULL UNIQUE,

	CONSTRAINT PK_category PRIMARY KEY([category_id]),
	CONSTRAINT check_category_id CHECK([category_id] LIKE 'SHC[0-9][0-9][0-9]')
)

GO
CREATE TABLE Show (
    [show_id] CHAR(6) NOT NULL,
    [category_id] CHAR(6) NOT NULL,
	[title] VARCHAR(50) NOT NULL,
    [description] VARCHAR(1000) NOT NULL,
    [director] VARCHAR(50) NOT NULL,
    [release_date] DATE NOT NULL,
    [image_url] VARCHAR(255) NOT NULL,
    [bg_url] VARCHAR(255) NOT NULL,

    CONSTRAINT PK_show PRIMARY KEY([show_id]),
    CONSTRAINT FK_show_showcategory FOREIGN KEY([category_id]) REFERENCES ShowCategory([category_id]) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT check_show_id CHECK([show_id] LIKE 'SHW[0-9][0-9][0-9]')
)

CREATE TABLE [Cast](
	[show_id] CHAR(6) NOT NULL,
	[actor_id] CHAR(6) NOT NULL,
	[character_name] VARCHAR(50) NOT NULL,

	CONSTRAINT PK_cast PRIMARY KEY([show_id], [actor_id]),
	CONSTRAINT FK_cast_show FOREIGN KEY ([show_id]) REFERENCES Show([show_id]) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_cast_actor FOREIGN KEY ([actor_id]) REFERENCES Actor([actor_id]) ON UPDATE CASCADE ON DELETE CASCADE
)

CREATE TABLE Review(
	[show_id] CHAR(6) NOT NULL,
	[user_id] CHAR(6) NOT NULL,
	[rating] INTEGER NOT NULL,
	[body] VARCHAR(255) NOT NULL,
	[review_date] DATE NOT NULL,

	CONSTRAINT PK_review PRIMARY KEY([show_id], [user_id]),
	CONSTRAINT FK_review_show FOREIGN KEY([show_id]) REFERENCES Show([show_id]),
	CONSTRAINT FK_review_user FOREIGN KEY([user_id]) REFERENCES [User]([user_id]),
	CONSTRAINT check_review_rating CHECK([rating] BETWEEN 1 AND 10)
)

CREATE TABLE WatchList(
	[show_id] CHAR(6) NOT NULL,
	[user_id] CHAR(6) NOT NULL,
	[status] VARCHAR(50) NOT NULL,

	CONSTRAINT PK_Watchlist PRIMARY KEY([show_id], [user_id]),
	CONSTRAINT FK_watchlist_show FOREIGN KEY([show_id]) REFERENCES Show([show_id]) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_watchlist_user FOREIGN KEY([user_id]) REFERENCES [User]([user_id]) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT check_watchlist_status CHECK([status] IN ('Watching', 'Planning', 'Completed'))
)  

CREATE TABLE ShowGenre(
	[show_id] CHAR(6) NOT NULL,
	[genre_id] CHAR(6) NOT NULL,

	CONSTRAINT PK_showgenre PRIMARY KEY([show_id], [genre_id]),
	CONSTRAINT FK_showgenre_show FOREIGN KEY ([show_id]) REFERENCES Show([show_id]) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_showgenre_genre FOREIGN KEY ([genre_id]) REFERENCES Genre([genre_id]) ON UPDATE CASCADE ON DELETE CASCADE
)
