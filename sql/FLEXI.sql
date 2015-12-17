
insert into dev.obj_typ
(oid,obj_type,obj_name) 
values 
(default,'Web','Image'),
(default,'Web','Link'),
(default,'Web','Button'),
(default,'Web','EditBox'),
(default,'Web','Label'),
(default,'Web','CheckBox'),
(default,'Web','List'),
(default,'Web','RadioGroup'),
(default,'Web','Table');


INSERT INTO dev.obj_prop
(prop_id, obj_id, name, value)
VALUES (default,2,'htmlID','testbttn1'),
       (default,3,'name','testEditBox'),
       (default,3,'type','text'),
       (default,3,'html tag','INPUT'),
       (default,4,'innertext','Display Label'),
       (default,4,'html tag','TR')
       ;

INSERT INTO dev.obj_repo(
            or_id, name, app_id, creation_ts, created_by, update_ts, updated_by)
    VALUES (default,'Test OR 1', 1, CURRENT_TIMESTAMP, 'Aman',CURRENT_TIMESTAMP ,'Aman');
    
AlTER table dev.obj_repo ADD CONSTRAINT unk_obj_repo_name UNIQUE(name);

alter table dev.func_obj_typ alter column reg_on type integer using reg_on::integer;

select name from dev.obj_repo where app_id=1



select * from dev.obj_typ;
select * from dev.obj;
select * from dev.or;
select * from dev.obj_prop;


select * from dev.obj_typ;
select * from dev.func;
select * from dev.func_obj_typ;
select * from dev.func_param;




select func_id from dev.func A
where A.app in (0,1)
and A.script_env=1
and A.category='Web'

-- Get available functions  for a Object type
select B.reg_name
from dev.func A,dev.func_obj_typ B,dev.obj_typ C
where A.func_id in 
(
select func_id from dev.func A
where A.app in (0,1)
and A.script_env=1
and A.category=C.obj_type
)
and A.func_id=B.func_id
and B.reg_on=C.obj_typ_id
and C.obj_type='Web' 
and C.obj_name='WebElement'

--Get Function parameters for a function
select D.param_id,D.ui_obj_typ,D.ui_text, D.ui_obj_val from dev.func A, dev.func_obj_typ B,dev.obj_typ C, dev.func_param D
where A.func_id=B.func_id
and A.func_id=D.func_id
and B.reg_on=C.obj_typ_id
and C.obj_type='Web' 
and C.obj_name='WebElement'
and A.func_id=1
and D.Ui_required='t'

select B.*,D.param_id,D.ui_obj_typ,D.ui_text, D.ui_obj_val 
from dev.func A, dev.func_obj_typ B, dev.obj_typ C,  dev.func_param D 
where A.func_id=B.func_id and A.func_id=D.func_id and B.reg_on=C.obj_typ_id and C.obj_type='Web' 
and C.obj_name='WebElement' 
--and B.reg_name='VerifyLen' 
and D.Ui_required='t' order by D.ui_obj_typ desc



select * from dev.func;

select * from dev.func_obj_typ
where reg_name='VerifyLen' 

select * from dev.func_param where func_id=2
where function_name='


select * from  dev.func_param where func_id=2

select ui_obj_typ,length(ui_obj_typ) from  dev.func_param where param_id=3

update dev.func_param set ui_obj_typ='EditBox' where param_id=2

select D.param_id,D.ui_obj_typ,D.ui_text, D.ui_obj_val 
from dev.func A, dev.func_obj_typ B, dev.obj_typ C,  dev.func_param D 
where A.func_id=B.func_id and A.func_id=D.func_id and B.reg_on=C.obj_typ_id 
and C.obj_type='Web' and C.obj_name='WebElement' and A.func_id=1 and D.Ui_required='t'









select * from dev.obj
select * from dev.obj_prop

INSERT INTO dev.obj(
            obj_id, obj_typ_id, or_id, obj_name, comment)
    VALUES (default,
            (select obj_typ_id from dev.obj_typ where obj_type='Web' and obj_name='Label'),
             1,
             'testLabel1', 
             '');
    



select obj_name from dev.obj_types A
where obj_type='Web'

select "ObjName" from dev."ObjTypes" 
where "ObjType"="Web"


select * from dev."OR"
select * from dev."ObjTypes"


drop table dev.

