class AddUsersImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :users_image, :string
  end
end
