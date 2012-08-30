class AddImageToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :image_file_name, :string
    add_column :topics, :photo_content_type, :string
    add_column :topics, :photo_file_size, :integer
  end
end
