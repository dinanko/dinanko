WITH dates (start_date, END_date) as 
(SELECT ADD_MONTHS(sysdate,-3)AS start_date  ,
	    ADD_MONTHS(sysdate,-2)AS end_date
 FROM dual
UNION ALL
SELECT start_date + INTERVAL '1' DAY ,
	   end_date  + INTERVAL '1' DAY
FROM dates
WHERE start_date <= sysdate+INTERVAL '1' day
 )
 SELECT * FROM dates;