
-- ���Ա�T_TEST

-- ����ֶ�
-- alter table T_TEST add age number(3) default 18;

-- section����ӳ���length�ֶ�
alter table T_COMMON_SECTION add length number default 300;

-- store����ӿ�width�͸�height�ֶ�
alter table T_COMMON_STORE add width NUMBER default 1;
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

-- �޸��ֶ�
-- alter table T_TEST rename column age to ages;

-- ɾ���ֶ�
-- alter table T_TEST drop column ages;