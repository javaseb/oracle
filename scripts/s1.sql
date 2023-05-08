/* **NOTE: BLOCK COMMENTS MUST START WITH «/* + SPACE» */
/* 
Sébastien Charland
First script (learning Oracle 12c PL/SQL)
*/
--can be also «cl scr» or «cl screen»...
clear screen;
/* Another change with PL/SQL from SQL is that the database does not return the output.
It will not normally display results back to the user.
To do this we use a procedure called dbms_output.put_line to place the results in a 
buffer that SQL*Plus will retrieve and display. 
The SQL*Plus command 'set serveroutput on' causes SQL*Plus to retrieve and display the buffer.*/
set serveroutput on;
/* The script. The script is not stored in the database
*this is an anonymous block of PL/SQL code.
*In this example, no exception will be managed.
*/
declare -- Declaration bloc. Configure here variables that will be used in the begin/end section.
v_line varchar2(40); 
begin --script starts here
v_line :='show what''s inside the v_line variable '; --Assignment
dbms_output.put_line(v_line); --show to console
dbms_output.put_line('a sentence wrote directly');
end; -- end of script
--NOTE: SCRIPT MUST END WITH "/" TO BE EXECTUCED WITH NO COMMENTS -- ON THE SAME LINE
/ 
--COMMENTS ALLOWED HERE
