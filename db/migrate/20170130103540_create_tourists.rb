class CreateTourists < ActiveRecord::Migration[5.0]
  def change
    create_table :tourists do |t|
      t.string :fullname
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
