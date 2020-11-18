# Analysis-of-Bank-Data Assignment

## Problem Statement:
Retail Depart in Bank accepts the application for new account opening and sends it to backend
operations team to process. There are three steps involved in processing the
application. Each step is processed by an Agent .

- Step1: Maker: He is does data entry job, enter the information into system.
- Step 2: Checker: He validates the data entered by Maker, and can accept or reject it.
If It is rejected, then it is sent back to Maker and it is reverified.
else if it’s successful it is sent to Approver.
- Step3: Approver: He approves the application and account is created.

Please Write SQL queries for below using Agent_Table.csv and Case_transaction_details.csv Files,
1. How many unique cases per day? Ans: 3
2. Case Id which is rejected by checker but still not reverified? Ans: 103
3. Top Agent names with who processed more applications?
Ans: Rajesh - 4
Vijay -2

### Files,
- Agent_Table.csv: Agent Data: where agent details are stored
- Case_transaction_details.csv: Case_transaction_details: Each step in Backend operation is stored.
- Analysis_of_Bank_Data.sql: Contains the solution to the above problems

Thank you...
