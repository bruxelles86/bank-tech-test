require 'record'

describe Record do
  let(:record) { described_class.new }

  it 'initializes with an empty transactions array' do
    expect(record.transactions).to be_kind_of(Array)
    expect(record.transactions.length).to eq(0)
  end

  it 'stores correct details for deposits' do
    record.store('10/06/2017', 10, 0, 100)
    expect(record.transactions[0][:date]).to eq('10/06/2017')
    expect(record.transactions[0][:credit]).to eq(10)
    expect(record.transactions[0][:debit]).to eq(0)
    expect(record.transactions[0][:balance]).to eq(100)
  end

  it 'stores correct details for withdrawals' do
    record.store('10/06/2017', 0, 100, 0)
    expect(record.transactions[0][:date]).to eq('10/06/2017')
    expect(record.transactions[0][:credit]).to eq(0)
    expect(record.transactions[0][:debit]).to eq(100)
    expect(record.transactions[0][:balance]).to eq(0)
  end

  it 'correctly prints account statement deposit details to STDOUT' do
    record.store('10/06/2017', 10, 0, 100)
    expect { record.print_statement }.to output(
      'Date || Credit || Debit || Balance'\
    "\n10/06/2017 || 10.00 ||  || 100.00\n"
    ).to_stdout
  end

  it 'correctly prints account statement withdrawal details to STDOUT' do
    record.store('10/06/2017', 0, 50, 200)
    expect { record.print_statement }.to output(
      'Date || Credit || Debit || Balance'\
    "\n10/06/2017 ||  || 50.00 || 200.00\n"
    ).to_stdout
  end
end
