class AddCharactershipname < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :charactershipname, :string
  end
end
