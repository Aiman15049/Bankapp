require 'bankaccount'

describe Bankaccount do
  it 'has a balance of zero' do
    expect(subject.balance).to eq(0)
  end

  describe '#withdraw' do
    it { is_expected.to respond_to(:withdraw).with(1).argument }

    it 'withdraws from the balance' do
     expect{ subject.withdraw 1 }.to change{ subject.balance }.by -1
    end

    it 'gets added to the statement with a timestamp and balance' do
      @time = Time.now.strftime("%d/%m/%Y")
      subject.deposit(50)
      subject.withdraw(20)
      @balance = 30
      @overall_statement = [@time, "|| ||", 20, "||", @balance]
      receipt = subject.print_statement
      expect(receipt).to include(@overall_statement)
    end
  end

  describe '#deposit' do
    it { is_expected.to respond_to(:deposit).with(1).argument }

    it 'can increase the balance' do
      expect{ subject.deposit 1 }.to change{ subject.balance }.by 1
    end

    it 'gets added to the statement with a timestamp and balance' do
      @time = Time.now.strftime("%d/%m/%Y")
      subject.deposit(20)
      @balance = 20
      @deposit_statement = [@time, "||", 20, "|| ||", @balance]
      receipt = subject.print_statement
      expect(receipt).to include(@deposit_statement)
    end
  end
end
