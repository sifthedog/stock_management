class CreateStockItems < ActiveRecord::Migration[6.0]
  def change
    create_table :stock_items do |t|
      t.bigint :store_id
      t.bigint :product_id
      t.integer :quantity

      t.timestamps
    end

    add_foreign_key :stock_items, :products, column: :product_id
    add_foreign_key :stock_items, :stores, column: :store_id
  end
end
