/*
EXAMPLE #CURSOR_FOR_Loop# :
    FOR record_index in cursor_name
    LOOP
    {...statements...}
    END LOOP;
    more information: https://www.techonthenet.com/oracle/loops/cursor_for.more%20information

*/
BEGIN
    for rec in( select * from employees where id between 1 and 20)
      LOOP
        dbms_output.put_line('ID WORKER - ' ||  case employees.id
        when 4 then 123541 else employees.id end || chr(13) || ' Имя ' ||employees.name); 
      END LOOP;
END;