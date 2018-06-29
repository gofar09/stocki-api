class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.integer :shares

      t.timestamps
    end
  end
end
