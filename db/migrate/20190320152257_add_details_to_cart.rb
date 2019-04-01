class AddDetailsToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :customer_id, :string, after: :id
    add_column :carts, :book_id, :string, after: :book_id
  end
end
