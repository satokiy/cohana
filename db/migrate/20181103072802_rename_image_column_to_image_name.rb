class RenameImageColumnToImageName < ActiveRecord::Migration
  def change
    rename_column :orders, :image, :image_name
  end
end
