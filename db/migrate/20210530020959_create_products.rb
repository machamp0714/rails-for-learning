class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.boolean :active, index: true
      t.string :external_id, index: true, unique: true

      t.timestamps
    end
  end
end
