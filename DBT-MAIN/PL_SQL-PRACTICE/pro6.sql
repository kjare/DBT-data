
drop procedure if exists pro6;
delimiter $

create procedure pro6(in v int, out c int)
BEGIN
	declare c VARCHAR(200);
	declare i int;
	FOR i IN 1..LENGTH(s1) LOOP 
		c := Substr(s1, i, 1); 
		IF c IN ('A', 'E', 'I', 'O', 'U') 
			OR c IN ('a', 'e', 'i', 'o', 'u') THEN
			v++;
		ELSE
			IF c NOT IN (' ') THEN
				c++; 
			END IF; 
		END IF; 
	END LOOP;
		
	set @z1:=v;
	set @z2:=c;
end$
delimiter ;
