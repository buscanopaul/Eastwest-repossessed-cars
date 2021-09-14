class AddImageDataToTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :types, :image_data, :text
  end
end
