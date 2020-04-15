require "bank"

describe Bank do 
  let(:bank) {Bank.new}

  it "Returns the balance of zero" do 
    expect(bank.balance).to eq 0
  end 

  it "User can deposit 1000 to the account " do 
    bank.deposit(1000)
    expect(bank.balance).to eq 1000
  end

  it "User can withdraw 500 from the account" do
    bank.withdraw(500)
    expect(bank.balance).to eq -500
  end

end


