class Bank


def initialize(depo=" ")
  @balance = 0
  @book = [[Time.new.strftime("%d/%m/%y"), depo," ", @balance]]
  return @book
end


def deposit(credit)
  @balance += credit
  @book.push([Time.new.strftime("%d/%m/%y"), credit," ", @balance])
  return @balance
end

def withdraw(debit)
  @balance -= debit
  @book.push([Time.new.strftime("%d/%m/%y"), " ", debit, @balance])
  return @balance
end


def balance_book
    puts "date || credit || debit || balance"
    @book.each do |x|
      puts x.join(" || ")
    end
end

private
attr_reader :balance

end


#
#
# 14/01/2012 ||  500.00 || || 2500.00
# 13/01/2012 || 2000.00 || || 3000.00
# 10/01/2012 || 1000.00 || || 1000.00
