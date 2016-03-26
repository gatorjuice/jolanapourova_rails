class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :name
      t.decimal :price, precision: 5, scale: 0
      t.string :medium
      t.string :url
      t.text   :description

      t.timestamps null: false
    end
  end
end
