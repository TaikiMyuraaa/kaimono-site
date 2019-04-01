class RenameColumnOfCustomer < ActiveRecord::Migration[5.2]
  def change
    rename_column :customers,:name,:customer_name
  end
end
