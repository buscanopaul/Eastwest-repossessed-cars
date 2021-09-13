class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :payment_type
      t.integer :offer_amount
      t.string :source_of_funds

      t.timestamps
    end
  end
end
