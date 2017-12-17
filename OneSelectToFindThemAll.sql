-- � ���� �������� �� ���� ���� �� ������� � ��������, � ���� ���� �� ���������� ��� �����.

SELECT * FROM ���_����� 
WHERE (IATA_Code_���������_��������='MAD' AND IATA_Code_���������_�����������='LWO')

-- � ���� ������ � �������� ���������� ����������� ��������� ��������.

SELECT COUNT (�����) 
From ��������� 
WHERE (����� = '���������')

-- � ���� ������ �� ������ �������� ������ �� ������ ����� � ��������.

SELECT COUNT ([ID_����������]), [ID_������]
From ��������
GROUP BY [ID_������]

-- � ���� �������� ������ � ������������� �������� ����������� ����� ����� ����� (���� �����, �� �� ����� ����� ����� ����� � ��������� ������ ����� �B� � ������ ������� ���� ���� �� �� �����)

SELECT COUNT ([������])
FROM [˳����_��������]
WHERE ([������] LIKE 'B%')

-- ��� ������� ���� �� �����, �� ����� ����� "����" � ��������� ����� ����� ����� "�"

SELECT [˳����_��������].[ID_˳����], [������_�����].[���_�����_ICAO], [������_�����].[�����_�����_�����], [������_�����].[���������������]
FROM ������_�����
RIGHT JOIN [˳����_��������] ON [������_�����].[���_�����_ICAO] = [˳����_��������].[������] 
WHERE ([������_�����].[�����_�����_�����] LIKE 'BOEING%')

-- �������� ����� ��������� ����� �������. ��� ����� ������� ������� � ��� ����� ����� � ���� ��������������� �� ����� 500 ����� 

SELECT [˳����_��������].[ID_˳����], [������_�����].[���_�����_ICAO], [������_�����].[�����_�����_�����], [������_�����].[���������������]
FROM ������_�����
RIGHT JOIN [˳����_��������] ON [������_�����].[���_�����_ICAO] = [˳����_��������].[������] 
WHERE ([������_�����].[���������������] > 500)

-- � ���� �������� ���� � ����� �������� �� ��������� �������� ����� ������ 
-- ���� ������ ��������� ������ ������������ ����� ������ 
SELECT MAX ([�����_������])
FROM [dbo].[������_�����]

-- ���� ��������� ������ ��������� ������ � ���� 

SELECT TOP 1 [˳����_��������].[ID_˳����], [������_�����].[���_�����_ICAO], [������_�����].[�����_�����_�����], [������_�����].[�����_������]
FROM [˳����_��������]
LEFT JOIN [������_�����] ON [������_�����].[���_�����_ICAO] = [˳����_��������].[������] 
ORDER BY [�����_������] DESC

-- ��������� ���������� ������ ������������� ����� ����� ��� 3 ������� � ��������� ����� 
SELECT [�������������]
FROM ����
GROUP BY [�������������]
HAVING COUNT ([�������������]) > 3
 

 --������� ����� ��������� �������� ���� ����� � ��������� ����������� ����������. ��������� �������� ������� ������� � ������������ ����������� ��� ���������� �������� �� ������� ���� ���� ���� ���������� �� ��� ������� �����.

SELECT * INTO CustomersBackup2017
FROM [dbo].[��������]
WHERE (ID_������ BETWEEN 10 AND 20)