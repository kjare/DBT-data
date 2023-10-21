drop procedure if exists pro7;
delimiter $
create procedure pro7()
begin
	insert into t5 values (2,3,5,6);
	-- when we try to insert same values will give "duplicate entry" error
	-- do error handling
end$
delimiter ;

--CREATE DEFINER = root@localhost FUNCTION fnc_calcWalkedDistance