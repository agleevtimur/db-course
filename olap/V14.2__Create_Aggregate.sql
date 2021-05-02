create aggregate custom_ag_sum (custom_type)
(
	sfunc = custom_sum,
	stype = custom_type,
	initcond = '(0,0)'
);

create aggregate custom_ag_diff (custom_type)
(
        sfunc = custom_diff,
        stype = custom_type,
        initcond = '(0,0)'
);

create aggregate custom_ag_multiple (custom_type)
(
        sfunc = custom_multiple,
        stype = custom_type,
        initcond = '(1,1)'
);

create aggregate custom_ag_division (custom_type)
(
        sfunc = custom_division,
        stype = custom_type,
        initcond = '(1,1)'
);
