class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :symbol
      t.float :price
      t.integer :volume

      t.timestamps
    end
  end
end
