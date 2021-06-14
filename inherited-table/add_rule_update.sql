create or replace rule redirect_update_1 as on update to inherited.hub
    do instead (insert into inherited.hub values (new.id + 1, new.name));