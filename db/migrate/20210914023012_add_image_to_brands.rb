class AddImageToBrands < ActiveRecord::Migration[6.1]
  def change
    add_column :brands, :image, :text
  end
end
