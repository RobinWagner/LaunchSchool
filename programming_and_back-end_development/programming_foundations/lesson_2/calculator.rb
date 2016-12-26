# Calculator

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def operation_to_message(op)
  word = case op
         when '1' then 'Adding'
         when '2' then 'Subtracting'
         when '3' then 'Multiplying'
         when '4' then 'Dividing'
         end

  word
end

def first_loop
  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    if number?(number1)
      return number1
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
end

def second_loop
  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()

    if number?(number2)
      return number2
    else
      prompt(MESSAGES['invalid_number'])
    end
  end
end

def operator_loop
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      return operator
    else
      prompt(MESSAGES['choose_option'])
    end
  end
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  number1 = first_loop()

  number2 = ''
  number2 = second_loop()

  operator_prompt = <<-MSG
    What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  operator = operator_loop

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1' then number1.to_f() + number2.to_f()
           when '2' then number1.to_f() - number2.to_f()
           when '3' then number1.to_f() * number2.to_f()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt(MESSAGES['other_calculation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['thank_you'])
