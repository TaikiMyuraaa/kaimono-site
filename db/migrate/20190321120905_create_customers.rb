class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customer_id
      t.string :name
      t.string :kana
      t.string :mail

      t.timestamps
    end
  end
end
