class AddColumnCart < ActiveRecord::Migration[5.2]
  def change
    add_column :carts, :customer_id, :string
    add_column :carts, :book_id, :string
  end

end
