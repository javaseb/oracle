CREATE USER charlands
    IDENTIFIED BY seb
	PROFILE app_user;
    --DEFAULT TABLESPACE example 
    --QUOTA 10M ON example 
    -- TEMPORARY TABLESPACE temp
     QUOTA 5M ON system
	 PROFILE app_user;
    --  PASSWORD EXPIRE