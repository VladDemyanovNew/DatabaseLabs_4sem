USE DVR_UNIVER;

-- ��������� ������: ������ � ������� ������� �� ����� ���� �������� NULL
SELECT PULPIT.PULPIT_NAME[�������], isnull(TEACHER.TEACHER_NAME,'***')[�������������]
FROM TEACHER LEFT OUTER JOIN PULPIT 
ON TEACHER.PULPIT = PULPIT.PULPIT;

-- �������� ����������� ��������� � ����� ����, ������ � ����������� RIGHT OUTER JOIN
SELECT PULPIT.PULPIT_NAME[�������], isnull(TEACHER.TEACHER_NAME,'***')[�������������]
FROM PULPIT RIGHT OUTER JOIN TEACHER 
ON TEACHER.PULPIT = PULPIT.PULPIT;