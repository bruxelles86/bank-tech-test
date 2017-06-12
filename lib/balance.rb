# Balances record current balance, which can be incremented or reduced
class Balance
  attr_reader :amount

  def initialize
    @amount = 0
  end

  def increment(deposit_amount)
    @amount += deposit_amount
  end

  def reduce(withdrawal_amount)
    @amount -= withdrawal_amount
  end
end
