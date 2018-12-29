
declare 
      num   number; 
begin
--��ص�λ��
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'EM_RELATED_UNIT_SQ'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  EM_RELATED_UNIT_SQ';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'EM_RELATED_UNIT_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  EM_RELATED_UNIT_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_EM_RELATED_UNIT';
      if   num=1   then 
          execute immediate 'drop table T_EM_RELATED_UNIT'; 
      end   if; 
--Ӧ��Ԥ����
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'EM_PLAN_SQ'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  EM_PLAN_SQ';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'EM_PLAN_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  EM_PLAN_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_EM_PLAN';
      if   num=1   then 
          execute immediate 'drop table T_EM_PLAN'; 
      end   if; 
--������������������
-- prompt dropping sequence 
      num := 0;
      select count(1) into num from user_sequences where sequence_name = 'EM_OBJ_BIND_SQ'; 
      if num > 0 then   
         execute immediate 'DROP SEQUENCE  EM_OBJ_BIND_SQ';   
      end if;
-- prompt dropping trigger      
      num := 0;
      select count(1) into num from user_triggers where trigger_name = 'EM_OBJ_BIND_TG'; 
      if num > 0 then   
         execute immediate 'DROP TRIGGER  EM_OBJ_BIND_TG';   
      end if;
-- prompt Dropping 
      num := 0;
      select count(1) into num from user_tables where TABLE_NAME = 'T_EM_OBJ_BIND';
      if   num=1   then 
          execute immediate 'drop table T_EM_OBJ_BIND'; 
      end   if; 

end;
/

----------------------------------------------------------------
---------------------------TABLE--------------------------------
----------------------------------------------------------------
----------------------------------------------------------------

--��ص�λ
CREATE TABLE T_EM_RELATED_UNIT(
  id                NUMBER               NOT NULL,
  name              varchar2(100)        NOT NULL,
  contact           varchar2(50),
  tel               varchar2(20),
  unit_type         NUMBER               NOT NULL,
  address           varchar2(100),
  section_ids       varchar2(100)        not null,
  longitude         varchar2(20), 
  latitude          varchar2(20), 
  crt_time          DATE,
   CONSTRAINT PK_T_EM_RELATED_UNIT PRIMARY KEY ("ID")
);


--create sequence
create sequence EM_RELATED_UNIT_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER EM_RELATED_UNIT_TG
  BEFORE INSERT ON T_EM_RELATED_UNIT
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select EM_RELATED_UNIT_SQ.nextval into :new.id from dual;
end EM_RELATED_UNIT_TG;
/

--Ӧ��Ԥ����
CREATE TABLE T_EM_PLAN(
  id              NUMBER          NOT NULL,
  process_key     varchar2(100)   not null, 
  task_key        varchar2(100)   not null,
  task_name       varchar2(100)   not null,      
  target_key      number(1)       not null,
  target_value    varchar2(100)   not null,
  action_key      number(1)       not null,
  action_value    varchar2(100)   not null,
  finish_key      number(1)       not null,
  finish_value    number          not null,
  is_finished     number(1)       not null,
  crt_time        DATE,
  CONSTRAINT PK_T_EM_PLAN PRIMARY KEY ("ID")
);


--create sequence
create sequence EM_PLAN_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER EM_PLAN_TG
  BEFORE INSERT ON T_EM_PLAN
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select EM_PLAN_SQ.nextval into :new.id from dual;
end EM_PLAN_TG;
/

--������������������
CREATE TABLE T_EM_OBJ_BIND(
  id              NUMBER          NOT NULL,
  object_id       number          not null,   
  bind_id         number          not null,
  type            number(1)       not null,
  crt_time        DATE,       
   CONSTRAINT PK_T_EM_OBJ_BIND PRIMARY KEY ("ID")
);


--create sequence
create sequence EM_OBJ_BIND_SQ
start with 1
increment by 1
nomaxvalue
nocycle
cache 20;
-- create trigger
CREATE OR REPLACE TRIGGER EM_OBJ_BIND_TG
  BEFORE INSERT ON T_EM_OBJ_BIND
  FOR EACH ROW
  WHEN (new.id is null)
begin
  select EM_OBJ_BIND_SQ.nextval into :new.id from dual;
end EM_OBJ_BIND_TG;
/


