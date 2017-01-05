class Transaction < ApplicationRecord
  has_many :invoices
  def get_transaction_by_id(id)
    Transaction.find(id)
  end
end
