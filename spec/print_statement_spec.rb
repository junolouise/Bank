# frozen_string_literal: true

require 'print_statement'

describe BankStatement do
  it 'contains no transactions upon initialization' do
    expect(subject.transactions).to be_empty
  end

  it 'prints blank statement if there are no transactions' do
    expect(subject.print_statement).to eq('date || credit || debit || balance')
  end
end
