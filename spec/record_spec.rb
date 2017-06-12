require 'record'

describe Record do
  let(:record) { described_class.new }

  it 'initializes with an empty transactions array' do
    expect(record.transactions).to be_kind_of(Array)
    expect(record.transactions.length).to eq(0)
  end

  it 'stores a date, deposit amount, withdrawal amount and current balance for all transactions' do
    record.store('10/06/2017', 10, 0, 100)
    expect(record.transactions[0].date).to eq('10/06/2017')
    expect(record.transactions[0].credit).to eq(10)
    expect(record.transactions[0].debit).to eq(0)
    expect(record.transactions[0].balance).to eq(100)
  end

  it 'correctly prints an account statement to STDOUT'
end
