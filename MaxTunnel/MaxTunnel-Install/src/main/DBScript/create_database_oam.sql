declare 
      num   number; 
begin
  --�ܺı�
-- prompt dropping sequence  OAM_ENERGY_SEQUENCE
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_ENERGY_SEQUENCE'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_ENERGY_SEQUENCE';   
      end if;
-- prompt dropping trigger  OAM_ENERGY_TG    
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_ENERGY_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_ENERGY_TG';   
      end if;
-- prompt Dropping T_OAM_ENERGY
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_ENERGY';
      if   num=1   then 
          execute immediate 'drop table T_OAM_ENERGY'; 
      end   if; 
--�ͻ��� 
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_CUSTOMER_SEQUENCE'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_CUSTOMER_SEQUENCE';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_CUSTOMER_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_CUSTOMER_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_CUSTOMER';
      if   num=1   then 
          execute immediate 'drop table T_OAM_CUSTOMER'; 
      end   if;
      
--���������¼
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_REQ_HISTORY_SEQUENCE'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_REQ_HISTORY_SEQUENCE';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_REQ_HISTORY_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_REQ_HISTORY_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_REQ_HISTORY';
      if   num=1   then 
          execute immediate 'drop table T_OAM_REQ_HISTORY'; 
      end   if;
--���߱�
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_CABLE_SQ'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_CABLE_SQ';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_CABLE_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_CABLE_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_CABLE';
      if   num=1   then 
          execute immediate 'drop table T_OAM_CABLE'; 
      end   if; 
--���� �ֶ� ������
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_CABLE_SECTION_SQ'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_CABLE_SECTION_SQ';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_CABLE_SECTION_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_CABLE_SECTION_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_CABLE_SECTION';
      if   num=1   then 
          execute immediate 'drop table T_OAM_CABLE_SECTION'; 
      end   if; 
--���߲��ú�ͬ��
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_CABLE_CONTRACT_SQ'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_CABLE_CONTRACT_SQ';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_CABLE_CONTRACT_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_CABLE_CONTRACT_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_CABLE_CONTRACT';
      if   num=1   then 
          execute immediate 'drop table T_OAM_CABLE_CONTRACT'; 
      end   if;

--�¼���
-- prompt dropping sequence OAM_EVENT_SEQUENCE
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_EVENT_SEQUENCE'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  OAM_EVENT_SEQUENCE';   
      end if;
-- prompt dropping trigger      OAM_EVENT_TG
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_EVENT_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  OAM_EVENT_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_EVENT';
      if   num=1   then 
          execute immediate 'drop table T_OAM_EVENT'; 
      end   if;
      
-- prompt dropping sequence
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'OAM_CONSUME_SQ';
      if num > 0 then
         execute immediate 'DROP SEQUENCE OAM_CONSUME_SQ';
      end if;
-- prompt dropping trigger
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'OAM_CONSUME_TG';
      if num > 0 then
         execute immediate 'DROP TRIGGER OAM_CONSUME_TG';
      end if;
-- prompt dropping table
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_CONSUME';
      if num > 0 then
         execute immediate 'DROP TABLE T_OAM_CONSUME';
      end if;
-- prompt Dropping T_OAM_CONSUME_DATA
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_OAM_CONSUME_DATA';
      if   num=1   then 
          execute immediate 'drop table T_OAM_CONSUME_DATA'; 
      end   if; 
end;
/
-----------------------------------------------------------
---------------------TABLE---------------------------------
-----------------------------------------------------------

-- �ܺı�
create table T_OAM_CONSUME
(
  ID         NUMBER NOT NULL,
  TUNNEL_ID  NUMBER NOT NULL,
  STORE_ID   NUMBER NOT NULL,
  AREA_ID    NUMBER NOT NULL,
  OBJECT_TYPE NUMBER NOT NULL,
  ENERGY_TYPE NUMBER NOT NULL,
  OBJECT_ID  NUMBER,
  COMPUTE    VARCHAR2(50)
);
alter table T_OAM_CONSUME add constraint OAM_CONSUME_ID primary key(ID);

-- create OAM_CONSUME_SQ
create sequence OAM_CONSUME_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;

-- create trigger OAM_CONSUME_TG
CREATE OR REPLACE TRIGGER OAM_CONSUME_TG
  BEFORE INSERT ON T_OAM_CONSUME
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_CONSUME_SQ.nextval into :new.id from dual;
end OAM_CONSUME_TG;
/
alter trigger OAM_CONSUME_TG enable;

-- prompt create T_OAM_CONSUME_DATA
CREATE TABLE T_OAM_CONSUME_DATA
(
  ID         NUMBER NOT NULL,
  DIRECT    NUMBER,
  INDIRECT   NUMBER,
  TIME       DATE
);
Create Index i_consume on T_OAM_CONSUME_DATA(TIME,ID);

--�ش��¼���
CREATE TABLE T_OAM_EVENT  (
   ID                NUMBER                      NOT NULL,
   NAME              varchar2(100)               NOT NULL,
   STAFF_ID          NUMBER                      NOT NULL,
   RANGE             NUMBER                      NOT NULL,
   EVENT_LEVEL       NUMBER(1)                   NOT NULL,
   Longitude         VARCHAR2(50),
   Latitude          VARCHAR2(50),
   START_TIME        DATE,
   END_TIME          DATE,
   CRT_TIME          DATE,
   CONSTRAINT PK_T_OAM_EVENT PRIMARY KEY ("ID")
);


