class Transaction
  attr_accessor :id, :amount, :account_number

  def initialize(init_json)
    @id = init_json[:id] || random_transaction_id
    @amount = init_json[:amount].to_i
    @account_number = init_json[:account_number].to_i
  end

  private

  def random_transaction_id
    SecureRandom.hex
  end

end