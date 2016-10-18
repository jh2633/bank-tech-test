require_relative "balance"

class Bank


def initialize(depo=" ")
  @book = Balance_book.new(depo)
  return @book
end


def deposit(credit)
  @book.deposit(credit)
end

def withdraw(debit)
  @book.withdraw(debit)
end


def balance_book
  @book.print
end

private

end
