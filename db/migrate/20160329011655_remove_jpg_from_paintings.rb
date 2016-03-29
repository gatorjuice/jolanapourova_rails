class RemoveJpgFromPaintings < ActiveRecord::Migration
  def change
    remove_column :paintings, :jpg, :binary
  end
end
