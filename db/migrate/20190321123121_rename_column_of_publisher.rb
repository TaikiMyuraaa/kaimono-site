class RenameColumnOfPublisher < ActiveRecord::Migration[5.2]
  def change
    rename_column:publishers,:name,:publisher_name
  end
end
