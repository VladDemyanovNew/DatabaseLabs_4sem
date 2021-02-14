use DemyanovUNIVER
CREATE Table RESULTS
(	ID int primary key identity(1, 1),
	STUDENT_NAME nvarchar(50) not null,
	MARK1 int not null,
	MARK2 int not null,
	AVER_VALUE as (MARK1 + MARK2) / 2
);

INSERT into RESULTS (STUDENT_NAME, MARK1, MARK2)
	values ('������', 2, 7),
		   ('������', 8, 4),
		   ('�������', 8, 8);