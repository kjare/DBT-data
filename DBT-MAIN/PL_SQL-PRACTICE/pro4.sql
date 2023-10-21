drop procedure if exists pro4;
delimiter $
create procedure pro4()
begin
	declare x int;
	set x := 0;
	lbl1 : LOOP
	set x := x+1;
	
	if x>10 THEN
	leave lbl1;
	end if;
	select x;
	end loop lbl1;
end $
delimiter ;