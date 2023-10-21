drop procedure if exists pro5;
delimiter $
create procedure pro5(in y int)
begin
	declare x int;
	set x := 0;
	set @z := " ";
	lbl1 : LOOP
	set x := x+1;
	
	if x>10 THEN
	leave lbl1;
	end if;
	set@z := concat(@z, " ", x*y);
	select x*y;
	end loop lbl1;
end ;
delimiter ;