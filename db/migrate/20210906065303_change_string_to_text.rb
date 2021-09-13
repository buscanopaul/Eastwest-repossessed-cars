class ChangeStringToText < ActiveRecord::Migration[6.1]
  def change
    change_column :cars, :plate_number, :text
    change_column :cars, :mileage, :integer
    change_column :cars, :price, :integer
    change_column :cars, :warehouse, :text
  end
end
