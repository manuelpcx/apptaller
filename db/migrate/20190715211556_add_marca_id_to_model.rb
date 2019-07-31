class AddMarcaIdToModel < ActiveRecord::Migration[5.2]
  def change
    add_column :models, :marca_id, :integer
  end
end
