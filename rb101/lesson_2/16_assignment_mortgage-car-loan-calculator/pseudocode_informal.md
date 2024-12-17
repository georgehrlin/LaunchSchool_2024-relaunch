# Pseudocode for Mortgage/Car Loan Calculator
## Informal
Greet user. Ask for username
Say hi to user referring username
Ask user for loan amount
  - Validate loan amount: a positive integer/float (helper_function_1)
  - If loan amount is valid, present it to user
  - Else, ask user again

Ask user for Annual Percentage Rate (APR) in percentage
  - Validate APR: a positive integer/float less than 100 (helper_function_2)
  - If APR is valid, present it to user in percentage
  - If APR is valid, convert it to decimal (helper_function_3)
  - Once converted to decimal, calculate monthly interest rate (helper_function_4)
  - Present monthly interest rate to user

Ask user for loan duration in years
  - Validate loan duration: a positive integer (helper_function_5)
  - If loan duration is valid, convert it into months

Calculate monthly payment amount based on loan amount, monthly interest rate, and loan duration in months (helper_function_6)
Present user loan amount, APR, and loan duration, then monthly payment amount
Ask user if they want to perform another calculation
  - If not, exit
