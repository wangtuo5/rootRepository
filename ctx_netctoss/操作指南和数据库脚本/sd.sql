drop database if exists netctoss;
create database netctoss default character set gbk;
use netctoss;

drop table if exists admins; 		
drop table if exists roles;  		
drop table if exists adminroles;    
drop table if exists operations;	
drop table if exists modules;		
drop table if exists rights;		
drop table if exists rolerights;	
drop table if exists users;			
drop table if exists pricings;		
drop table if exists userservices;  

create table admins (
	id 				int primary key auto_increment,
	name 			varchar(20),
	loginname 		varchar(20) unique,
	loginpassword 	varchar(20),
	phone 			varchar(20),
	email 			varchar(30),
	enrolldate 		date			
);

insert into admins(id,name,loginname,loginpassword,phone,email,enrolldate) values(1,"tarena","ctx","123456","","super@tarena.com.cn",now());
commit;


create table roles (
	id 		int primary key auto_increment,
	name 	varchar(20)
);


insert into roles(id,name) values(1,"��������Ա");
commit;


create table adminroles (
	id 		int primary key auto_increment,
	adminid int references admins(id),		
	roleid 	int references roles(id)		
);

insert into adminroles(id,adminid,roleid) values(1,1,1);


create table rights (
	id 			int primary key auto_increment,
	name 		varchar(20),
	url 		varchar(50),
	modulesId int references modules(id)	
);

insert into rights (id,name,url,modulesId) values(1,'Ȩ�����','/listrights.do?type=1',1);
insert into rights (id,name,url,modulesId) values(2,'Ȩ������','/toaddrights.do',1);
insert into rights (id,name,url,modulesId) values(3,'Ȩ���޸�','/listrights.do?type=2',1);
insert into rights (id,name,url,modulesId) values(4,'Ȩ��ɾ��','/listrights.do?type=3',1);
insert into rights (id,name,url,modulesId) values(5,'��ɫ���','/listroles.do?type=1',1);
insert into rights (id,name,url,modulesId) values(6,'��ɫ����','/toaddrole.do',1);
insert into rights (id,name,url,modulesId) values(7,'��ɫ�޸�','/listroles.do?type=2',1);
insert into rights (id,name,url,modulesId) values(8,'��ɫɾ��','/listroles.do?type=3',1);
insert into rights (id,name,url,modulesId) values(9,'������Ϣ�޸�','/updself.do',2);
insert into rights (id,name,url,modulesId) values(10,'����Ա���','/listadmins.do?type=1',2);
insert into rights (id,name,url,modulesId) values(11,'����Ա����','/toaddadmin.do',2);
insert into rights (id,name,url,modulesId) values(12,'����Ա�޸�','/listadmins.do?type=2',2);
insert into rights (id,name,url,modulesId) values(13,'����Աɾ��','/listadmins.do?type=3',2);
insert into rights (id,name,url,modulesId) values(14,'�ʷ����','/listpricing.do?type=1',3);
insert into rights (id,name,url,modulesId) values(15,'�ʷ�����','/toaddpricing.do',3);
insert into rights (id,name,url,modulesId) values(16,'�ʷ��޸�','/listpricing.do?type=2',3);
insert into rights (id,name,url,modulesId) values(17,'�ʷ�ɾ��','/listpricing.do?type=3',3);
insert into rights (id,name,url,modulesId) values(18,'�����ʺŲ�ѯ','/listuser.do?type=1',4);
insert into rights (id,name,url,modulesId) values(19,'�����ʺ�����','/toadduser.do',4);
insert into rights (id,name,url,modulesId) values(20,'�����ʺ��޸�','/listuser.do?type=2',4);
insert into rights (id,name,url,modulesId) values(21,'�����ʺ�ɾ��','/listuser.do?type=3',4);
insert into rights (id,name,url,modulesId) values(22,'ҵ���ʺŲ�ѯ','/listus.do?type=1',4);
insert into rights (id,name,url,modulesId) values(23,'ҵ���ʺ�����','/toaddus.do',4);
insert into rights (id,name,url,modulesId) values(24,'ҵ���ʺ��޸�','/listus.do?type=2',4);
insert into rights (id,name,url,modulesId) values(25,'ҵ���ʺ�ɾ��','/listus.do?type=3',4);
insert into rights (id,name,url,modulesId) values(26,'�������ѯ','/toqryacctyear.do',5);
insert into rights (id,name,url,modulesId) values(27,'�����²�ѯ','/toqryacctmonth.do',5);
insert into rights (id,name,url,modulesId) values(28,'�ʵ���ѯ','/toqryreckon.do',6);
insert into rights (id,name,url,modulesId) values(29,'�û��ʵ���ѯ','/toqrybill',7);
insert into rights (id,name,url,modulesId) values(30,'������Ϣ�޸�','/toupduserinfo',7);
commit;

