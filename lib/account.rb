class Account

  attr_reader :balance, :record

  def initialize(balance, record)
    @balance = balance.new
    @record = record.new
  end

end
