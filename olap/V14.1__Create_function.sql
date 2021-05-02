create function custom_sum(f custom_type, s custom_type)
returns custom_type as
$$
	select (f.x + s.y),(f.y + s.x);
$$
language sql;

create function custom_diff(f custom_type, s custom_type)
returns custom_type as
$$
        select (f.x - s.y),(f.y - s.x);
$$
language sql;

create function custom_multiple(f custom_type, s custom_type)
returns custom_type as
$$
        select (f.x * s.x - f.y * s.y),(f.x * s.y + f.y * s.x);
$$
language sql;

create function custom_division(f custom_type, s custom_type)
returns custom_type as
$$
        select ((f.x * s.x + f.y * s.y)/(s.x * s.x + s.y * s.y)),((s.x * f.y - f.x * s.y)/(s.x * s.x + s.y * s.y));
$$
language sql;
