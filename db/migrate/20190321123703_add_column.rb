class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column:books,:book_type,:string, after: :price
  end
end
