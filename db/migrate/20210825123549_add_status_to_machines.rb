class AddStatusToMachines < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :status, :integer
  end
end
