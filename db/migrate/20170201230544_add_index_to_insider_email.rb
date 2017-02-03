class AddIndexToInsiderEmail < ActiveRecord::Migration[5.0]
  def change
  	add_index :insiders, :email, unique: true
  end
end
