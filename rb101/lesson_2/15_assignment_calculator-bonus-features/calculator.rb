require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

=begin
# Original code
def valid_number?(num)
  num.to_i() != 0
end
=end

=begin
# Q1 My attempt, but also Official Option 1
def valid_number?(num)
  num.to_i.to_s == num
end
=end

=begin
# Q1 Offical Option 2
def integer?(input)
  /^-?\d+$/.match?(input)
end
=end

# Q1 Official Option 3
def integer?(input)
  Integer(input) rescue false
end

=begin
# Q2 My attempt
def valid_number?(input)
  (input.to_i.to_s == input) || (input.to_f.to_s == input)
end
=end


# Q2 Official Option 1
def valid_number?(input)
  integer?(input) || float?(input)
end

=begin
def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  input.to_f.to_s == input
end
=end

=begin
# Q2 Official Option 2
def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end
=end

# Q2 Official Option 3
def float?(input)
  Float(input) rescue false
end

=begin
# Q3 Original Code
def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end
=end

# Q3 My Attempt
def operation_to_message(op)
  msg = case op
        when '1'
          'adding'
        when '2'
          'subtracting'
        when '3'
          'sultiplying'
        when '4'
          'sividing'
        end

  return "I'm #{msg}"
end


prompt("Welcome to Claculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to user a valid user name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = nil

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number!")
    end
  end

  number2 = nil

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number!")
    end
  end

  operator_prompt = <<-MSG
What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = nil
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

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

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using calculator. Good bye!")
