class AddMecToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :mec, :string
  end
end
