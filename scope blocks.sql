BEGIN
  << global_scope >>
  DECLARE 
    x PLS_INTEGER := 0;
  BEGIN
     << local_scope >>
    DECLARE
       x PLS_INTEGER := 0;
    BEGIN
       FOR i  in 1 .. 10 LOOP
         x := i;
       END LOOP;
       global_scope.x := local_scope.x + 11;
       dbms_output.put_line('global_scope variable x --> '|| global_scope.x || ' local_scope variable x --> '|| local_scope.x);
    END local_scope;
  END global_scope;
END;

