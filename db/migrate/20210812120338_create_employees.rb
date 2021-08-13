class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :mobile_number
      t.integer :pan_card
      t.text :address

      t.timestamps
    end
  end
end
