class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
    	
    	t.belongs_to :tour,    index: true
    	t.belongs_to :tourist, index: true
    	t.belongs_to :insider, index: true
    	t.decimal 	 :amount
    	t.boolean    :complete, null: false
    	t.timestamps
    end
  end
end
