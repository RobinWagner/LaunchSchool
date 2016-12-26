# Calculator

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
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
end

def second_loop
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
end

def operator_loop
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number1 = ''
  first_loop()

  number2 = ''
  second_loop()

  operator_prompt = <<-MSG
    What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  operator_loop

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1' then number1.to_f() + number2.to_f()
           when '2' then number1.to_f() - number2.to_f()
           when '3' then number1.to_f() * number2.to_f()
           when '4' then number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")
