class AddAdminToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :isadmin, :boolean, default: false
    add_column :users, :issuperadmin, :boolean, default: false
  end
end
