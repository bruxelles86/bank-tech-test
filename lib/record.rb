class Record

  attr_reader :transactions

  def initialize
    @transactions =[]
  end

  def store(date, credit_amount, debit_amount, new_balance)
    @transactions.push({date: date, credit: credit_amount, debit: debit_amount, balance: new_balance })
  end

  def print_statement
    puts "Date || Credit || Debit || Balance"
    
  end
end
