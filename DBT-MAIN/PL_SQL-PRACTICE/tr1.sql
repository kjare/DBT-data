/*
drop trigger if exists tr1;
delimiter $
 
create trigger tr1 before insert on d2 for each ROW
BEGIN
1.insert into d1 values (new.id,new.name,current_date(), current_time(), user()) ;	
	
	2.if dayname(now()) = 'Monday' THEN
		signal sqlstate '42000' set message_text='Invalid transaction, because today is Mondayyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy';
	end if;
	
	


	insert into d1 values (new.id,new.name,current_date(), current_time(), user());


end $
delimiter ;


  3. drop trigger if exists tr2;
delimiter $

create trigger tr2 before delete on d2 for each ROW
BEGIN

	insert into d1 values (old.id,old.name,current_date(), current_time(), user());

	
*/
	 drop trigger if exists tr1;
	delimiter $
	create trigger tr1 before insert on d2 for each row 
BEGIN
/*	
	declare z int;
	select max(id) + 1 into z from d1;
	set new.id = z;
	
	IF z>21421 THEN 
		signal sqlstate '42000' set message_text = ' id is more than 21421';
	end if;
	*/
	set new.name = upper(new.name);
	insert into d1 values (new.id,new.name,current_date(), current_time(), user());
end $
delimiter ;

