class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :customer_name,  null: false
      t.integer :category_id,   null: false
      t.string :postcode,       null: false
      t.integer :prefecture_id, null: false
      t.string :city,           null: false
      t.string :block,          null: false
      t.string :building
      t.string :phone_number,   null: false
      t.string :capacity,       null: false
      t.integer :contract_id,   null: false
      t.text :remarks_column
      t.timestamps
    end
  end
end
