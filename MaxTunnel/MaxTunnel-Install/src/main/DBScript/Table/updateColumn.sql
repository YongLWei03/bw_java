
-- ���Ա�T_TEST

-- ����ֶ�
-- alter table T_TEST add age number(3) default 18;

-- section����ӳ���length�ֶ�
alter table T_COMMON_SECTION add length number default 300;

-- store����ӿ�width�͸�height�ֶ�
alter table T_COMMON_STORE add width NUMBER default 2;
alter table T_COMMON_STORE add height NUMBER default 4;

-- staff������ֶ�
alter table T_COMMON_STAFF add account VARCHAR2(50);
alter table T_COMMON_STAFF add sex VARCHAR2(2);
alter table T_COMMON_STAFF add telphone VARCHAR2(20);
alter table T_COMMON_STAFF add hire_date DATE;


-- video�����vendor,ip,port,username,password����ֶ�
alter table T_MAM_VIDEO add vendor NUMBER;
alter table T_MAM_VIDEO add ip VARCHAR2(20);
alter table T_MAM_VIDEO add port NUMBER;
alter table T_MAM_VIDEO add username VARCHAR2(50);
alter table T_MAM_VIDEO add password VARCHAR2(50);

-- staff������ֶ�
--����� ���֤��
alter table T_COMMON_STAFF add identityNO VARCHAR2(50);
--����� ������Ա��ʶ
alter table T_COMMON_STAFF add outside number(1) default 1;

-- �޸��ֶ�
-- alter table T_TEST rename column age to ages;

-- ɾ���ֶ�
-- alter table T_TEST drop column ages;

--------------- V110B02 ----------------------------

alter table T_COMMON_TUNNEL add START_POINT VARCHAR2(50);
alter table T_COMMON_TUNNEL add END_POINT VARCHAR2(50);
alter table T_COMMON_TUNNEL add DIRECTION NUMBER default 0;

alter table T_COMMON_STORE add START_POINT VARCHAR2(50);
alter table T_COMMON_STORE add END_POINT VARCHAR2(50);
alter table T_COMMON_STORE add K NUMBER default 0.0;
alter table T_COMMON_STORE add L NUMBER default 0.0;

alter table T_COMMON_AREA add START_POINT VARCHAR2(50);
alter table T_COMMON_AREA add END_POINT VARCHAR2(50);
alter table T_COMMON_AREA add LENGTH NUMBER default 0;

alter table T_COMMON_SECTION add S1 NUMBER default 0;
alter table T_COMMON_SECTION add S2 NUMBER default 0;

alter table t_mam_measobj add video_ids varchar2(100);
alter table t_mam_measobj add plan_ids varchar2(100);

alter table T_COMMON_SCHEDULE_JOB add job_type number;

------------------V110B03----------------------------

alter table T_OMM_EQUIPMENT add section_id NUMBER;
alter table T_OMM_EQUIPMENT add qa_term VARCHAR2(20);
alter table T_OMM_EQUIPMENT add rated_voltage VARCHAR2(20);
alter table T_OMM_EQUIPMENT add range VARCHAR2(20);
alter table T_OMM_EQUIPMENT add factory VARCHAR2(20);
alter table T_OMM_EQUIPMENT add brand VARCHAR2(20);

alter table T_OMM_SPARE add qa_term VARCHAR2(20);
alter table T_OMM_SPARE add rated_voltage VARCHAR2(20);
alter table T_OMM_SPARE add range VARCHAR2(20);
alter table T_OMM_SPARE add factory VARCHAR2(20);
alter table T_OMM_SPARE add brand VARCHAR2(20);

alter table T_COMMON_COMPANY add credit_no VARCHAR2(20);
alter table T_COMMON_COMPANY add bank NUMBER;
alter table T_COMMON_COMPANY add account VARCHAR2(20);
alter table T_COMMON_COMPANY add address VARCHAR2(100);
alter table T_COMMON_COMPANY add phone VARCHAR2(20);
alter table T_COMMON_COMPANY add mail VARCHAR2(30);

alter table T_COMMON_COMPANY add inspection_no VARCHAR2(20);
alter table T_COMMON_COMPANY add inspection_time VARCHAR2(20);
alter table T_COMMON_COMPANY add inspection_info VARCHAR2(100);
alter table T_COMMON_COMPANY add img_url VARCHAR2(200);

alter table T_OAM_CUSTOMER rename column contact2 to duty;
alter table T_OAM_CUSTOMER rename column contact3 to mail;
alter table T_OAM_CUSTOMER rename column tel3 to type;


------------------------V110----------------------------
-- �޸�Ȩ�ޱ��ֶ�
alter table T_SECURITY_ROLE add rout_list varchar2(2000);
alter table T_SECURITY_PERMISSION modify menu_code null;
alter table T_SECURITY_PERMISSION modify menu_name null;
alter table T_SECURITY_PERMISSION modify permission_name null;
-- �޸ĺ�ͬ���ֶ�
alter table T_OAM_CABLE_CONTRACT add operate_username varchar2(50);
alter table T_OAM_CABLE_CONTRACT add path varchar2(200);
alter table T_OAM_CABLE_CONTRACT rename column customer_id to company_id;
-- ���֮ǰ�ļ����ݣ���ֹ�ֶζ�Ӧ���ϱ���
-- truncate table T_OAM_CABLE_CONTRACT;
-- truncate table T_OAM_CABLE;
-- truncate table T_OAM_CABLE_SECTION;



