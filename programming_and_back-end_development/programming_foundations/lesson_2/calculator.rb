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
         when '1' then MESSAGES['de']['adding']
         when '2' then MESSAGES['de']['subtracting']
         when '3' then MESSAGES['de']['multiplying']
         when '4' then MESSAGES['de']['dividing']
         end

  word
end

def first_loop
  loop do
    prompt(MESSAGES['de']['first_number'])
    number1 = Kernel.gets().chomp()

    if number?(number1)
      return number1
    else
      prompt(MESSAGES['de']['invalid_number'])
    end
  end
end

def second_loop
  loop do
    prompt(MESSAGES['de']['second_number'])
    number2 = Kernel.gets().chomp()

    if number?(number2)
      return number2
    else
      prompt(MESSAGES['de']['invalid_number'])
    end
  end
end

def operator_loop
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      return operator
    else
      prompt(MESSAGES['de']['choose_option'])
    end
  end
end

prompt(MESSAGES['de']['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['de']['valid_name'])
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

  prompt(MESSAGES['de']['other_calculation'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['de']['thank_you'])
