class AddDetailsToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :brand, :string
    add_column :cars, :year, :integer
    add_column :cars, :model, :string
    add_column :cars, :fuel, :string
    add_column :cars, :plate_number, :string
    add_column :cars, :color, :string
    add_column :cars, :milage, :integer
    add_column :cars, :price, :integer
    add_column :cars, :deadline, :datetime
    add_column :cars, :warehouse, :string
    add_column :cars, :user_id, :integer
  end
end
