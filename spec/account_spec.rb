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

  it 'adds deposit details to the record of deposits and withrawals' do
    account.deposit(10)
    expect(account.record.transactions[0][:date]).to eq(
      Time.now.strftime('%m/%d/%Y')
    )
    expect(account.record.transactions[0][:credit]).to eq(10)
    expect(account.record.transactions[0][:debit]).to eq(0)
    expect(account.record.transactions[0][:balance]).to eq(10)
  end

  it 'reduces the balance by the correct amount after a withdrawal' do
    account.withdraw(10)
    expect(account.balance.amount).to eq(-10)
  end

  it 'adds withdrawal details to the record of deposits and withdrawals' do
    account.withdraw(50)
    expect(account.record.transactions[0][:date]).to eq(
      Time.now.strftime('%m/%d/%Y')
    )
    expect(account.record.transactions[0][:credit]).to eq(0)
    expect(account.record.transactions[0][:debit]).to eq(50)
    expect(account.record.transactions[0][:balance]).to eq(-50)
  end
end
