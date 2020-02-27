# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :transactions
  

  def initialize
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << {credit: amount, balance: @balance}
  end

  def withdrawal(amount)
    @balance -= amount
  end
end
