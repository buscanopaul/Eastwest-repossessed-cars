class AddBrandIdToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :brand_id, :integer
  end
end
