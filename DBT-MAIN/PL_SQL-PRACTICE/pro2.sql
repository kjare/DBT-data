drop procedure if exists pro2;
delimiter $
create procedure pro2(in x int, in y int)
begin
	SELECT x+y;
end$
delimiter ;


	


	