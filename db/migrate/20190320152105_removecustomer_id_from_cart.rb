class RemovecustomerIdFromCart < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :customer_id, :string
    remove_column :carts, :book_id, :string
  end
end
