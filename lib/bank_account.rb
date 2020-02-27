# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :transaction, :print_statement

  def initialize(print_statement = PrintStatement.new)
    @balance = 0
    @transaction = []
    @print_statement = print_statement
  end

  def deposit(amount)
    @balance += amount
    @transaction << { credit: amount, balance: @balance }
  end

  def withdrawal(amount)
    @balance -= amount
    @transaction << { debit: amount, balance: @balance }
  end

  def add_transaction_to_statement
    @transaction.pop
  end
end
