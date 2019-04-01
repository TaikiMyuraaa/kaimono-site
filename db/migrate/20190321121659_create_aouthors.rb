class CreateAouthors < ActiveRecord::Migration[5.2]
  def change
    create_table :aouthors do |t|
      t.string :aouthor_id
      t.string :aouthor_name

      t.timestamps
    end
  end
end
