class Invoice < ApplicationRecord
  belongs_to :transaction_payment , foreign_key: "transaction_id", class_name: "Transaction"
  belongs_to :food
  belongs_to :user
end
