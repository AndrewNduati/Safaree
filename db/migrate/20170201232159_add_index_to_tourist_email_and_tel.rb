class AddIndexToTouristEmailAndTel < ActiveRecord::Migration[5.0]
  def change
  	add_index :tourists, :email, unique: true
  	add_index :tourists, :telephone, unique: true
  end
end
