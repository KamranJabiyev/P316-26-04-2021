CREATE TABLE Cities(
	Id int identity primary key,
	Name nvarchar(100) not null,
	Population int,
	Area decimal(10,2),
	CountryId int references Countries(Id)
)

CREATE TABLE Countries(
	Id int identity primary key,
	Name nvarchar(100) not null,
	Population int,
	Area decimal(10,2)
)

CREATE TABLE Groups(
	Id int identity primary key,
	Name nvarchar(10) unique not null,
	MaxCount int check(MaxCount<=18)
)

CREATE TABLE Students(
	Id int identity primary key,
	Name nvarchar(100) not null,
	Surname nvarchar(100),
	Email nvarchar(255) unique
)

CREATE TABLE GroupStudent(
	Id int identity primary key,
	StudentId int references Students(Id),
	GroupId int references Groups(Id)
)

--INNER JOIN

SELECT c.Name 'City',
	   c.Population 'City Population',
	   c.Area 'City Area',
	   cty.Name 'Country',
	   cty.Population 'Country Population',
	   cty.Area 'Country Area'
	   FROM Cities c
JOIN Countries cty
ON
c.CountryId=cty.Id

--Left OUTER JOIN

SELECT c.Name 'City',
	   c.Population 'City Population',
	   c.Area 'City Area',
	   cty.Name 'Country',
	   cty.Population 'Country Population',
	   cty.Area 'Country Area'
	   FROM Cities c
LEFT JOIN Countries cty
ON
c.CountryId=cty.Id

--RIGHT OUTER JOIN

SELECT c.Name 'City',
	   c.Population 'City Population',
	   c.Area 'City Area',
	   cty.Name 'Country',
	   cty.Population 'Country Population',
	   cty.Area 'Country Area'
	   FROM Cities c
Right JOIN Countries cty
ON
c.CountryId=cty.Id

--FULL OUTER JOIN

SELECT c.Name 'City',
	   c.Population 'City Population',
	   c.Area 'City Area',
	   cty.Name 'Country',
	   cty.Population 'Country Population',
	   cty.Area 'Country Area'
	   FROM Cities c
FULL JOIN Countries cty
ON
c.CountryId=cty.Id



