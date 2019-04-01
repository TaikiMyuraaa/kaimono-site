class RenameColumnOfBook < ActiveRecord::Migration[5.2]
  def change
    rename_column:books, :book_type, :category
  end
end
