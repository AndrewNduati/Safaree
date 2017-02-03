class CreateTours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.belongs_to :tourist, index: true
      t.belongs_to :insider, index: true
      t.text :activities
      t.decimal :rating

      t.timestamps
    end
  end
end
