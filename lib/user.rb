require_relative 'atm'
# class for user
class User
  def initialize(atm: Atm.new)
    @balance = 0
    @atm = atm
  end

  attr_reader :balance

  def deposit(number)
    @balance += number
    @atm.add_deposit_to_statement(number)
  end

  def withdraw(number)
    @balance -= number
    @atm.add_withdrawal_to_statement(number)
   end

   def print_statement
     @atm.print_statement
   end
end
