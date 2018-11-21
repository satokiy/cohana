class AddcolumnImagepathToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :image_path, :text
  end
end
