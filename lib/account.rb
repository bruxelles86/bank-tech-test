class Account

  attr_reader :balance, :record

  def initialize(balance, record)
    @balance = balance.new
    @record = record.new
  end

  def deposit(deposit_amount)
    @balance.increment(deposit_amount)
    @record.store(Time.now.strftime("%m/%d/%Y"), deposit_amount, 0, @balance.amount)
  end

  def withdraw(withdrawal_amount)
    @balance.reduce(withdrawal_amount)
  end
end
