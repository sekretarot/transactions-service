class TransactionsController < ApplicationController

  def account_transactions
    transactions = TransactionsStorage.instance.get_account_transactions(params[:account_number])
    render json: transactions.to_json
  end

  def create
    transaction = TransactionsStorage.instance.create_account_transaction!(params[:account_number], params[:amount])
    render json: transaction.to_json if transaction
  end

end