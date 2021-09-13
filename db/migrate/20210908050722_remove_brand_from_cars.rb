class RemoveBrandFromCars < ActiveRecord::Migration[6.1]
  def change
    remove_column :cars, :brand, :string
  end
end
