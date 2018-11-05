
class Bankaccount
  attr_reader :balance, :statement, :statement_headlines

  def initialize
    @balance = 0
    @statement_headlines = ["date || credit || debit || balance" ]
    @statement = []
    @time = Time.now.strftime("%d/%m/%Y")
  end

  def deposit(amount)
    @balance = @balance + amount
    @statement.push([@time, "||", amount.to_i, "|| ||", @balance.to_i])
  end

  def withdraw(amount)
    @balance = @balance - amount
    @statement.push([@time, "|| ||", amount.to_i, "||", @balance.to_i])
  end

  def print_statement
    @ordered_statement = @statement.reverse!
    @ordered_statement.unshift(@statement_headlines)
    @ordered_statement.each do |statement|
      print "#{statement.join(" ")}\n"
    end
  end

end
