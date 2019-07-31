class AddPpuToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :ppu, :string
  end
end
