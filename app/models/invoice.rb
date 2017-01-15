class Invoice < ApplicationRecord
  belongs_to :transaction_payment , foreign_key: "transaction_id", class_name: "Transaction"
  belongs_to :food
  belongs_to :user

  def get_invoices_by_user(user_id)
    Invoice.where(user_id: user_id).order(created_date: :desc)
  end

  def get_invoice_by_id(id)
    Invoice.find(id)
  end
end
