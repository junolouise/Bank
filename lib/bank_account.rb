# frozen_string_literal: true

class BankAccount
  attr_reader :balance, :transaction, :bank_statement

  def initialize(bank_statement = BankStatement.new)
    @balance = 0
    @transaction = []
    @bank_statement = bank_statement
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
