--  initialize types and variables
DECLARE
  TYPE emails IS VARRAY(10) OF VARCHAR2(35); -- create an array for variable save values
  emails_procedure_1 emails; -- create an array for variable save values
  length_p1 INTEGER; -- length arr procedure_1
--  variables used in arrays (- const varchar2)
  email_1 CONSTANT VARCHAR2 (35) := 'brugrurolleuprei-9212@yopmail.com';
  email_2 CONSTANT VARCHAR2 (35) := 'bevequevoifu-6429@yopmail.com';
  email_3 CONSTANT VARCHAR2 (35) := 'lippiprofriprou-5786@yopmail.com';
  email_4 CONSTANT VARCHAR2 (35) := 'curiroiddeupreu-9946@yopmail.com';
  email_5 CONSTANT VARCHAR2 (35) := 'vouffeillouzegrei-7928@yopmail.com';
  email_6 CONSTANT VARCHAR2 (35) := 'soujoileitohe-1672@yopmail.com';
  email_7 CONSTANT VARCHAR2 (35) := 'wummepoppijou-8518@yopmail.com '; 
BEGIN -- START ANONYM BLOCK 
   emails_procedure_1 := emails(email_1,email_2,email_3,email_4,email_5,email_6,email_7); -- added variables in varray
   length_p1 :=  emails_procedure_1.count; -- get lenght varray
   FOR i in 1 .. length_p1 LOOP -- START LOOP FOR
      -- shows the element with its index
      dbms_output.put_line('index: '|| i || ' email: ' || emails_procedure_1(i) || ';'); 
   END LOOP; -- END LOOP FOR
END; -- END ANONYM BLOCK  
/ -- COMAND FOR SQLPLUS