class CreateInsiders < ActiveRecord::Migration[5.0]
  def change
    create_table :insiders do |t|
      t.string :fullname
      t.string :national_id
      t.string :email
      t.string :telephone
      t.numeric :price

      t.timestamps
    end
  end
end
