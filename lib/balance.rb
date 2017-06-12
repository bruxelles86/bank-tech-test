# Balances record current balance, which can be incremented or reduced
class Balance
  attr_reader :amount

  def initialize
    @amount = 0.00
  end

  def increment(deposit_amount)
    @amount += deposit_amount.to_f
  end

  def reduce(withdrawal_amount)
    @amount -= withdrawal_amount.to_f
  end
end
