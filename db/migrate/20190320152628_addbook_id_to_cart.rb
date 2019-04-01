class AddbookIdToCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :book_id, :string, after: :customer_id
  end
end
