use DemyanovUNIVER
CREATE table STUDENT
(
	[����� �������] nvarchar(10) primary key not null,
	[������� ��������] nvarchar(50) not null,
	[����� ������] int not null,
	[���� ��������] date not null,
);

ALTER table STUDENT ADD [���� �����������] date;	
ALTER table STUDENT ADD POL nchar(1) default '�' check (POL in ('�', '�'));
--ALTER table STUDENT DROP Column [���� �����������];
ALTER table STUDENT ADD check ([����� ������] > 0 AND [����� ������] <= 12);

INSERT into STUDENT ([����� �������], [������� ��������], [����� ������], [���� ��������], [���� �����������], POL)
	Values 
	('245kl321', '������', 4, '2-2-2000', '2-2-2009', '�'),
	('p231l333', '��������', 5, '2-2-2000', '2-2-2009', '�'),
	('kk233ll4', '������', 4, '2-2-2000', '2-2-2009', '�'),
	('2l222344', '���������', 7, '2-2-2000', '2-2-2020', '�'),
	('2l222345', '��������', 7, '2-2-2000', '2-2-2009', '�'),
	('2l222346', '��������', 7, '2-2-1998', '2-2-2025', '�'),
	('2l222347', '�������', 7, '2-2-2000', '2-2-2009', '�');
