create function instead_of_trigger.instead_insert()
returns trigger
language plpgsql as
$$
	begin
		insert into instead_of_trigger.dictionary VALUES (new.key, new.sum);
		return new;
	end;
$$;

create trigger redirect_insert
instead of insert on instead_of_trigger.view
for each row execute function instead_of_trigger.instead_insert();
