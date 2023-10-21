/*drop function if exists f1;
delimiter $
create function f1(str VARCHAR(20)) returns VARCHAR(20)
deterministic

BEGIN
	set @name := str;
	return name;
END $
delimiter ;

var inputArray = [];
var size = 5; //Maximum Array size

for(var i=0; i<size; i++) {
	
	//Taking Input from user
	inputArray[i] = prompt('Enter Element ' + (i+1));
}

    var numbers = inputArray.filter(numbersOnly);

    document.write(numbers);

    function numbersOnly(value) {
        if (typeof (value) === 'number') {
            return value;
        }
    }



drop procedure if exists pro1;
delimiter $
create procedure pro1(in str varchar(20))
BEGIN
	declare len int;
	declare s1 varchar(20);
	--set @x1 := p2;
	--select @x1;

	
	set len:=length(str);
	for i in 1 .. len loop 
		set s1:=substr(str,i,1);	
	end loop;
	
end $
delimiter ;

*/

drop procedure if exists pro1;
delimiter $
create procedure pro1(name varchar(200))
BEGIN
	declare a varchar(300);
	declare x int;
	declare v int;
	declare	d int;
	declare s int;
	set x=0;
	set v=0;
	set d=0;
	set s=0;
	
    set @p=0;
	set @q=0;
	set @r=0;
	lbl:LOOP
		set x = x+1;
		set a = substr(name, x, 1);
		
		if a in ('a','e','i','o','u','A','E','I','O','U') then 
			set v=v+1;
			set @p=v;
			end if;
	
		 if a between '0' and '9' then 
			set d=d+1;
			set @q=d;
		end if;
		IF a = ' ' then 
			set s=s+1;
			set @r=s;
		end if;

		if x>length(name)-1 then 
			leave lbl;
		end if;
	end loop lbl; 
		
		SELECT @p;
		SELECT @q;
		SELECT @r;
end $
delimiter ;

	