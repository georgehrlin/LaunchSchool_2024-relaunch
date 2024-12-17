require 'yaml'

MESSAGES = YAML.load_file('mortgage_car_loan_calculator_messages.yml')
LANGUAGE = 'en'

def prompt(msg)
  puts("=> #{msg}")
end

def messages(key, lang = LANGUAGE)
  MESSAGES[lang][key]
end

def prompt_msg(key)
  prompt(messages(key))
end

def prompt_format_msg(key, *values)
  message = messages(key)

  if message.include?('%{')
    # Use named placeholders
    formatted_msg = message % values.first
  else
    # Use positional placeholders
    formatted_msg = format(message, *values)
  end

  prompt(formatted_msg)
end

def get_username
  username = nil
  loop do
    username = gets.chomp
    break if valid_username?(username)
    prompt_msg 'invalid_username'
  end

  username
end

def valid_username?(username)
  !(username.strip.empty?)
end

def get_loan_amount
  loan_amount = nil
  loop do
    prompt_msg 'ask_loan_amount'
    loan_amount = gets.chomp
    break if valid_loan_amount?(loan_amount)
    prompt_msg 'invalid_loan_amount'
  end

  loan_amount
end

def valid_loan_amount?(num)
  Float(num.to_f) && num.to_f.positive?
end

def get_apr_percent
  apr_percent = nil
  loop do
    prompt_msg 'ask_apr'
    apr_percent = gets.chomp
    break if valid_apr_percent?(apr_percent)
    prompt_msg 'invalid_apr'
  end

  apr_percent
end

def valid_apr_percent?(apr_percent)
  Float(apr_percent.to_f) &&
    apr_percent.to_f.positive? &&
    apr_percent.to_f < 100
end

def get_mir(apr_percent)
  apr_percent.to_f / 100 / 12
end

def get_loan_duration_year
  loan_duration_year = nil
  loop do
    prompt_msg 'ask_loan_duration'
    loan_duration_year = gets.chomp
    break if valid_loan_duration?(loan_duration_year)
    prompt_msg 'invalid_loan_duration'
  end

  loan_duration_year
end

def integer_str?(num)
  Integer(num) rescue false
end

def valid_loan_duration?(loan_duration_year)
  integer_str?(loan_duration_year) && loan_duration_year.to_i > 0
end

def get_loan_duration_month(loan_duration_year)
  loan_duration_year.to_i * 12
end

def get_monthly_payment(loan_amount, mir, loan_duration_month)
  loan_amount.to_f * (mir / (1 - ((1 + mir)**(-loan_duration_month))))
end

def run_again?(input)
  input.downcase.start_with?('y')
end

prompt_msg 'welcome'
username = get_username
prompt_format_msg('greeting_personal', username: username)

loop do # main loop
  loan_amount = get_loan_amount
  prompt_format_msg('valid_loan_amount', loan_amount.to_f)

  apr_percent = get_apr_percent
  prompt_format_msg('valid_apr', apr_percent: apr_percent)

  mir = get_mir(apr_percent)
  prompt_format_msg('display_mir', apr_percent: apr_percent, mir: mir)

  loan_duration_year = get_loan_duration_year
  loan_duration_month = get_loan_duration_month(loan_duration_year)
  prompt_format_msg('display_loan_duration',
                    loan_duration_year: loan_duration_year,
                    loan_duration_month: loan_duration_month)

  monthly_payment = get_monthly_payment(loan_amount,
                                        mir,
                                        loan_duration_month)

  prompt_format_msg('monthly_payment',
                    loan_amount,
                    apr_percent,
                    loan_duration_year,
                    monthly_payment)

  prompt_msg 'run_again'
  run_again = gets.chomp
  break unless run_again?(run_again)
end

prompt_msg 'farewell'
