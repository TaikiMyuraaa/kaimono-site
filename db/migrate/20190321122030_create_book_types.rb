class CreateBookTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :book_types do |t|
      t.string :type_cd
      t.string :type_name

      t.timestamps
    end
  end
end
