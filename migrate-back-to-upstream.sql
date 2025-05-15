begin;

update
    project__template
set
    task_params = '{"limit":["' || hosts_limit || '"]}';

alter table
    project__template drop column hosts_limit;

commit;