require "bank"

describe Bank do 


  it  "Returns the balance of zero" do 
    bank = Bank.new
    expect(bank.balance).to eq 0
  end 

end


