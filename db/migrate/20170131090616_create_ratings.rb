class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.belongs_to :tour, index: true
      t.belongs_to :tourist, index: true
      t.decimal :rating

      t.timestamps
    end
  end
end
