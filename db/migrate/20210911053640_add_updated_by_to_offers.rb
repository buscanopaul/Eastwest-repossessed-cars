class AddUpdatedByToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :updated_by, :integer
  end
end
