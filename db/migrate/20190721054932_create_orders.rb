class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :payed, default: false
      t.references :car, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
