class AddUserIdToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :user_id, :integer
  end
end
