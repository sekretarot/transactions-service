require 'singleton'
class TransactionsStorage
  include Singleton

  def initialize
    transactions_data = [{id: "TR3506988578", amount: 200, account_number: 3506988578},
                         {id: "TR3506988378", amount: 1460, account_number: 3506988378},
                         {id: "TR3506988532", amount: 3240, account_number: 3506988532},
                         {id: "TR3506988422", amount: 2100, account_number: 3506988422}]
    @transactions = transactions_data.map do |transaction_hash|
      Transaction.new(transaction_hash)
    end
  end

  def create_account_transaction!(account_number, amount)
    new_transaction = Transaction.new({amount: amount, account_number: account_number})
    @transactions << new_transaction
    new_transaction
  end

  def get_account_transactions(account_number)
    @transactions.select {|transaction| transaction.account_number == account_number.to_i}
  end

end