--��������
insert into T_COMMON_TUNNEL (ID, NAME, sn, LENGTH, RESPONSIBILITY_ID, CONSTRUCT_ID, OPERATION_ID, CAMERA, maxview_config_id,CRT_TIME)
values (1, '�ųǴ��', '02', 5000, 1, 5, 1, null, 1,to_date('30-08-2018 14:44:50', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_TUNNEL (ID, NAME, sn, LENGTH, RESPONSIBILITY_ID, CONSTRUCT_ID, OPERATION_ID, CAMERA, maxview_config_id,CRT_TIME)
values (2, 'ʵ��·',  '03',1000, 1, 5, 1, null, 1,to_date('30-08-2018 14:44:51', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_TUNNEL (ID, NAME, sn, LENGTH, RESPONSIBILITY_ID, CONSTRUCT_ID, OPERATION_ID, CAMERA, maxview_config_id,CRT_TIME)
values (3, '����·',  '04',1000, 1, 5, 1, null, 1,to_date('30-08-2018 14:44:51', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_TUNNEL (ID, NAME, sn, LENGTH, RESPONSIBILITY_ID, CONSTRUCT_ID, OPERATION_ID, CAMERA, maxview_config_id,CRT_TIME)
values (4, '����·',  '05',1000, 1, 5, 1, null, 1,to_date('30-08-2018 14:44:51', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_TUNNEL (ID, NAME, sn, LENGTH, RESPONSIBILITY_ID, CONSTRUCT_ID, OPERATION_ID, CAMERA, maxview_config_id,CRT_TIME)
values (5, 'γ��·',  '06',5000, 1, 5, 1, null, 1,to_date('30-08-2018 14:44:51', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_TUNNEL (ID, NAME, sn, LENGTH, RESPONSIBILITY_ID, CONSTRUCT_ID, OPERATION_ID, CAMERA, maxview_config_id,CRT_TIME)
values (6, '�������',  '01', 5000, 1, 5, 1, null, 1,to_date('30-08-2018 14:44:51', 'dd-mm-yyyy hh24:mi:ss'));

commit;


insert into T_COMMON_STORE_TYPE ( NAME, SN, PARENT, CRT_TIME)
values ('��ˮ��', '01','01', to_date('28-11-2018 09:45:40', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '������', '02', '02', to_date('28-11-2018 09:45:50', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '�ۺϲ�', '03', '03', to_date('28-11-2018 09:46:09', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( 'ȼ����', '04', '04', to_date('28-11-2018 09:46:19', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '�豸��', '05', '05', to_date('28-11-2018 09:46:29', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '��ˮ�ս����', '11', '01', to_date('28-11-2018 09:46:48', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '�����ս����', '12', '02', to_date('28-11-2018 09:47:14', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '�ۺϲս����', '13', '03', to_date('28-11-2018 09:47:32', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( 'ȼ���ս����', '14', '04', to_date('28-11-2018 09:47:46', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '��ˮ���ŷ��', '21', '01', to_date('28-11-2018 09:48:04', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '�������ŷ��', '22', '02', to_date('28-11-2018 09:48:14', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '�ۺϲ��ŷ��', '23', '03', to_date('28-11-2018 09:48:33', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( 'ȼ�����ŷ��', '24', '04', to_date('28-11-2018 09:48:46', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( 'ȼ����Ͷ�Ͼ�', '31', '04', to_date('28-11-2018 09:49:18', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '��ȼ����Ͷ�Ͼ�', '32', '32', to_date('28-11-2018 09:49:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE_TYPE (NAME, SN, PARENT, CRT_TIME)
values ( '����', '41', '41', to_date('28-11-2018 09:49:48', 'dd-mm-yyyy hh24:mi:ss'));

commit;

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '10��', '10', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '11��', '11', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '12��', '12', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '13��', '13', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '14��', '14', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '15��', '15', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '16��', '16', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '17��', '17', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '18��', '18', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '19��', '19', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '20��', '20', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '3��', '03', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '4��', '04', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '5��', '05', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '6��', '06', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '7��', '07', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '8��', '08', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '9��', '09', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '21��', '21', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '22��', '22', null, 1, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_AREA (NAME, SN, LOCATION, TUNNEL_ID, CAMERA, CRT_TIME)
values ( '1��', '01', null, 6, null, to_date('28-11-2018 09:56:26', 'dd-mm-yyyy hh24:mi:ss'));

commit;

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1001, '������', '02', 1, 1001, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1001, '�����ս����', '12', 1, 1006, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1001, '�������ŷ��', '22', 1, 1010, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1004, '��ȼ����Ͷ�Ͼ�', '32', 1, 1014, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1005, '����', '41', 1, 1015, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1006, 'ȼ����', '04', 1, 1003, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1006, 'ȼ���ս����', '14', 1, 1008, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1006, 'ȼ�����ŷ��', '24', 1, 1012, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1006, 'ȼ����Ͷ�Ͼ�', '31', 1, 1013, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1010, '�豸��', '05', 1, 1004, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1011, '��ˮ��', '01', 1, 1000, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1011, '��ˮ�ս����', '11', 1, 1005, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1011, '��ˮ���ŷ��', '21', 1, 1009, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1014, '�ۺϲ�', '03', 1, 1002, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1014, '�ۺϲս����', '13', 1, 1007, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1014, '�ۺϲ��ŷ��', '23', 1, 1011, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_STORE (PARENT_ID, NAME, SN, TUNNEL_ID, STORE_TYPE_ID, CAMERA, CRT_TIME)
values ( 1017, '����', '41', 6, 1015, null, to_date('28-11-2018 09:56:10', 'dd-mm-yyyy hh24:mi:ss'));
commit;


--section


--user
insert into T_SECURITY_USER (ID, NAME, PASSWORD, CRT_TIME)
values (1000, 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', to_date('20-06-2018 10:47:02', 'dd-mm-yyyy hh24:mi:ss'));



--Ա����
insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID, CRT_TIME)
values (1, '������', 1, 1, to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID, CRT_TIME)
values (2, '����', 2, 2,to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID, CRT_TIME)
values (3, '��˧', 3, 3,to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID,CRT_TIME)
values (4, '������', 4, 4,to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID, CRT_TIME)
values (5, '����Ⱥ', 1, 3,to_date('26-06-2018', 'dd-mm-yyyy'));
commit;


--���ű�
insert into T_COMMON_DEPT (ID, NAME, CRT_TIME)
values (1, '��Ʒ��', to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_DEPT (ID, NAME, CRT_TIME)
values (2, '�з���', to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_DEPT (ID, NAME, CRT_TIME)
values (3, '��Ӫ��', to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_DEPT (ID, NAME, CRT_TIME)
values (4, '���۲�', to_date('26-06-2018', 'dd-mm-yyyy'));
commit;



--��˾��
insert into t_common_company (ID, NAME, CRT_TIME)
values (1, '����Ƽ�', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_company (ID, NAME, CRT_TIME)
values (2, '�й��ƶ�', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_company (ID, NAME, CRT_TIME)
values (3, '�й�ʯ��', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_company (ID, NAME, CRT_TIME)
values (4, '�й�����', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_company (ID, NAME, CRT_TIME)
values (5, '����ʮ����', to_date('22-06-2018', 'dd-mm-yyyy'));
commit;

--��˾�����м��
insert into T_COMMON_company_dept (ID, COMPANY_ID, DEPT_ID)
values (1, 1, 1);

insert into T_COMMON_company_dept (ID, COMPANY_ID, DEPT_ID)
values (2, 1, 2);

insert into T_COMMON_company_dept (ID, COMPANY_ID, DEPT_ID)
values (3, 1, 3);

insert into T_COMMON_company_dept (ID, COMPANY_ID, DEPT_ID)
values (4, 1, 4);
commit;

--ְλ��
insert into t_common_position (ID, NAME, CRT_TIME)
values (1, '�ܾ���', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_position (ID, NAME, CRT_TIME)
values (2, '��Ʒ�ܼ�', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_position (ID, NAME, CRT_TIME)
values (3, '����', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_position (ID, NAME, CRT_TIME)
values (4, '��ͨԱ��', to_date('22-06-2018', 'dd-mm-yyyy'));

insert into t_common_position (ID, NAME, CRT_TIME)
values (5, '��������', to_date('18-06-2018', 'dd-mm-yyyy'));
commit;

--schedule_job��
insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (2, 'job2', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'reportMeasObjHour', '0 1 0/1 * * ?', 'ͳ���ϸ�Сʱ�����Сƽ��ֵ');

insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (3, 'job3', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'reportMeasObjDay', '0 0 9 * * ?', 'ͳ�����������Сƽ��ֵ');

insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (4, 'job4', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'reportMeasObjWeek', '0 0 9 ? * MON', 'ͳ�����������Сƽ��ֵ');

insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (5, 'job5', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'reportMeasObjMonth', '0 0 9 1 * ?', 'ͳ�����������Сƽ��ֵ');

insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (6, 'job6', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'reportMeasObjYear', '0 0 9 1 1 ? *', 'ͳ�����������Сƽ��ֵ');

insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (1, 'job1', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'saveDataScheduleBatch', '0 0/1 * * * ?', '���������ݶ�ʱ����');

insert into t_common_schedule_job (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (7, 'job7', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'deleteDataSchedule', '0 0 9 * * ?', '���������ݶ�ʱɾ��');

insert into T_COMMON_SCHEDULE_JOB (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (1000, 'job8', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'saveToConsumeData', '0 0 1 * * ?', '��ʱ����ͳ��ÿ����ܺĲ����浽ConsumeData����');

insert into T_COMMON_SCHEDULE_JOB (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (1001, 'job9', 'group1', 0, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'heartBeat', '0/5 * * * * ?', '��¼maxview�ն�֮�󣬳����������� ');

insert into T_COMMON_SCHEDULE_JOB (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (1002, 'job10', 'group1', 0, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'sendTestData', '0/15 * * * * ?', 'ģ��maxview��������');

insert into T_COMMON_SCHEDULE_JOB (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (1003, 'job11', 'group1', 0, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'sendTestAlarm', '0/30 * * * * ?', 'ģ��maxview���͸澯');
commit;
