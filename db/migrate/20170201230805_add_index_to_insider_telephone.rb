class AddIndexToInsiderTelephone < ActiveRecord::Migration[5.0]
  def change
  	add_index :insiders, :telephone, unique: true
  end
end
