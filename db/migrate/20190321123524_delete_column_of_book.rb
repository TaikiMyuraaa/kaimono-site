class DeleteColumnOfBook < ActiveRecord::Migration[5.2]
  def change
    remove_column:books,:book_type
  end
end
