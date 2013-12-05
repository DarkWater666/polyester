class AddLoginToAdminUsers < ActiveRecord::Migration
  def change
    add_column :admin_users, :login, :string
    add_column :admin_users, :name, :string
  end
end