/*
���������ı�׼�﷨:
CREATE INDEX ������ ON ���� (����) 
����Ψһ����:
CREATE unique INDEX ������ ON ���� (����) 
�����������:
CREATE INDEX ������ ON ���� (����1,����2) 
�������������:
CREATE INDEX ������ ON ���� (����) reverse
�鿴��������
select index_name from all_indexes where table_name = 'T_OAM_CABLE_CONTRACT'; 
ע�⣺
1.�����Ľ��������ǽ�����ѡ���Ըߵ��ֶ��ϣ������Ա�ö���ֶ�ѡ���Ե͵Ĳ���Ҫ��������
2.���ֶ��ϲ����齨������������url��ַ
*/

--T_COMMON_TUNNEL
create index tunnel_status_idx on T_COMMON_TUNNEL(status);
create index tunnel_name_idx on T_COMMON_TUNNEL(name);
--T_COMMON_STORE
create index store_tunnel_idx on T_COMMON_STORE(tunnel_id);
create index store_name_idx on T_COMMON_STORE(name);
create index store_parent_idx on T_COMMON_STORE(parent_id);
--T_COMMON_AREA
create index area_tunnel_idx on T_COMMON_AREA(tunnel_id);
create index area_name_idx on T_COMMON_AREA(name);
--T_COMMON_SECTION
create index section_tunnel_idx on T_COMMON_SECTION(tunnel_id);
create index section_store_idx on T_COMMON_SECTION(store_id);
create index section_area_idx on T_COMMON_SECTION(area_id);
--T_SECURITY_USER
create index user_name_idx on T_SECURITY_USER(name);
--T_SECURITY_ROLE
create index role_name_idx on T_SECURITY_ROLE(role_name);
--t_security_user_role
create index ur_u_idx on t_security_user_role(u_id);
create index ur_r_idx on t_security_user_role(r_id);
--t_security_role_permission
create index rp_r_idx on t_security_role_permission(r_id);
create index rp_p_idx on t_security_role_permission(p_id);
--t_mam_measobj
create index measobj_section_idx on t_mam_measobj(section_id);
create index measobj_objtype_idx on t_mam_measobj(objtype_id);
--T_MAM_ALARM
create index alarm_object_idx on T_MAM_ALARM(object_id);
create index alarm_date_idx on T_MAM_ALARM(alarm_date);
--T_OAM_CABLE_CONTRACT
create index contract_pay_idx on T_OAM_CABLE_CONTRACT(pay_type);
create index contract_company_idx on T_OAM_CABLE_CONTRACT(company_id);
create index cable_contract_idx on T_OAM_CABLE(contract_id);
create index c_s_c_idx on T_OAM_CABLE_SECTION(cable_id);
create index c_s_s_idx on T_OAM_CABLE_SECTION(section_id);

---------------------------V120B01----------------------------

alter table T_OMM_INSPECTION_PLAN add inspection_way NUMBER;
alter table T_OMM_INSPECTION_PLAN add inspection_object NUMBER;
alter table T_OMM_INSPECTION_PLAN add inspection_path NUMBER;

alter table T_OMM_INSPECTION_PLAN modify inspect_time null;

alter table T_COMMON_FILE_INFO add doc_type_son number default 0;

-- �޸�bank������number->varchar2(50)
alter table T_COMMON_COMPANY rename column bank to temp;
alter table T_COMMON_COMPANY add bank varchar2(50);
update T_COMMON_COMPANY set bank = temp;
commit;
alter table T_COMMON_COMPANY drop column temp;

update T_COMMON_SECTION set total_cable_number = 0 where store_id not in ( 1001,1011,1006,1014);
commit;

alter table T_OMM_INSPECTION_PLAN add other_ids varchar2(50);

alter table T_EM_RELATED_UNIT add unit_level number;


---------------------------------------------------------------
-- ���վ
alter table T_MAM_SUBSTATION rename column inv_id to voltage_id;
alter table T_MAM_SUBSTATION rename column ina_id to current_id;
alter table T_MAM_SUBSTATION rename column outv_id to unpower_id;
alter table T_MAM_SUBSTATION rename column outa_id to power_day_id;
alter table T_MAM_SUBSTATION rename column POWER_FACTOR to power_factor_id;

alter table T_MAM_SUBSTATION add name varchar2(20);
alter table T_MAM_SUBSTATION add voltage_level varchar2(20);
alter table T_MAM_SUBSTATION add magnification number;

alter table T_MAM_SUBSTATION add unpower_day_id number;
alter table T_MAM_SUBSTATION add power_ele_id number;
alter table T_MAM_SUBSTATION add unpower_ele_id number;
alter table T_MAM_SUBSTATION add type number;


-------------------------------------------------------------
alter table T_COMMON_TUNNEL add show number default 1;
