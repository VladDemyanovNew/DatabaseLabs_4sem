Use DVR_MyBase

-- ����� �������������� (���, ���, ��������, �������), ������� ��������� � 5, 6 �����
SELECT DISTINCT [��� �������������], ���, ��������, ������� FROM �������������, ���������
WHERE �������������.[��� �������������] = ���������.[�������������] 
And [����� ������] In (5,6);

