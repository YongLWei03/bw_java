--��ص�λ
insert into T_EM_RELATED_UNIT (id, name, contact, tel, unit_type, address, section_ids, longitude, latitude, crt_time)
values (2, '�Ϻ��е�һ����ҽԺ', '���η�', '13702569817', 1, '���������·001��', '[1],[2],[3],[4],[5]', '112.49326617606197', '37.70596780087469', to_date('09-07-2018 10:59:56', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_EM_RELATED_UNIT (id, name, contact, tel, unit_type, address, section_ids, longitude, latitude, crt_time)
values (3, '�Ϻ����ֶ���ѧ', '�Ŵ���', '13702569017', 2, '�ֶ������ź�·988��', '[1]', '112.49455482427953', '37.7070977914188', to_date('09-07-2018 13:13:44', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_EM_RELATED_UNIT (id, name, contact, tel, unit_type, address, section_ids, longitude, latitude, crt_time)
values (4, '�Ϻ��л�������������', '�����', '18702569019', 3, '�Ͼ���·100��', '[1],[4]', '112.49451787909933', '37.70641769761464', to_date('09-07-2018 13:15:14', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_EM_RELATED_UNIT (id, name, contact, tel, unit_type, address, section_ids, longitude, latitude, crt_time)
values (5, 'ɽķ�����Ա��', '����', '18702563019', 4, '����·190��', '[2],[4]', '112.49367103150836', '37.70647176505491', to_date('09-07-2018 13:16:23', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_EM_RELATED_UNIT (id, name, contact, tel, unit_type, address, section_ids, longitude, latitude, crt_time)
values (6, '���͹�԰', '��׳', '18702563039', 6, '�Ϻ����ֶ��������·80��', '[1],[9]', '112.494090', '37.706188', to_date('09-07-2018 13:17:55', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_EM_RELATED_UNIT (id, name, contact, tel, unit_type, address, section_ids, longitude, latitude, crt_time)
values (7, '�ֶ����ʻ���', 'С׳', '(021)68347575', 6, '�Ϻ����ֶ�����ӭ�����6000��', '[15]', '112.494082', '37.706135', to_date('09-07-2018 13:19:18', 'dd-mm-yyyy hh24:mi:ss'));
commit;

--Ӧ��Ԥ����
insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (1, 'FirePlanProcess', 'usertask1', 2, 41, 3, 1, 1, 1, to_date('09-10-2018', 'dd-mm-yyyy'), 0, '�������ⱨ��');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (2, 'FirePlanProcess', 'usertask2', 1, 1, 1, 1, 1, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 0, '��������ͷ');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (3, 'FirePlanProcess', 'usertask3', 1, 1, 1, 1, 2, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 0, 'ֵ����Աȷ��');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (4, 'FirePlanProcess', 'usertask4', 1, 1, 1, 1, 1, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 0, '�򿪷��');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (5, 'FirePlanProcess', 'usertask5', 1, 1, 1, 1, 1, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 0, '�򿪷緧');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (6, 'FirePlanProcess', 'usertask6', 1, 1, 1, 1, 1, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 0, '�򿪰�Ҷ');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (7, 'FirePlanProcess', 'usertask7', 1, 1, 1, 1, 1, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 0, '�����ɷ����');

insert into T_EM_PLAN (ID, PROCESS_KEY, TASK_KEY, TARGET_KEY, TARGET_VALUE, ACTION_KEY, ACTION_VALUE, FINISH_KEY, FINISH_VALUE, CRT_TIME, IS_FINISHED, TASK_NAME)
values (8, 'FirePlanProcess', 'usertask8', 1, 1, 1, 1, 1, 1, to_date('10-10-2018', 'dd-mm-yyyy'), 1, '֪ͨ��ص�λ');
commit;
