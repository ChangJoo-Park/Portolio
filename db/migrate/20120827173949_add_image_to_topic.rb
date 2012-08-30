class AddImageToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :file_name, :string
    add_column :topics, :file_type, :string
    add_column :topics, :file_size, :integer
    add_column :topics, :updated_time, :datetime
  end
end
