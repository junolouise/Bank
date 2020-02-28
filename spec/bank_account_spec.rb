# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  it 'starts with a balance of 0' do
    expect(subject.balance).to eq(0)
  end

  it 'has access to bank statement' do
    expect(subject.bank_statement).to be_an_instance_of(BankStatement)
  end

  it 'returns the transaction' do
    subject.deposit(50)
    expect(subject.add_transaction_to_statement).to eq({credit: 50, balance: 50})
  end

  describe '#deposit' do
    it 'depositing 1 increases balance by 1' do
      subject.deposit(1)
      expect(subject.balance).to eq(1)
    end

    it 'deposits multiple times and correctly adds balance' do
      subject.deposit(10)
      subject.deposit(1)
      expect(subject.balance).to eq(11)
    end

    it 'adds a transaction to @transaction when making a deposit' do
      subject.deposit(10)
      expect(subject.transaction).to include({ credit: 10, balance: 10 })
    end
  end

  describe '#withdrawal' do
    it 'withdrawal by 2 decreases balance by 2' do
      subject.deposit(10)
      subject.withdrawal(2)
      expect(subject.balance).to eq(8)
    end

    it 'withdrawal multiple times and correctly minuses balance' do
      subject.deposit(10)
      subject.withdrawal(1)
      subject.withdrawal(3)
      expect(subject.balance).to eq(6)
    end

    it 'adds a transaction to @transaction when making a withdrawal' do
      subject.deposit(20)
      subject.withdrawal(5)
      expect(subject.transaction).to include({ debit: 5, balance: 15 })
    end
  end

  describe '#add_transaction_to_statement' do
    it 'adds each transaction to the statement' do
      subject.deposit(50)
      subject.add_transaction_to_statement
      expect(subject.transaction).to be_empty
    end
  end
end
