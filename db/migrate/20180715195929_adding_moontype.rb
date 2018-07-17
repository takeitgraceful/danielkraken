class AddingMoontype < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :moontype, :string
  end
end
