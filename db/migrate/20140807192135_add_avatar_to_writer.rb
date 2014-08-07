class AddAvatarToWriter < ActiveRecord::Migration
  def change
    add_column :writers, :avatar, :string
  end
end
