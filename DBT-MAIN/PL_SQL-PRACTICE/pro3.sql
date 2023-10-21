drop procedure if exists pro3;
delimiter $
create procedure pro3(in x int, in y int, out z1 int, out z2 int)
begin
	set z1 = x+y;
	set z2 = x-y;
end$
delimiter ;

