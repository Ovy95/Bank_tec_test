class Bank 
  attr_reader :balance
  def initialize balance = 0
    @balance = balance 
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    transactions_history(amount, " ")
  end

  def withdraw(amount)
    fail 'Insufficient funds available' if amount > @balance
    @balance -= amount
    transactions_history(amount, " ")
  end 

  def print_statement
    statement_header.each do |state|
      puts state
    end
  end

  private
  def transactions_history(deposit, withdraw)
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << ("#{date} ||  #{deposit}   #{withdraw} ||  #{@balance} ")
  end  

  def statement_header
    @transactions.reverse.insert(0, "date || credit || debit || balance")
  end
end
