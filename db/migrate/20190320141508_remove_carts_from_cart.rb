class RemoveCartsFromCart < ActiveRecord::Migration[5.2]
  def change
    remove_column :carts, :carts, :string
  end
end
