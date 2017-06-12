require 'account'

describe Account do
  let(:account) { described_class.new(Balance, Record) }

  it 'has a balance' do
    expect(account.balance).to be_kind_of(Balance)
  end

  it 'has a record of deposits and withdrawals' do
    expect(account.record).to be_kind_of(Record)
  end

  it 'increments the balance by the correct amount after a deposit' do
    account.deposit(10)
    expect(account.balance.amount).to eq(10)
  end

  it 'adds deposit details to the record of deposits and withrawals'

  it 'reduces the balance by the correct amount after a withdrawal'

  it 'adds withdrawal details to the record of deposits and withdrawals'
end
