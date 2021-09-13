class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :cars, :milage, :mileage
  end
end
