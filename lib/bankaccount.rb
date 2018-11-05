
class Bankaccount
  attr_reader :balance, :statement, :deposit_statement



def initialize
  @balance = 0
  @beginning_of_statement = ["date || credit || debit || balance" ]
  @statement = []
  @overall_statement = []
end

def deposit(amount)
  @time = Time.now.strftime("%d/%m/%Y")
  @balance = @balance + amount
  @statement.push([@time, "||", amount.to_i, "|| ||", @balance.to_i])

end


def withdraw(amount)
  @balance = @balance - amount
  @time = Time.now.strftime("%d/%m/%Y")
  @statement.push([@time, "|| ||", amount.to_i, "||", @balance.to_i])
end

def print_statement
  @ordered_statement = @statement.reverse!
  @ordered_statement.unshift(@beginning_of_statement)
  @ordered_statement.each do |statement|
    print "#{statement.join(" ")}\n"

end

end
end
