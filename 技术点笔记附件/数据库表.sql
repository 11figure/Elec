

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
);


#��ɫ��Ϣ��
create table Elec_Role(
	roleID varchar(32) not null primary key, #��ɫID
	roleName varchar(500)		#��ɫ����
);

INSERT INTO `elec_role` VALUES ('1', 'ϵͳ����Ա');
INSERT INTO `elec_role` VALUES ('2', '�߼�����Ա');
INSERT INTO `elec_role` VALUES ('3', '�м�����Ա');
INSERT INTO `elec_role` VALUES ('4', 'ҵ���û�');
INSERT INTO `elec_role` VALUES ('5', 'һ���û�');
INSERT INTO `elec_role` VALUES ('6', '��ͨ�û�');
-- ----------------------------


#Ȩ����Ϣ��
create table Elec_Popedom(
	mid varchar(32) not null, 		#Ȩ��Code(����ID)
	pid varchar(32) not null,		#����Ȩ��Code������Ѿ��ĸ��ڵ���Ϊ0
	name varchar(32) null,			#Ȩ������
	url varchar(5000) null,			#Ȩ����ϵͳ��ִ�е�URL
	icon varchar(5000) null,		#����ǲ˵�����Ϊ��ʾͼƬ��URL
	target varchar(5000) null,		#����ǲ˵�,����ִ�е�Frame��������
	isParent boolean null,			#�Ƿ��Ǹ��ڵ㣬���ڵ�Ϊtrue���ӽڵ�Ϊfalse
	isMenu boolean null,			#�Ƿ���ϵͳ�˵��ṹ	
	primary key(mid,pid)		#������������
);


#�û�_��ɫ ������
#create table Elec_User_Role(
#	userID varchar(32) not null,	#�û�ID
#	roleID varchar(32) not null,	#Ȩ�޽�ɫID
#	primary key(userID,roleID)		#����������
#);

#��ɫ_Ȩ�� ������
create table Elec_Role_Popedom(
	roleID varchar(32) not null,	#Ȩ�޽�ɫID
	mid varchar(32) not null,		#Ȩ��Code(����ID)
	pid varchar(32) not null,		#����Ȩ��code,����Ѿ��Ǹ��ڵ���Ϊ0
	primary key(roleID,mid,pid)		#������������
);


#�������ñ�
create table Elec_ExportFields(
	belongTo varchar(10) not null primary key,	#����ģ�飨��Ȼ���������� �û�����Ϊ��5-1
	expNameList varchar(5000) null,		#�����ֶε�������
	expFieldName varchar(5000) null, 	#�����ֶε�Ӣ����
	noexpNameList varchar(5000) null,	#δ�����ֶε�������
	noexpFieldName varchar(5000) null 	#δ�����ֶε�Ӣ����
);

#����ͼ�����
create table Elec_FileUpload(
	SeqID int not null primary key,		#����
	ProjID varchar(50) null,			#����ID/������λ
	BelongTo varchar(50) null,			#����ģ��/ͼֽ���
	FileName varchar(50) null,			#�ļ���
	FileURL varchar(1000) null,			#�ļ�·��
	ProgressTime varchar(20) null,		#�ϴ�ʱ��
	comment varchar(500) null,			#�ļ�����
#	IsDelete varchar(10) null,			#�Ƿ�ɾ��
);




