class Balance_book

def initialize(depo)
  @balance = depo.to_i
  @book = [[Time.new.strftime("%d/%m/%y"), depo," ", @balance]]
end

def deposit(amount)
  @balance += amount
  @book.push([Time.new.strftime("%d/%m/%y"), amount," ", @balance])
  return @balance
end

def withdraw(amount)
  @balance -= amount
  @book.push([Time.new.strftime("%d/%m/%y"), " ", amount, @balance])
  return @balance
end

def print
  puts "date || credit || debit || balance"
  @book.each {|x| puts x}
end



end
