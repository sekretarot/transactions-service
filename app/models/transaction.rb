class Transaction
  attr_accessor :id, :amount, :account_number

  def initialize(init_hash)
    @id = init_hash[:id] || random_transaction_id
    @amount = init_hash[:amount].to_i
    @account_number = init_hash[:account_number].to_i
  end

  private

  def random_transaction_id
    SecureRandom.hex
  end

end