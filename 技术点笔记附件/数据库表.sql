

#���м��
create table Elec_CommonMsg(
	comID varchar(50) not null primary key,		#����
	stationRun varchar(5000) null,		#վ���������
	devRun varchar(5000) null,		#�豸�������
	createDate datetime null		#��������
);

create table Elec_CommonMsg_Content(
	comID varchar(50) not null primary key,		#����
	type char(2) null,		# վ�� 1; �豸 2
	content varchar(5000) null,		#��������
	orderby int null		#������ʾ����
);