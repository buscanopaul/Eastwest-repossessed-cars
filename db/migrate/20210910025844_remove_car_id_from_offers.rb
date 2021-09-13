class RemoveCarIdFromOffers < ActiveRecord::Migration[6.1]
  def change
    remove_column :offers, :car_id
  end
end