create table rolerights (
	id 		int primary key auto_increment,
	roleid 	int references roles(id),		
	rightid int references rights(id)		
);


insert into rolerights(id,roleid,rightid) values(1,1,1);
insert into rolerights(id,roleid,rightid) values(2,1,2);
insert into rolerights(id,roleid,rightid) values(3,1,3);
insert into rolerights(id,roleid,rightid) values(4,1,4);
insert into rolerights(id,roleid,rightid) values(5,1,5);
insert into rolerights(id,roleid,rightid) values(6,1,6);
insert into rolerights(id,roleid,rightid) values(7,1,7);
insert into rolerights(id,roleid,rightid) values(8,1,8);
insert into rolerights(id,roleid,rightid) values(9,1,9);
insert into rolerights(id,roleid,rightid) values(10,1,10);
insert into rolerights(id,roleid,rightid) values(11,1,11);
insert into rolerights(id,roleid,rightid) values(12,1,12);
insert into rolerights(id,roleid,rightid) values(13,1,13);
insert into rolerights(id,roleid,rightid) values(14,1,14);
insert into rolerights(id,roleid,rightid) values(15,1,15);
insert into rolerights(id,roleid,rightid) values(16,1,16);
insert into rolerights(id,roleid,rightid) values(17,1,17);

insert into rolerights(id,roleid,rightid) values(18,1,18);
insert into rolerights(id,roleid,rightid) values(19,1,19);
insert into rolerights(id,roleid,rightid) values(20,1,20);
insert into rolerights(id,roleid,rightid) values(21,1,21);
insert into rolerights(id,roleid,rightid) values(22,1,22);
insert into rolerights(id,roleid,rightid) values(23,1,23);
insert into rolerights(id,roleid,rightid) values(24,1,24);
insert into rolerights(id,roleid,rightid) values(25,1,25);
insert into rolerights(id,roleid,rightid) values(26,1,26);
insert into rolerights(id,roleid,rightid) values(27,1,27);
insert into rolerights(id,roleid,rightid) values(28,1,28);


create table modules ( 
	id 		int primary key auto_increment,
	name 	varchar(50)
);

insert into modules(id,name) values(1,"Ȩ�޹���");
insert into modules(id,name) values(2,"����Ա����");
insert into modules(id,name) values(3,"�ʷѹ���");
insert into modules(id,name) values(4,"�û�����");
insert into modules(id,name) values(5,"�������");
insert into modules(id,name) values(6,"�ʵ�����");
insert into modules(id,name) values(7,"�û��Է���");
commit;


create table users (
	id 				int primary key auto_increment,
	name 			varchar(20) not null,
	loginname 		varchar(20) not null unique,	
	loginpassword	varchar(20) not null,
	status 			int default 1 not null,		
	phone 			varchar(20) ,
	email 			varchar(50) ,
	enrolldate 		date not null,				
	closedate 		date ,						
	paymenttype 	varchar(20) not null,
	career 			varchar(20),
	nationality 	varchar(12),
	sex 			tinyint not null, 
	company 		varchar(20), 
	zip 			varchar(8)
);

insert into users values(1,'sd','sd','123456',0,'13535354545','sd@126.com',now(),now(),'money','IT','gogo',1,'infoys','china');

create table pricings (
	id 			int primary key auto_increment,
	name 		varchar(20) not null unique,
	basefee 	double not null,	
	ratefee 	double not null,
	description varchar(50),
    unique(basefee, ratefee)
);
insert into pricings values(1,'openlab',100,50,'very good');

create table userservices (
	id 				int primary key auto_increment,
	userid 			int references users(id),
	loginname 		varchar(20) not null,	
	loginpassword 	varchar(20) not null,
	labip 			varchar(20) not null,	
	status 			int default 1 not null,	
	priceid 		int references pricings(id), 
	enrolldate 		varchar(11) not null,
	closedate 		varchar(11),
	begintime		varchar(11),
	endtime			varchar(11),
	unique(loginname,labip)
);
insert into userservices values(1,1,'openlab','123456','192.168.0.23',1,1,'2011-4','2011-4','23:34','23:45');
insert into userservices values(2,1,'openlab1','123456','192.168.0.25',1,1,'2011-3','2011-3','21:22','22:22');
