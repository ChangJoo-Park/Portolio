class AddUserIdNameToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :user_id, :integer
    add_column :topics, :user_name, :string
  end
end
