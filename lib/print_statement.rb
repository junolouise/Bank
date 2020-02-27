# frozen_string_literal: true

class PrintStatement
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def print_statement
    'date || credit || debit || balance'
  end
end
