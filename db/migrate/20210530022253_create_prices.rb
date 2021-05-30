class CreatePrices < ActiveRecord::Migration[6.1]
  def change
    create_table :prices do |t|
      t.boolean :active, index: true
      t.string :billing_schema
      t.string :currency
      t.string :lookup_key
      t.string :recurring_interval
      t.integer :recurring_interval_count
      t.string :recurring_usage_type
      t.string :type
      t.integer :unit_amount
      t.string :unit_amount_decimal
      t.string :external_id
      t.string :product_id, index: true

      t.timestamps
    end

    add_index :prices, :lookup_key, unique: true
  end
end
