use DemyanovUNIVER;
-- ����� ���� ����������
SELECT * From STUDENT;
-- ����� ����������� ���� ��������
SELECT [����� �������], [������� ��������] From STUDENT;
-- ������� ���������� ����� � �������
SELECT count(*) From STUDENT;
-- Where, Distinct, Top
SELECT [����� �������], [������� ��������] From STUDENT
	Where POL = '�'
SELECT Distinct Top(5) [������� ��������] From STUDENT
-- UPDATE 
UPDATE STUDENT set [����� ������] = 5;
-- DELETE
DELETE from STUDENT Where [����� �������] = '245kl321';
-- BETWEEN
SELECT [����� �������], [������� ��������] From STUDENT WHERE [������� ��������] Between '�%' And '�%';
-- Like
SELECT [������� ��������] From STUDENT WHERE [������� ��������] Like '�%';
-- In
SELECT [����� �������], [������� ��������] From STUDENT WHERE [������� ��������] In ('��������', '������');
-- �������� �������
DROP table STUDENT;