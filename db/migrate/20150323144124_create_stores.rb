class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :name
      t.boolean :in_stock
      t.text :supplier
      t.date :delivery_date

      t.timestamps null: false
    end
  end
end
