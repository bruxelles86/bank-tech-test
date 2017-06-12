require 'record'

describe Record do
  let(:record) { described_class.new }

  it 'initializes with an empty transactions array' do
    expect(record.transactions).to be_kind_of(Array)
    expect(record.transactions.length).to eq(0)
  end

  it 'correctly prints an account statement to STDOUT'
end
