class AddCharacterseason < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :characterseason, :string
  end
end
