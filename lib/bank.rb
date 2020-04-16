class Bank 
  attr_reader :balance
  def initialize balance = 0
    @balance = balance 
    @transaction = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end 

  def print_statement
    "date || credit || debit || balance"
  end


end