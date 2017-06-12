class Balance

  attr_reader :amount

  def initialize
    @amount = 0
  end

  def increment(deposit_amount)
    @amount += deposit_amount
  end
end
