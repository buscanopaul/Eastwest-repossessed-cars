class AddCarIdToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :car_id, :integer
  end
end
