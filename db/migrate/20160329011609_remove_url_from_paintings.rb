class RemoveUrlFromPaintings < ActiveRecord::Migration
  def change
    remove_column :paintings, :url, :string
  end
end
