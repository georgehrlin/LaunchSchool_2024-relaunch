require 'yaml'
require 'pry'

MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')

def prompt(msg)
  puts("=> #{msg}")
end

def messages(key, lang = 'en')
  MESSAGES[lang][key]
end

def integer?(num)
  Integer(num) rescue false
end

def float?(num)
  Float(num) rescue false
end

def valid_loan_amount?(num)
  (integer?(num) || float?(num)) && num.to_f.positive?
end

def valid_apr_percent?(apr)
  float?(apr) && apr.to_f.positive? && (apr.to_f < 100)
end

def valid_loan_duration?(loan_duration_month)
  integer?(loan_duration_month) && loan_duration_month.to_f.positive?
end

def monthly_payment(loan_amount, mir, loan_duration_month)
  loan_amount * (mir / (1 - ((1 + mir)**-loan_duration_month)))
end

prompt messages('welcome')

loop do
  username = gets.chomp
  if username.empty? || username == ' '
    prompt(messages('invalid_username'))
  else
    prompt(format(messages('greeting_personal'), username: username))
    break
  end
end

loop do # main loop
  loan_amount = nil
  loop do # loop for loan amount
    prompt(messages('ask_loan_amount'))
    loan_amount = gets.chomp

    if valid_loan_amount?(loan_amount)
      prompt(
        format(
          messages('valid_loan_amount'), loan_amount: loan_amount.to_f
          )
          )
      break
    else
      prompt(messages('invalid_loan_amount'))
    end
  end

  apr_percent = nil
  loop do # loop for apr
    prompt(messages('ask_apr'))
    apr_percent = gets.chomp

    if valid_apr_percent?(apr_percent)
      prompt(format(messages('valid_apr'), apr_percent: apr_percent))
      break
    else
      prompt(messages('invalid_apr'))
    end
  end

  mir = apr_percent.to_f / 100 / 12
  prompt(
    format(
      messages('display_mir'),
      apr_percent: apr_percent,
      mir: mir * 100
      )
      )

  loan_duration_year = nil
  loan_duration_month = nil
  loop do # loop for loan duration
    prompt(messages('ask_loan_duration'))
    loan_duration_year = gets.chomp

    if valid_loan_duration?(loan_duration_year)
      loan_duration_month = loan_duration_year.to_i * 12
      prompt(
        format(
          messages('display_loan_duration'),
          loan_duration_year: loan_duration_year,
          loan_duration_month: loan_duration_month
          )
          )
      break
    else
      prompt(messages('invalid_loan_duration'))
    end
  end

  monthly_payment = monthly_payment(
                      loan_amount.to_f,
                      mir,
                      loan_duration_month.to_i
                      )

  prompt(
    format(
      messages('monthly_payment'),
      loan_amount: loan_amount,
      apr_percent: apr_percent,
      loan_duration_year: loan_duration_year,
      monthly_payment: monthly_payment
      )
      )

  prompt(messages('run_again'))

  again = gets.chomp.downcase

  break unless again.start_with?('y')
end

prompt(messages('farewell'))
