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


insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1050, '6��-�������ŷ��', 1, 1003, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1051, '7��-�������ŷ��', 1, 1003, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1052, '8��-�������ŷ��', 1, 1003, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1053, '9��-�������ŷ��', 1, 1003, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1054, '10��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1055, '11��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1056, '12��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1057, '13��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1058, '14��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1059, '15��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1060, '16��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1061, '17��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1062, '18��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1063, '19��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1064, '20��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1065, '3��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1066, '4��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1067, '5��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1068, '6��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1069, '7��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1070, '8��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1071, '9��-��ȼ����Ͷ�Ͼ�', 1, 1004, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1072, '10��-����', 1, 1005, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1073, '11��-����', 1, 1005, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1074, '12��-����', 1, 1005, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1075, '13��-����', 1, 1005, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1076, '14��-����', 1, 1005, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1077, '15��-����', 1, 1005, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1078, '16��-����', 1, 1005, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1079, '17��-����', 1, 1005, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1080, '18��-����', 1, 1005, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1081, '19��-����', 1, 1005, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1082, '20��-����', 1, 1005, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1083, '3��-����', 1, 1005, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1084, '4��-����', 1, 1005, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1085, '5��-����', 1, 1005, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1086, '6��-����', 1, 1005, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1087, '7��-����', 1, 1005, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1088, '8��-����', 1, 1005, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1089, '9��-����', 1, 1005, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1090, '10��-ȼ����', 1, 1006, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1091, '11��-ȼ����', 1, 1006, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1092, '12��-ȼ����', 1, 1006, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1093, '13��-ȼ����', 1, 1006, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1094, '14��-ȼ����', 1, 1006, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1095, '15��-ȼ����', 1, 1006, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1096, '16��-ȼ����', 1, 1006, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1097, '17��-ȼ����', 1, 1006, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1098, '18��-ȼ����', 1, 1006, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1099, '19��-ȼ����', 1, 1006, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1100, '20��-ȼ����', 1, 1006, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1101, '3��-ȼ����', 1, 1006, 1012, 10, null,'112.494079,37.707195,6.130', '112.494079,37.706120,6.130', to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1102, '4��-ȼ����', 1, 1006, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1103, '5��-ȼ����', 1, 1006, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1104, '6��-ȼ����', 1, 1006, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1105, '7��-ȼ����', 1, 1006, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1106, '8��-ȼ����', 1, 1006, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1107, '9��-ȼ����', 1, 1006, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1108, '10��-ȼ���ս����', 1, 1007, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1109, '11��-ȼ���ս����', 1, 1007, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1110, '12��-ȼ���ս����', 1, 1007, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1111, '13��-ȼ���ս����', 1, 1007, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1112, '14��-ȼ���ս����', 1, 1007, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1113, '15��-ȼ���ս����', 1, 1007, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1114, '16��-ȼ���ս����', 1, 1007, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1115, '17��-ȼ���ս����', 1, 1007, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1116, '18��-ȼ���ս����', 1, 1007, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1117, '19��-ȼ���ս����', 1, 1007, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1118, '20��-ȼ���ս����', 1, 1007, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1119, '3��-ȼ���ս����', 1, 1007, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1120, '4��-ȼ���ս����', 1, 1007, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1121, '5��-ȼ���ս����', 1, 1007, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1122, '6��-ȼ���ս����', 1, 1007, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1123, '7��-ȼ���ս����', 1, 1007, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1124, '8��-ȼ���ս����', 1, 1007, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1125, '9��-ȼ���ս����', 1, 1007, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1126, '10��-ȼ�����ŷ��', 1, 1008, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1127, '11��-ȼ�����ŷ��', 1, 1008, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1128, '12��-ȼ�����ŷ��', 1, 1008, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1129, '13��-ȼ�����ŷ��', 1, 1008, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1130, '14��-ȼ�����ŷ��', 1, 1008, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1131, '15��-ȼ�����ŷ��', 1, 1008, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1132, '16��-ȼ�����ŷ��', 1, 1008, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1133, '17��-ȼ�����ŷ��', 1, 1008, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1134, '18��-ȼ�����ŷ��', 1, 1008, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1135, '19��-ȼ�����ŷ��', 1, 1008, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1136, '20��-ȼ�����ŷ��', 1, 1008, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1137, '3��-ȼ�����ŷ��', 1, 1008, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1138, '4��-ȼ�����ŷ��', 1, 1008, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1139, '5��-ȼ�����ŷ��', 1, 1008, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1140, '6��-ȼ�����ŷ��', 1, 1008, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1141, '7��-ȼ�����ŷ��', 1, 1008, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1142, '8��-ȼ�����ŷ��', 1, 1008, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1179, '9��-�豸��', 1, 1010, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1204, '16��-��ˮ�ֽ����', 1, 1012, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1205, '17��-��ˮ�ֽ����', 1, 1012, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1206, '18��-��ˮ�ֽ����', 1, 1012, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1207, '19��-��ˮ�ֽ����', 1, 1012, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1208, '20��-��ˮ�ֽ����', 1, 1012, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1209, '3��-��ˮ�ֽ����', 1, 1012, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1210, '4��-��ˮ�ֽ����', 1, 1012, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1211, '5��-��ˮ�ֽ����', 1, 1012, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1212, '6��-��ˮ�ֽ����', 1, 1012, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1213, '7��-��ˮ�ֽ����', 1, 1012, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1214, '8��-��ˮ�ֽ����', 1, 1012, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1215, '9��-��ˮ�ֽ����', 1, 1012, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1216, '10��-��ˮ���ŷ��', 1, 1013, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1217, '11��-��ˮ���ŷ��', 1, 1013, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1218, '12��-��ˮ���ŷ��', 1, 1013, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1219, '13��-��ˮ���ŷ��', 1, 1013, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1220, '14��-��ˮ���ŷ��', 1, 1013, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1221, '15��-��ˮ���ŷ��', 1, 1013, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1222, '16��-��ˮ���ŷ��', 1, 1013, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1223, '17��-��ˮ���ŷ��', 1, 1013, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1224, '18��-��ˮ���ŷ��', 1, 1013, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1225, '19��-��ˮ���ŷ��', 1, 1013, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1226, '20��-��ˮ���ŷ��', 1, 1013, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1248, '6��-�ۺϲ�', 1, 1014, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1249, '7��-�ۺϲ�', 1, 1014, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1250, '8��-�ۺϲ�', 1, 1014, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1251, '9��-�ۺϲ�', 1, 1014, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1252, '10��-�ۺϲֽ����', 1, 1015, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1253, '11��-�ۺϲֽ����', 1, 1015, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1254, '12��-�ۺϲֽ����', 1, 1015, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1255, '13��-�ۺϲֽ����', 1, 1015, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1256, '14��-�ۺϲֽ����', 1, 1015, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1257, '15��-�ۺϲֽ����', 1, 1015, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1258, '16��-�ۺϲֽ����', 1, 1015, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1259, '17��-�ۺϲֽ����', 1, 1015, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1260, '18��-�ۺϲֽ����', 1, 1015, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1261, '19��-�ۺϲֽ����', 1, 1015, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1262, '20��-�ۺϲֽ����', 1, 1015, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1263, '3��-�ۺϲֽ����', 1, 1015, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1264, '4��-�ۺϲֽ����', 1, 1015, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1265, '5��-�ۺϲֽ����', 1, 1015, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1266, '6��-�ۺϲֽ����', 1, 1015, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1267, '7��-�ۺϲֽ����', 1, 1015, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1268, '8��-�ۺϲֽ����', 1, 1015, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1269, '9��-�ۺϲֽ����', 1, 1015, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1270, '10��-�ۺϲ��ŷ��', 1, 1016, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1271, '11��-�ۺϲ��ŷ��', 1, 1016, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1273, '13��-�ۺϲ��ŷ��', 1, 1016, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1274, '14��-�ۺϲ��ŷ��', 1, 1016, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1275, '15��-�ۺϲ��ŷ��', 1, 1016, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1276, '16��-�ۺϲ��ŷ��', 1, 1016, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1277, '17��-�ۺϲ��ŷ��', 1, 1016, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1000, '10��-������', 1, 1001, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1001, '11��-������', 1, 1001, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1002, '12��-������', 1, 1001, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1003, '13��-������', 1, 1001, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1004, '14��-������', 1, 1001, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1005, '15��-������', 1, 1001, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1006, '16��-������', 1, 1001, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1007, '17��-������', 1, 1001, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1008, '18��-������', 1, 1001, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1009, '19��-������', 1, 1001, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1010, '20��-������', 1, 1001, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1011, '3��-������', 1, 1001, 1012, 10, null, '112.494028,37.707195,6.130', '112.494028,37.706120,6.130', to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1012, '4��-������', 1, 1001, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1013, '5��-������', 1, 1001, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1014, '6��-������', 1, 1001, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1015, '7��-������', 1, 1001, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1016, '8��-������', 1, 1001, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1017, '9��-������', 1, 1001, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1018, '10��-�����ս����', 1, 1002, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1019, '11��-�����ս����', 1, 1002, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1020, '12��-�����ս����', 1, 1002, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1021, '13��-�����ս����', 1, 1002, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1022, '14��-�����ս����', 1, 1002, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1023, '15��-�����ս����', 1, 1002, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1024, '16��-�����ս����', 1, 1002, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1025, '17��-�����ս����', 1, 1002, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1026, '18��-�����ս����', 1, 1002, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1027, '19��-�����ս����', 1, 1002, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1028, '20��-�����ս����', 1, 1002, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1029, '3��-�����ս����', 1, 1002, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1030, '4��-�����ս����', 1, 1002, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1031, '5��-�����ս����', 1, 1002, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1032, '6��-�����ս����', 1, 1002, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1033, '7��-�����ս����', 1, 1002, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1034, '8��-�����ս����', 1, 1002, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1035, '9��-�����ս����', 1, 1002, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1036, '10��-�������ŷ��', 1, 1003, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1037, '11��-�������ŷ��', 1, 1003, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1038, '12��-�������ŷ��', 1, 1003, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1039, '13��-�������ŷ��', 1, 1003, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1040, '14��-�������ŷ��', 1, 1003, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1041, '15��-�������ŷ��', 1, 1003, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1042, '16��-�������ŷ��', 1, 1003, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1043, '17��-�������ŷ��', 1, 1003, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1044, '18��-�������ŷ��', 1, 1003, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1045, '19��-�������ŷ��', 1, 1003, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1046, '20��-�������ŷ��', 1, 1003, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1047, '3��-�������ŷ��', 1, 1003, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1048, '4��-�������ŷ��', 1, 1003, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1049, '5��-�������ŷ��', 1, 1003, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1143, '9��-ȼ�����ŷ��', 1, 1008, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1144, '10��-ȼ����Ͷ�Ͼ�', 1, 1009, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1145, '11��-ȼ����Ͷ�Ͼ�', 1, 1009, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1146, '12��-ȼ����Ͷ�Ͼ�', 1, 1009, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1147, '13��-ȼ����Ͷ�Ͼ�', 1, 1009, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1148, '14��-ȼ����Ͷ�Ͼ�', 1, 1009, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1149, '15��-ȼ����Ͷ�Ͼ�', 1, 1009, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1150, '16��-ȼ����Ͷ�Ͼ�', 1, 1009, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1151, '17��-ȼ����Ͷ�Ͼ�', 1, 1009, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1152, '18��-ȼ����Ͷ�Ͼ�', 1, 1009, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1153, '19��-ȼ����Ͷ�Ͼ�', 1, 1009, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1154, '20��-ȼ����Ͷ�Ͼ�', 1, 1009, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1155, '3��-ȼ����Ͷ�Ͼ�', 1, 1009, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1156, '4��-ȼ����Ͷ�Ͼ�', 1, 1009, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1157, '5��-ȼ����Ͷ�Ͼ�', 1, 1009, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1158, '6��-ȼ����Ͷ�Ͼ�', 1, 1009, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1159, '7��-ȼ����Ͷ�Ͼ�', 1, 1009, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1160, '8��-ȼ����Ͷ�Ͼ�', 1, 1009, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1161, '9��-ȼ����Ͷ�Ͼ�', 1, 1009, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1162, '10��-�豸��', 1, 1010, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1163, '11��-�豸��', 1, 1010, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1164, '12��-�豸��', 1, 1010, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1165, '13��-�豸��', 1, 1010, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1166, '14��-�豸��', 1, 1010, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1167, '15��-�豸��', 1, 1010, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1168, '16��-�豸��', 1, 1010, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1169, '17��-�豸��', 1, 1010, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1170, '18��-�豸��', 1, 1010, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1171, '19��-�豸��', 1, 1010, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1172, '20��-�豸��', 1, 1010, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1173, '3��-�豸��', 1, 1010, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1174, '4��-�豸��', 1, 1010, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1175, '5��-�豸��', 1, 1010, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1176, '6��-�豸��', 1, 1010, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1177, '7��-�豸��', 1, 1010, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1178, '8��-�豸��', 1, 1010, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1180, '10��-��ˮ��', 1, 1011, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1181, '11��-��ˮ��', 1, 1011, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1182, '12��-��ˮ��', 1, 1011, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1183, '13��-��ˮ��', 1, 1011, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1184, '14��-��ˮ��', 1, 1011, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1185, '15��-��ˮ��', 1, 1011, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1186, '16��-��ˮ��', 1, 1011, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1187, '17��-��ˮ��', 1, 1011, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1188, '18��-��ˮ��', 1, 1011, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1189, '19��-��ˮ��', 1, 1011, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1190, '20��-��ˮ��', 1, 1011, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1191, '3��-��ˮ��', 1, 1011, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1192, '4��-��ˮ��', 1, 1011, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1193, '5��-��ˮ��', 1, 1011, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1194, '6��-��ˮ��', 1, 1011, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1195, '7��-��ˮ��', 1, 1011, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1196, '8��-��ˮ��', 1, 1011, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1197, '9��-��ˮ��', 1, 1011, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1198, '10��-��ˮ�ֽ����', 1, 1012, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1199, '11��-��ˮ�ֽ����', 1, 1012, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1200, '12��-��ˮ�ֽ����', 1, 1012, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1201, '13��-��ˮ�ֽ����', 1, 1012, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1202, '14��-��ˮ�ֽ����', 1, 1012, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1203, '15��-��ˮ�ֽ����', 1, 1012, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1227, '3��-��ˮ���ŷ��', 1, 1013, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1228, '4��-��ˮ���ŷ��', 1, 1013, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1229, '5��-��ˮ���ŷ��', 1, 1013, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1230, '6��-��ˮ���ŷ��', 1, 1013, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1231, '7��-��ˮ���ŷ��', 1, 1013, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1232, '8��-��ˮ���ŷ��', 1, 1013, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1233, '9��-��ˮ���ŷ��', 1, 1013, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1234, '10��-�ۺϲ�', 1, 1014, 1001, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1235, '11��-�ۺϲ�', 1, 1014, 1002, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1236, '12��-�ۺϲ�', 1, 1014, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1237, '13��-�ۺϲ�', 1, 1014, 1004, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1238, '14��-�ۺϲ�', 1, 1014, 1005, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1239, '15��-�ۺϲ�', 1, 1014, 1006, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1240, '16��-�ۺϲ�', 1, 1014, 1007, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1241, '17��-�ۺϲ�', 1, 1014, 1008, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1242, '18��-�ۺϲ�', 1, 1014, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1243, '19��-�ۺϲ�', 1, 1014, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1244, '20��-�ۺϲ�', 1, 1014, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1245, '3��-�ۺϲ�', 1, 1014, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1246, '4��-�ۺϲ�', 1, 1014, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1247, '5��-�ۺϲ�', 1, 1014, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1272, '12��-�ۺϲ��ŷ��', 1, 1016, 1003, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1278, '18��-�ۺϲ��ŷ��', 1, 1016, 1009, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1279, '19��-�ۺϲ��ŷ��', 1, 1016, 1010, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1280, '20��-�ۺϲ��ŷ��', 1, 1016, 1011, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1281, '3��-�ۺϲ��ŷ��', 1, 1016, 1012, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1283, '5��-�ۺϲ��ŷ��', 1, 1016, 1014, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1284, '6��-�ۺϲ��ŷ��', 1, 1016, 1015, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1285, '7��-�ۺϲ��ŷ��', 1, 1016, 1016, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1286, '8��-�ۺϲ��ŷ��', 1, 1016, 1017, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1287, '9��-�ۺϲ��ŷ��', 1, 1016, 1018, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

insert into T_COMMON_SECTION (ID, NAME, TUNNEL_ID, STORE_ID, AREA_ID, TOTAL_CABLE_NUMBER, CAMERA, START_POINT, END_POINT, CRT_TIME)
values (1282, '4��-�ۺϲ��ŷ��', 1, 1016, 1013, 10, null, null, null, to_date('28-11-2018 09:56:30', 'dd-mm-yyyy hh24:mi:ss'));

commit;


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
values (1002, 'job10', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'sendTestData', '0/15 * * * * ?', 'ģ��maxview��������');

insert into T_COMMON_SCHEDULE_JOB (JOB_ID, JOB_NAME, JOB_GROUP, JOB_STATUS, JOB_CLASS, JOB_METHOD, CRON_EXPRESSION, DESCRIPTION)
values (1003, 'job11', 'group1', 1, 'com.bandweaver.tunnel.controller.quartz.TaskEntrance', 'sendTestAlarm', '0/30 * * * * ?', 'ģ��maxview���͸澯');
commit;
