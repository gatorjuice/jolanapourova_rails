class AddStatusToPaintings < ActiveRecord::Migration
  def change
    add_column :paintings, :status, :boolean
  end
end
