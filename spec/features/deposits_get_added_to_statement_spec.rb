require 'atm'

describe Atm do
  it 'deposit is seen on the statement' do
    user = User.new
    user.deposit(20)
    @balance = 20
    @deposit_statement = [$time, '||', '20.00', '|| ||', format('%.2f', $balance)]
    expect(subject.print_statement).to include(@deposit_statement)
  end
end
