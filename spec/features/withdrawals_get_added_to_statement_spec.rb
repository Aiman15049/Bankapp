require 'atm'

describe Atm do
  it 'withdrawal is seen on the statement' do
    user = User.new
    user.deposit(40)
    user.withdraw(20)
    $balance = 20
    @deposit_statement = [$time, '|| ||', '20.00', '||', format('%.2f', $balance)]
    expect(subject.print_statement).to include(@deposit_statement)
  end
end
