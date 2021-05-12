=begin

Use the formula
m = p * (j / (1 - (1 + j)** (-n)))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

START
SET the loan_amount to NIL
SET the APR(annual percentage rate) to NIL
SET the loan_duration to NIL

GET the loan_amount
GET the APR(annual percentage rate)
GET the loan_duration


PRINT the loan information
=end


def valid_number(num)
  num.to_i
end 


def prompt(message)
  puts("=> #{message}")
end

prompt("Welcome to the loan calculator. What is your name?")
  name = ''
  loop do
    name = gets.chomp
    if name.empty?()
      prompt("Hi #{name}")
    else
      break
    end
  end

prompt("What is the loan amount?")
  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if valid_number(loan_amount)
      break
    else
    prompt("hmm... please enter a valid loan amount")
    end
  end

prompt("What is the annual percentage rate?")
  apr = ''
  loop do
    apr = gets.chomp

    if apr.empty?() || apr.to_f < 0
      prompt("hmm... please enter a valid annual percentage rate.")
    else
      break
    end
  end

prompt("What is the duration of the loan in years?")
  loan_duration = ''
  loop do
    loan_duration = gets.chomp
    if loan_duration.to_i < 0
      prompt("Please enter a valid loan duration")
    else
      break
    end
  end

  annual = apr.to_f / 100
  monthly_interest = annual / 12
  month_duration = loan_duration.to_i * 12

  month_payment_int = loan_amount.to_f * (monthly_interest / (1- (1 + monthly_interest)**(-month_duration)))

prompt("Your monthly payment with interest will be #{month_payment_int}")

