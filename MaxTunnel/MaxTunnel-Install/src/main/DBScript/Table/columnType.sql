
-- �޸�������card(number -> varchar2)

-- ����������
-- alter table T_TEST rename column card to temp;

-- ��������
-- alter table T_TEST add card varchar2(50);

-- ���и�ֵ
-- update T_TEST set card = temp;
-- commit;

-- ɾ������
-- alter table T_TEST drop column temp;