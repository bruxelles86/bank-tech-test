require 'account'

describe Account do
  let(:account) { described_class.new }

  it 'has a balance' do
    expect(account.balance).to be_kind_of(Balance)
  end

  it 'has a record of deposits and withdrawals'

  it 'increments the balance by the correct amount after a deposit'

  it 'adds deposit details to the record of deposits and withrawals'

  it 'reduces the balance by the correct amount after a withdrawal'

  it 'adds withdrawal details to the record of deposits and withdrawals'
end
