class Bank 
  attr_reader :balance
  def initialize balance = 0
    @balance = balance 
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    transactions_history(amount, " ")
    "Money added"
  end

  def withdraw(amount)
    @balance -= amount
    transactions_history(amount, " ")
  end 

  def print_statement
   statement = @transactions.reverse.insert(0, "date || credit || debit || balance")
  end

  private
  def transactions_history(deposit, withdraw)
    date = Time.now.strftime("%d/%m/%Y")
    @transactions << ("#{date} ||  #{deposit}   #{withdraw} ||  #{@balance} ")
  end  
end
