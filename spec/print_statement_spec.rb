# frozen_string_literal: true

require 'print_statement'

describe PrintStatement do
  it 'contains no transactions upon initialization' do
    expect(subject.transactions).to be_empty
  end
end
