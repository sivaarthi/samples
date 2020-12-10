insert into id2 (p_id,p_descrp)
values (301,'car'),(302,'television'),(303,'bicycle'),(304,'books');

merge into id1 using id2 
    on id1.p_id = id2.p_id
    when matched then 
    update set id1.p_descrp = id2.p_descrp
    when not matched then 
        insert (p_id, p_descrp) values (id2.p_id, id2.p_descrp);