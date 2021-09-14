class AddImageDataToBrands < ActiveRecord::Migration[6.1]
  def change
    add_column :brands, :image_data, :text
  end
end
