require_relative 'user'
# class for ATM
class Atm

  def initialize
    @statement = []
    @statement_headlines = ['date || credit || debit || balance']
    @time = Time.now.strftime('%d/%m/%Y')

  end

  def add_withdrawal_to_statement(number)
    @statement.push([@time, '|| ||',
       format('%.2f', number), '||', format('%.2f', @balance)])
   end


  def add_deposit_to_statement(number)
    @statement.push([@time, '||',
       format('%.2f', number), '|| ||', format('%.2f', @balance)])
    @statement.join(' ')
  end


  def print_statement
    @ordered_statement = @statement.reverse!
    @ordered_statement.unshift(@statement_headlines)
    @ordered_statement.each do |statement|
      print "#{statement.join(' ')}\n"
    end
  end

  
end
