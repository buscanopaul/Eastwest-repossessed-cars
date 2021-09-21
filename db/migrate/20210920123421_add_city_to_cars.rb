class AddCityToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :city, :string
    add_column :cars, :region, :string
  end
end
