class AddUserNameUserIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :user_name, :string
    add_column :comments, :user_id, :integer
  end
end
