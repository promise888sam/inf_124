ALTER TABLE game
MODIFY COLUMN name varchar(128) not null unique;

INSERT INTO game(name, publisher, year, platform, img)
values('God of War', 'Sony Entertainment', 2018, 'PlayStation 4', 'https://www.virginmegastore.ae//medias/sys_master/root/h99/h8c/9159138934814/God-of-War-378794-Thumbnail.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Fortnite', 'Epic Games', 2017, 'PC, PS4', 'fortnite.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('ARK', 'Studio Wildcard', 2017, 'PC, Play Station 4', 'ark.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Borderlands 3', '2K Games', 2019, 'Windows, PS4', 'bl3.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Marvel\'s Spider-man', 'Sony Interactice Entertainment', 2018, 'PlayStation 4', 'msm.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Red Dead Redemption II', 'Rockstar Games', 2018, 'PlayStation 4', 'rdr2.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('League of Legends', 'Riot Games', 2009, 'Windows, macOS', 'league.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Overwatch', 'Blizzard Entertainment', 2016, 'Windows, PS4', 'ow.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Don\'t Starve Together', 'Klei Entertainment', 2013, 'PC, PS4', 'Don\'t Starve Together.jpg');

INSERT INTO game(name, publisher, year, platform, img)
values('Call of Duty: Black Ops 4', 'Activision', 2018, 'PC, PS4', 'https://s3.gaming-cdn.com/images/products/2468/271x377/call-of-duty-black-ops-4-cover.jpg');