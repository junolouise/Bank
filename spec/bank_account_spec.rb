# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  it 'starts with a balance of 0' do
    expect(subject.balance).to eq(0)
  end

  it 'depositing 1 increases balance by 1' do
    subject.deposit(1)
    expect(subject.balance).to eq(1)
  end
end
