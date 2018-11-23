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


--shiroȨ�޹���
--�����û�������
insert into T_SECURITY_USER (ID, NAME, PASSWORD, CRT_TIME)
values (1, 'admin', '123456', to_date('20-06-2018 10:47:02', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_SECURITY_USER (ID, NAME, PASSWORD,  CRT_TIME)
values (2, 'user', '123456', to_date('20-06-2018 10:47:02', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_SECURITY_USER (ID, NAME, PASSWORD, CRT_TIME)
values (3, 'tunneluser1', '123456',  to_date('20-06-2018 10:47:02', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_SECURITY_USER (ID, NAME, PASSWORD,  CRT_TIME)
values (4, 'tunneluser2', '123456',  to_date('20-06-2018 10:47:02', 'dd-mm-yyyy hh24:mi:ss'));

--�����ɫ������
insert into t_security_role (id,role_code,role_desc,crt_time) values (1,'admin','��������Ա',sysdate);
insert into t_security_role (id,role_code,role_desc,crt_time) values (2,'user','��ͨ�û�',sysdate);
insert into t_security_role (id,role_code,role_desc,crt_time) values (3,'tunnel','���ȹ���Ա',sysdate);
insert into t_security_role (id,role_code,role_desc,crt_time) values (4,'tunnel-area1','���ȹ���Ա-����1',sysdate);

--����Ȩ�ޱ�����
insert into t_security_permission (id,per_code,per_desc,crt_time) values (1,'operation:*','��ɾ�Ĳ�',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (2,'operation:query','��ѯ',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (3,'operation:add','���',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (4,'operation:delete','ɾ��',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (5,'operation:update','����',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (6,'tunnel:*:*','���й���Ȩ��',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (7,'tunnel:*:1','����1Ȩ��',sysdate);
insert into t_security_permission (id,per_code,per_desc,crt_time) values (8,'tunnel:*:2','����2Ȩ��',sysdate);

--�����û���ɫ������
insert into t_security_user_role (id,user_id,role_id,crt_time) values (1,1,1,sysdate);
insert into t_security_user_role (id,user_id,role_id,crt_time) values (2,2,2,sysdate);
insert into t_security_user_role (id,user_id,role_id,crt_time) values (3,3,3,sysdate);
insert into t_security_user_role (id,user_id,role_id,crt_time) values (4,4,4,sysdate);

--�����ɫȨ�ޱ����� 
insert into t_security_role_permission (id,role_id,per_id,crt_time) values (1,1,1,sysdate);
insert into t_security_role_permission (id,role_id,per_id,crt_time) values (2,1,6,sysdate);
insert into t_security_role_permission (id,role_id,per_id,crt_time) values (3,2,2,sysdate);
insert into t_security_role_permission (id,role_id,per_id,crt_time) values (4,3,6,sysdate);
insert into t_security_role_permission (id,role_id,per_id,crt_time) values (5,4,7,sysdate);
commit;



--Ա����
insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID,account_id, CRT_TIME)
values (1, '����', 1, 1,1, to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID,account_id, CRT_TIME)
values (2, '����', 2, 2, 2,to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID,account_id, CRT_TIME)
values (3, '����', 3, 3, 3,to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID, account_id,CRT_TIME)
values (4, '����', 4, 4, 4,to_date('26-06-2018', 'dd-mm-yyyy'));

insert into T_COMMON_staff (ID, NAME, DEPT_ID, POSITION_ID,account_id, CRT_TIME)
values (5, '����', 1, 3, 5,to_date('26-06-2018', 'dd-mm-yyyy'));
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
values (5, '�н�һ��', to_date('22-06-2018', 'dd-mm-yyyy'));
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

commit;
