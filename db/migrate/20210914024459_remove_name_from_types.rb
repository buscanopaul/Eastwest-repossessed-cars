class RemoveNameFromTypes < ActiveRecord::Migration[6.1]
  def change
    remove_column :brands, :image
  end
end
