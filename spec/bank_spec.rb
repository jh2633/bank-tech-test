require 'rspec'
require './bank.rb'

describe Bank do

  subject(:bank) {described_class.new}
  subject(:bank2) {described_class.new(50)}

  it 'allows you to deposit money when created' do
    expect(bank2.balance_book).to eq([[Time.new.strftime("%d/%m/%y"), 50, " ", 0]])
  end

  it 'has an initial balance of 0' do
    expect(bank.withdraw(0)).to eq(0)
  end

  it 'allows you to deposit money' do
    expect(bank.deposit(100)).to eq(100)
  end

  it 'allows you to withdraw money' do
    bank.deposit(100)
    expect(bank.withdraw(50)).to eq(50)
  end

  it 'shows prints out your balance' do
    bank.deposit(50)
    expect(bank.balance_book).to eq([[Time.new.strftime("%d/%m/%y"), " ", " ", 0],[Time.new.strftime("%d/%m/%y"), 50, " ", 50]])
  end



end
