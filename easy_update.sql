BEGIN -- start anonym block 
   UPDATE UPC_MESSAGES_TEST6 -- sql UPDATE statement 
   SET msg_text = 'test' -- setpoint in the field
   WHERE id = 2606863; -- set conditions for update data record
   dbms_output.put_line('Done Update!'); -- log info for success UPDATE
END; -- end anonym block
/