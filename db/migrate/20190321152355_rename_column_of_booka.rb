class RenameColumnOfBooka < ActiveRecord::Migration[5.2]
  def change
    rename_column:books, :category, :category_id
  end
end
