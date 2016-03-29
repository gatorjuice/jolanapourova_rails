class ChangeStatusInPaintings < ActiveRecord::Migration
  def change
    rename_column :paintings, :status, :active
  end
end
