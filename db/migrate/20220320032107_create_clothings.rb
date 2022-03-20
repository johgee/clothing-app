class CreateClothings < ActiveRecord::Migration[7.0]
  def change
    create_table :clothings do |t|
      t.string :item
      t.integer :price
      t.integer :size

      t.timestamps
    end
  end
end
