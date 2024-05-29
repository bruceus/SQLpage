select 'dynamic' as component, properties FROM example WHERE component = 'shell' LIMIT 1;

select 'hero' as component,
    'Booking confirmation' as title,
    'Your flight is confirmed ! We wish you a pleasant journey with *SQLPage Airlines*.' as description_md,
    'https://upload.wikimedia.org/wikipedia/commons/9/9a/Bl%C3%A9riot_XI_Thulin_A_Mikael_Carlson_OTT_2013_08b.jpg' as image;


select 'datagrid' as component, 'plane-departure' as icon, 'Flight SQL-966' as title, 'Gate closes: ' || :departure_date || ' at 8AM' as description;
select 
    'Payment'  as title,
    'processed' as description,
    'https://upload.wikimedia.org/wikipedia/commons/2/2a/Mastercard-logo.svg' as image_url;
select 
    'Status' as title,
    'Confirmed' as description,
    'green'  as color;
select 
    'Receipt' as title,
    'Email sent'    as description,
    'check'        as icon,
    TRUE           as active;
select 
    'Check-In'      as title,
    'Online Check-In'          as description,
    'https://ophir.dev/' as link;

select 'list' as component, 'Passengers' as title, 'users' as icon;
select value as title, 'Adult' as description, 'user' as icon from json_each(:adult_names);
select value as title, 'Child' as description, 'baby-carriage' as icon from json_each(:child_names);

select 'divider' as component, 'Technical details' as contents;

select 'text' as component, '
# How is this even possible ?

Not a single line of *HTML*, *CSS*, *JavaScript*, *Python*, *PHP* or *Ruby* was written to implement 
SQLPage Airlines'' multi-step, conditional booking process. How is this even possible ?

The entire form and result page are dynamically generated by a few simple SQL queries, that 
select graphical components from [SQLPage''s component library](/documentation.sql).

You can find the [**full source code** of this example on GitHub](https://github.com/lovasoa/SQLpage/blob/main/examples/official-site/examples/multistep-form).
' as contents_md;
