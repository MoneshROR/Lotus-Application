class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :primary_number
      t.integer :alternate_number
      t.text :address
      t.integer :status

      t.timestamps
    end
  end
end
