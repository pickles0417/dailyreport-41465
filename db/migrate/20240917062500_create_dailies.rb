class CreateDailies < ActiveRecord::Migration[7.0]
  def change
    create_table :dailies do |t|
      t.string :meet_year,   null: false
      t.string :meet_month,  null: false
      t.string :meet_day,    null: false
      t.string :manager_name
      t.integer :meal_id,    null: false
      t.text :text,          null: false
      t.string :competitor

      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
