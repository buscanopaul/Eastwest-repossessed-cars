class AddNoteToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :note, :text
  end
end
