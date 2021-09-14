class AddFeaturedToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :featured, :boolean, default: false
  end
end
