class A < ActiveRecord::Migration[5.2]
  def change
    add_column:books,:number,:integer
  end
end
