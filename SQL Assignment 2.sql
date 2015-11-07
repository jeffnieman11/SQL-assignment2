CREATE TABLE Videos (Uniqueid INT, Title VARCHAR(50), Length TIME, URL VARCHAR(50));
INSERT INTO Videos (Uniqueid, Title, Length, URL) 
VALUES
('1', 'Create a database and a table using MYSQL commands', '2:51', 'www.youtube.com/watch?v=1Rrbh6JInzw'),
('2', 'Create Schema and table - MYSQL workbench', '7:11', 'https://www.youtube.com/watch?v=1xs8LbEL_CI'),
('3', 'Inner Join, Left Join, Right Join - MYSQL', '8:19', 'https://www.youtube.com/watch?v=DnTmzt__tYw');

CREATE TABLE Reviewers (Name VARCHAR(50), Videonumber INT, Rating INT, Comments VARCHAR(50));
INSERT INTO Reviewers (Name, Videonumber, Rating, Comments)
VALUES
('Bill', '1', '2', 'No words make it tough to follow'),
('Sally', '2', '3', 'Valuable content marred by bad audio'),
('Joe', '3', '5', 'Well done!  Very helpful'),
('Josh', '3', '4', 'Needs better graphics'),
('Bob', '1', '3', 'No annoying people to listen to'); 

SELECT 
Title AS 'Video Title',
Name AS 'Reviewed By',
Rating AS 'Rating (0-5)',
Comments AS 'Commentary'
FROM Reviewers
LEFT JOIN Videos
ON Reviewers.Videonumber=Videos.Uniqueid
ORDER BY Rating;