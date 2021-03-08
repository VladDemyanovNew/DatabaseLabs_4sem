USE DVR_UNIVER;

CREATE TABLE TIMETABLE
(
	IDGROUP integer constraint TIMETABLE_GROUP_FK foreign key         
			references GROUPS(IDGROUP),
	AUDITORIUM char(20) constraint TIMETABLE_AUDITORIUM_FK foreign key         
               references AUDITORIUM(AUDITORIUM),
	SUBJECT char(10) constraint TIMETABLE_SUBJECT_FK foreign key         
            references SUBJECT(SUBJECT),
	TEACHER char(10) constraint TIMETABLE_TEACHER_FK foreign key         
            references TEACHER(TEACHER),
	WEEKDAY char(10) CHECK (WEEKDAY IN ('��', '��', '��', '��', '��', '��', '��')),
	CLASS_NUMBER integer CHECK (CLASS_NUMBER BETWEEN 0 AND 9)
);

INSERT INTO TIMETABLE  (IDGROUP, AUDITORIUM, SUBJECT, TEACHER, WEEKDAY, CLASS_NUMBER)
			VALUES (1, '206-1', '��', '�����', '��', 1),
				   (1, '236-1', '��', '���', '��', 2),
				   (1, '324-1', '��', '�����', '��', 3),
				   (1, '408-2', '���', '���', '��', 4),
				   (3, '423-1', '���', '�����', '��', 2);

-- �� ������� ��������� ��������� �� ������������ ���� ������
SELECT *
FROM AUDITORIUM FULL OUTER JOIN TIMETABLE
ON TIMETABLE.AUDITORIUM = AUDITORIUM.AUDITORIUM AND TIMETABLE.WEEKDAY = '��'
WHERE TIMETABLE.AUDITORIUM IS NULL

-- �� ������� ��������� ��������� �� ������������ ����
SELECT *
FROM AUDITORIUM FULL OUTER JOIN TIMETABLE
ON TIMETABLE.AUDITORIUM = AUDITORIUM.AUDITORIUM AND TIMETABLE.CLASS_NUMBER = 2
WHERE TIMETABLE.AUDITORIUM IS NULL

-- �� ������� ����� � ������� �� ����������� ����
SELECT *
FROM GROUPS FULL OUTER JOIN TIMETABLE
ON TIMETABLE.IDGROUP = GROUPS.IDGROUP AND TIMETABLE.CLASS_NUMBER = 2
WHERE TIMETABLE.IDGROUP IS NULL;
