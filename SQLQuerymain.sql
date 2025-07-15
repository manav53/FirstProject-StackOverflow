
create table Categories(
CategoryID int primary key identity(1,1),
CategoryName nvarchar(max))
go
create table Users(
UserID int primary key identity(1,1),
Email nvarchar(max),
PasswordHash nvarchar(max),
Name nvarchar(max),
Mobile nvarchar(max),
IsAdmin bit default(0))
go
create table Questions(
QuestionID int primary key identity(1,1),
QuestionName nvarchar(max),
QuestionDateAndTime datetime,
UserID int references Users(UserID) on delete cascade,
CategoryID int references Categories(CategoryID) on delete cascade,
VotesCount int,
AnswersCount int,
ViewsCount int)
go

create table Answers(
AnswerID int primary key identity(1,1),
AnswerText nvarchar(max),
AnswerDateAndTime datetime,
UserID int references Users(UserID) on delete no action,
QuestionID int references Questions(QuestionID) on delete no action,
VotesCount int)
go

create table Votes(
VoteID int primary key identity(1,1),
UserID int references Users(UserID) on delete cascade,
AnswerID int references Answers(AnswerID) on delete cascade,
VoteValue int)
go

go
insert into Users values('admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', 'Admin','000000000000', 1)
go
insert into Users values('test@gmail.com', 'ecd71870d1963316a97e3ac3408c9835ad8cf0f3c1bc703527c30265534f75ae', 'Test', '000000000000', 0)
go
insert into Categories values('HTML')
go
insert into Categories values('CSS')
go
insert into Categories values('JavaScript')
go
insert into Questions values('How to display icon in the browser titlebar using HTML', '2018-8-2 10:03 am', 2, 1, 0, 0, 0)
go
insert into Questions values('How to set ba', '2018-8-2 1:15 am', 2, 2, 0, 0, 0)
go
