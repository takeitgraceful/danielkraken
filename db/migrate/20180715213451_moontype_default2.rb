class MoontypeDefault2 < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:users, :moontype, 'plainwhite')
  end
end
