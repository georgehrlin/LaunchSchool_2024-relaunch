require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang=LANGUAGE)
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  Integer(input) rescue false
end

def float?(input)
  Float(input) rescue false
end

def operation_to_message(op)
  msg = case op
        when '1'
          'adding'
        when '2'
          'subtracting'
        when '3'
          'multiplying'
        when '4'
          'dividing'
        end

  "I'm #{msg}"
end

prompt(messages("welcome"))

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(messages("invalid_name"))
  else
    break
  end
end

prompt(format((messages("hi")), name: name))

loop do # main loop
  number1 = nil

  loop do
    prompt(messages("first_number"))
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt(messages("invalid_number"))
    end
  end

  number2 = nil

  loop do
    prompt(messages("second_number"))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages("invalid_number"))
    end
  end

=begin
  operator_prompt = <<-MSG
What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
=end

  prompt(messages("operator_prompt"))

  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt(
    format(
      messages("calculating"),
      operation: operation_to_message(operator)
    )
  )

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt(format(messages("display_result"), result: result))

  prompt(messages("another_calculation"))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages("good_bye"))
