# Pseudocode for Mortgage/Car Loan Calculator
## Formal
START

PRINT msg_welcome

LOOP 
  GET username
  IF username == ""
    PRINT msg_invalid_username
  ELSE
    PRINT msg_personal_welcome (with username)
    BREAK
LOOP END

LOOP # main loop
  LOOP
  GET loan_amount
  valid_loan_amount?(loan_amount)
    IF true
        BREAK
    ELSE
        PRINT msg_invalid_loan_amount
  LOOP END

  PRINT msg_loan_amount(with loan_amount)

  LOOP
  GET apr_percent
  valid_apr_percent?(apr_percent)
    IF true
        BREAK
    ELSE
        PRINT msg_invalid_apr_percent
  LOOP END

  PRINT msg_apr_percent(with apr_percent)

  apr_percent_to_decimal(apr_percent)
  apr_decimal_to_mir(apr_decimal)

  PRINT msg_mir(with mir)

  LOOP
  GET duration_year
  valid_duration_year?(duration_year)
    IF true
        BREAK
    ELSE
        PRINT msg_invalid_duration_year
  LOOP END

  PRINT msg_duration_year(with duration_year)

  duration_year_to_month(duration_year)

  PRINT msg_duration_month(with duration_month)

  monthly_payment(loan_amount, mir, duration_month)

  PRINT result (with loan_amount, mir, duration_month, monthly_payment)

  PRINT msg_again?
  GET again?
  IF again? == false
    BREAK
LOOP END # main loop end

PRINT msg_thank_you
