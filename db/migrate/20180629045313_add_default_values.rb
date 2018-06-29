class AddDefaultValues < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users, :characterfirstname, 'Able'
    change_column_default :users, :characterlastname, 'Antigua'
    change_column_default :users, :characterseason, 'STERLING'
    change_column_default :users, :charactershipname, 'shipnamemutiny'
  end
end
