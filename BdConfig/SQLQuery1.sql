GO
CREATE TABLE Animes
(
	[NewsID] INT NOT NULL PRIMARY KEY IDENTITY,
	[Txt1] NVARCHAR(300) NOT NULL,
	[Txt2] NVARCHAR(2000) NOT NULL,
	[Txt3] NVARCHAR(100) NOT NULL,
	[Img1] NVARCHAR(150) NOT NULL,
	[Img2] NVARCHAR(150) NOT NULL,
	[Img3] NVARCHAR(150) NOT NULL
)

GO

INSERT INTO Animes(Txt1, Txt1, Txt1, Img1, Img2, Img3) 
VALUES 
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/NewsImg01.png', '/Content/Img/NewsImg02.png', '/Content/Img/NewsImg03.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/NewsImg01.png', '/Content/Img/NewsImg02.png', '/Content/Img/NewsImg03.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/NewsImg01.png', '/Content/Img/NewsImg02.png', '/Content/Img/NewsImg03.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/NewsImg01.png', '/Content/Img/NewsImg02.png', '/Content/Img/NewsImg03.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/NewsImg01.png', '/Content/Img/NewsImg02.png', '/Content/Img/NewsImg03.png'),
	('����� ��������������� ������ Sword Art Online Ordinal Scale', '��������� ������� �����-������� Sword Art Online ������� ����� ��������������� ������ �� ��������� Dengeki Bunko Haru no Saiten 2016.', '�����', '/Content/Img/NewsImg01.png', '/Content/Img/NewsImg02.png', '/Content/Img/NewsImg03.png');
GO

CREATE TABLE Animes
(
	[AnimeID] INT NOT NULL PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(100) NOT NULL,
	[Description] NVARCHAR(500) NOT NULL,
	[Category] NVARCHAR(50) NOT NULL,
	[Price] DECIMAL(16, 2) NOT NULL
)

GO

INSERT INTO Games(Name, Description, Category, Price) 
VALUES 
	('SimCity', '����������������� ��������� ����� � ����! �������� ����� ����� �����', '���������', 1499.00),
	('TITANFALL', '��� ���� ��������� ��� �� ���������, ��� ����� ������������������� ��������, ������� � ���������, � ������� � ������', '�����', 2299.00),
	('Battlefield 4', 'Battlefield 4 � ��� ������������ ��� �����, ������ ������ ������, ��������� ����� ��������������, ������ ������� ���', '�����', 899.40),
	('The Sims 4', '� ���������� ������� �������� ���� ������� ���� ���� �����. �� � ������� The Sims 4 ��� ����������� ����� �����! 
		��� ������ � ���, ��� � � ��� ����, ��� ����������, ��� �������� � ������������ ���� ���', '���������', 15.00),
	('Dark Souls 2', '����������� ����������� �������� ������ ����� �������� ������� ������ ����� ���������� ���������. Dark Souls II ��������� 
		������ �����, ����� ������� � ����� ���. ���� ���� ��������� � ������ � ������� ��������� Dark Souls ����� ��������.', 'RPG', 949.00),
	('The Elder Scrolls V: Skyrim', '����� �������� ������ �������� ������� ��������� �� ����� ����������. ������ ������������ �� ������� ���������� ����� �����, 
		� ���������� ��������. � ���� ��, ��� ������������� ������� ������, � ��� ��������� �������� � ����������� �������. ������ ������� �������� � ���� 
		������� ������� �� ����������������� � ��������, � ����� �������� ����� ����� ����������� �������.', 'RPG', 1399.00),
	('FIFA 14', '�����������, ��������, ������������� ������! ����������� �������� �������� FIFA ���� ��� ����� ��������� ����������, ���������� ���������� ���� �
		 ������ ���� � ����������� �������� � ����.', '���������', 699.00),
	('Need for Speed Rivals', '�������� ��� ����������� ������ ����. ������� ����� ����� ��������� � ��������������������� ������� � ���������� ������������� 
		����� ��������� � ��������. �������� ������� � ���, � ������� ���� ������ ��� ��������� � ������ � �������. ', '���������', 15.00),
	('Crysis 3', '�������� ���� ��������������� � 2047 ����, � ��� ��������� ��������� � ���� �������.', '�����', 1299.00),
	('Dead Space 3', '� Dead Space 3 ����� ����� � ������� ������ ���� ������ ������������ � ����������� �����������, ����� ������ � ������������� �����������.', '�����', 499.00);

GO