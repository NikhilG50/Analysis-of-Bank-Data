/*
create database Assighnment;
use Assighnment;

select * from Agent_Table;

Select * from Case_transaction_details;
*/

-- 1)How many unique cases per day? 
SELECT 
    COUNT(DISTINCT (Case_Id))
FROM
    Case_transaction_details;
    
    
-- 2)Case Id which is rejected by checker but still not reverified?

SELECT 
    Case_Id
FROM
    Case_transaction_details
WHERE
    Stage IN ('Checker')
        AND Status IN ('Reject') 
        AND Case_Id <> (SELECT  Case_Id
			FROM
				Case_transaction_details
			WHERE
				Stage IN ('Maker')
					AND Status IN ('Reverify'));

-- 3)Top Agent names with who processed more applications?
-- Please Note:  Hear, i added answers in supparate quiries since i am not able to merge count values from inner query with outer query
SELECT Name
FROM Agent_Table
where (Agent_Id) IN (SELECT Agent_id 
	 FROM Case_transaction_details GROUP BY Agent_id)
     LIMIT 2;
     
 SELECT Agent_id ,count(*)
	 FROM Case_transaction_details GROUP BY Agent_id
     LIMIT 2;




 
 