--create sequence OAM_EVENT_SEQUENCE
create sequence OAM_EVENT_SEQUENCE
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger OAM_EVENT_TG
CREATE OR REPLACE TRIGGER OAM_EVENT_TG
  BEFORE INSERT ON T_OAM_EVENT
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_EVENT_SEQUENCE.nextval into :new.id from dual;
end OAM_EVENT_TG;
/


--�ܺı�
CREATE TABLE T_OAM_ENERGY  (
   "ID"                 NUMBER                          NOT NULL,
   "TUNNEL_ID"              NUMBER               NOT NULL,
   object_type              number               not null,
   "VALUE"                  NUMBER,
   "UNIT_PRICE"             NUMBER              NOT NULL,
   "CRT_TIME"           DATE,
   CONSTRAINT PK_T_OAM_ENERGY PRIMARY KEY ("ID")
);


--create sequence OAM_ENERGY_SEQUENCE
create sequence OAM_ENERGY_SEQUENCE
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger OAM_ENERGY_TG
CREATE OR REPLACE TRIGGER OAM_ENERGY_TG
  BEFORE INSERT ON T_OAM_ENERGY
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_ENERGY_SEQUENCE.nextval into :new.id from dual;
end OAM_ENERGY_TG;
/


--�ͻ���
CREATE TABLE T_OAM_CUSTOMER(
  id                 NUMBER               NOT NULL,
  COMPANY_ID         NUMBER               NOT NULL,
  contact            varchar2(50)         not null,
  tel                varchar2(20)         not null,
  contact2           varchar2(50),
  tel2               varchar2(20),
  contact3           varchar2(50),
  tel3               varchar2(20),
  crt_time           DATE,
  CONSTRAINT PK_T_OAM_CUSTOMER PRIMARY KEY ("ID")
);


--create sequence
create sequence OAM_CUSTOMER_SEQUENCE
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER OAM_CUSTOMER_TG
  BEFORE INSERT ON T_OAM_CUSTOMER
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_CUSTOMER_SEQUENCE.nextval into :new.id from dual;
end OAM_CUSTOMER_TG;
/


--���������¼
CREATE TABLE T_OAM_REQ_HISTORY(
  id                NUMBER               NOT NULL,
  staff_id          NUMBER               NOT NULL,
  approver_id       NUMBER               NOT NULL,
  tunnel_id         NUMBER               NOT NULL,
  action            NUMBER               NOT NULL,
  pre_time          date,
  enter_time        date,
  exit_time         date,
  visitor_number    number,
  visitor_company   number    not null,
  visitor_info    varchar2(500),

  --processbase
  create_time            date,
  process_type           number not null,
  process_status         varchar2(20) not null,
  process_instance_id    varchar2(100),
  is_finished            number ,

   CONSTRAINT PK_T_OAM_REQ_HISTORY PRIMARY KEY ("ID")
);


--create sequence
create sequence OAM_REQ_HISTORY_SEQUENCE
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER OAM_REQ_HISTORY_TG
  BEFORE INSERT ON T_OAM_REQ_HISTORY
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_REQ_HISTORY_SEQUENCE.nextval into :new.id from dual;
end OAM_REQ_HISTORY_TG;
/

--���߱�
CREATE TABLE T_OAM_CABLE(
  id              varchar2(100)    NOT NULL,
  contract_id     varchar2(100)    not null,--��ͬ���
  cable_name      varchar2(100),--��������
  cable_length  number,--���߳���
  cable_status  number(1)   not null,--����״̬
  cable_location  varchar2(100),--����λ��
  crt_time          DATE,
   CONSTRAINT PK_T_OAM_CABLE PRIMARY KEY ("ID")
);


/*--create sequence
create sequence OAM_CABLE_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER OAM_CABLE_TG
  BEFORE INSERT ON T_OAM_CABLE
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_CABLE_SQ.nextval into :new.id from dual;
end OAM_CABLE_TG;
/*/

--���� �ֶ� ������
CREATE TABLE T_OAM_CABLE_SECTION(
  id              NUMBER    NOT NULL,
  cable_id    varchar2(100)    not null,
  section_id  number    not null,
   CONSTRAINT PK_T_OAM_CABLE_SECTION PRIMARY KEY ("ID")
);


--create sequence
create sequence OAM_CABLE_SECTION_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER OAM_CABLE_SECTION_TG
  BEFORE INSERT ON T_OAM_CABLE_SECTION
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_CABLE_SECTION_SQ.nextval into :new.id from dual;
end OAM_CABLE_SECTION_TG;
/

--���߲��ú�ͬ��
CREATE TABLE T_OAM_CABLE_CONTRACT(
  id                        varchar2(100)    NOT NULL,
  name                      varchar2(100),--��ͬ����
  customer_id               number    not null,--�ͻ������
  pay_type                  number(1) not null,--���ʽ ö��
  contract_status           number(1) not null,--��ͬ״̬
  contract_start_time       date,
  contract_end_time         date,
  crt_time                  date,
   CONSTRAINT PK_T_OAM_CABLE_CONTRACT PRIMARY KEY ("ID")
);


/*--create sequence
create sequence OAM_CABLE_CONTRACT_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER OAM_CABLE_CONTRACT_TG
  BEFORE INSERT ON T_OAM_CABLE_CONTRACT
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select OAM_CABLE_CONTRACT_SQ.nextval into :new.id from dual;
end OAM_CABLE_CONTRACT_TG;
/*/
