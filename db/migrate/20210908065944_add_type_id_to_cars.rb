class AddTypeIdToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :type_id, :integer
  end
end
