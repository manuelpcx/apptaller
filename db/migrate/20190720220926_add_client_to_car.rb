class AddClientToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :client, :string
  end
end
