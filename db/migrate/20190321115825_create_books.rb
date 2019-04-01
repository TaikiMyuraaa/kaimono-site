class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :product_id, null:false
      t.string :aouthor_id, null:false
      t.string :publisher_id, null:false
      t.string :title, null:false
      t.integer :price, null:false

      t.timestamps
    end
  end
end
