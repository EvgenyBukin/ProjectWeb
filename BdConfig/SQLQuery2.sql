GO
CREATE TABLE Animes
(
	[AnimeID] INT NOT NULL PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(250) NOT NULL,
	[Text] NVARCHAR(2000) NOT NULL,
	[Category] NVARCHAR(250) NOT NULL,
	[Img1] NVARCHAR(250) NOT NULL,
	[Img2] NVARCHAR(250) NOT NULL,
	[Img3] NVARCHAR(250) NOT NULL,
)

GO

INSERT INTO Animes(Name, Text, Category, Img1, Img2, Img3) 
VALUES 
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/Img1.png', '/Content/Img/Img2.png', '/Content/Img/Img3.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/Img1.png', '/Content/Img/Img2.png', '/Content/Img/Img3.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/Img1.png', '/Content/Img/Img2.png', '/Content/Img/Img3.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/Img1.png', '/Content/Img/Img2.png', '/Content/Img/Img3.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/Img1.png', '/Content/Img/Img2.png', '/Content/Img/Img3.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/Img1.png', '/Content/Img/Img2.png', '/Content/Img/Img3.png');
GO