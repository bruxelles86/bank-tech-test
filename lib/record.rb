# Records log transactions and prints a statement of all transactions
class Record
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def store(date, credit_amount, debit_amount, new_balance)
    @transactions.push(date: date, credit: credit_amount,
                       debit: debit_amount, balance: new_balance)
  end

  def print_statement
    puts 'Date || Credit || Debit || Balance'
    @transactions.each do |row|
      if row[:credit] > 0
        puts "#{row[:date]} || #{'%.2f' % row[:credit]} ||  || #{'%.2f' % row[:balance]}"
      elsif row[:debit] > 0
        puts "#{row[:date]} ||  || #{'%.2f' % row[:debit]} || #{'%.2f' % row[:balance]}"
      end
    end
  end
end
