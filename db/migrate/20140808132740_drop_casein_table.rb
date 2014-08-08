class DropCaseinTable < ActiveRecord::Migration
  def change
  	drop_table :casein_admin_users
  end
end
