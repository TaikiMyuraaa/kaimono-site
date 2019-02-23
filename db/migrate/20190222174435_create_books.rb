class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.integer :price
      t.text :publisher

      t.timestamps
    end
  end
end
