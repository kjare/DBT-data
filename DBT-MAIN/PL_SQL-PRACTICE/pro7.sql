/*
drop procedure if exists pro7;
delimiter $
create procedure pro7()
begin
	insert into t5 values (2,3,5,6);
	-- when we try to insert same values will give "duplicate entry" error
	-- do error handling
end$
delimiter ;



drop procedure if exists pro8;
delimiter $
create procedure pro8()
BEGIN
	declare exit handler for 1062 select 'data predent' as 'error window';
	insert into t5 values(2,3,4,6);
end$
delimiter ;
*/

drop procedure if exists pro8;
delimiter $
create procedure pro8(int,int,int)
BEGIN
	declare exit handler for 1062 select 'data predent' as 'error window';
	insert into t5 values (p1,p2,p3,p4);
end$
delimiter ;

