

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


#�����ֵ� 
create table Elec_SystemDDL(
	seqID int not null primary key,		#����ID(������)
	keyword varchar(20) null,		#��������
	ddlCode int null,		#�������code
	ddlName varchar(50) null		#�������value
);

#�û���
create table Elec_User(
	userID varchar(50) not null primary key, 	#����
	jctID varchar(50) null,	#������λcode
	jctUnitID varchar(50) null,	#������λ�ĵ�λ����
	userName varchar(50) null,	#�û�����
	logonName varchar(50) null,	#��¼��
	logonPwd varchar(50) null,	#����
	sexID varchar(50) null,	#�Ա�
	birthday datetime null, #��������
	address varchar(100) null, #��ϵ��ַ
	contactTel varchar(50) null, #��ϵ�绰
	email varchar(100) null,	 #��������
	mobile varchar(50) null,	#�ֻ�
	isDuty varchar(50) null,	#�Ƿ���ְ
	postID varchar(50) null,	#ְλ����Ҫ���ڹ�������ˣ�
	onDutyDate datetime null,	#��ְʱ��
	offDutyDate datetime null	#��ְʱ��	
	#idDelete int null	#�Ƿ�ɾ�� ����ɾ����
);

#�û�ְ�Ƹ�����
create table Elec_User_File(
	fileID varchar(50) not null primary key,	#����
	userID varchar(50) null,	#�û�ID
	fileName varchar(50) null,	#�ļ���
	fileURL varchar(1000) null,	#�ļ�·��
	progressTime timestamp null,	#�ϴ�ʱ��
	constraint foreign key(userID) references Elec_User(userID)
)
