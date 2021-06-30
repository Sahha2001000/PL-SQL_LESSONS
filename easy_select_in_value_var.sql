DECLARE -- initialize variables
 count_sms_user_by_id PLS_INTEGER; -- variable(int) for counting user messages 
BEGIN -- start anonym block
   SELECT COUNT(*) -- sql statement SELECT and sql function COUNT
   INTO count_sms_user_by_id -- insert values into count_sms_user_by_id variable 
   FROM UPC_MESSAGES_TEST6 -- table for SELECT
   WHERE id = 2606863; -- condition for data
   dbms_output.put_line(count_sms_user_by_id); -- output counting sms
END; -- end anonym block
/