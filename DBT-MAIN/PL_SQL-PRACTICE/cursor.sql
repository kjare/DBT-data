drop procedure if exists pro1;
delimiter $
create procedure pro1()
begin
	declare c1 cursor for select * from dept;
	
	open c1;
		fetch c1 into _deptno, _dname, _loc, _pwd, _startedon;
		select _deptno, _dname, _loc, _pwd, _startedon;
	close c1;
end $
delimiter ;