class B < ActiveRecord::Migration[5.2]
  def change
    remove_column:books,:number,:integer
  end
end
