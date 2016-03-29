class AddImageToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :jpg, :binary
  end
end
