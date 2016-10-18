require 'rspec'
require './balance.rb'

describe Balance_book do

  subject(:balance_book) {described_class.new(" ")}
  subject(:balance_book2) {described_class.new(50)}

  it 'allows you to deposit money when created' do
    expect(balance_book2.print).to eq([[Time.new.strftime("%d/%m/%y"), 50, " ", 50]])
  end

  it 'has an initial balance of 0' do
    expect(balance_book.withdraw(0)).to eq(0)
  end

  it 'allows you to deposit money' do
    expect(balance_book.deposit(100)).to eq(100)
  end

  it 'allows you to withdraw money' do
    balance_book.deposit(100)
    expect(balance_book.withdraw(50)).to eq(50)
  end

  it 'shows prints out your balance' do
    balance_book.deposit(50)
    expect(balance_book.print).to eq([[Time.new.strftime("%d/%m/%y"), " ", " ", 0],[Time.new.strftime("%d/%m/%y"), 50, " ", 50]])
  end



end
