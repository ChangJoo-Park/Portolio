class AddCommentToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :comment_count, :decimal
  end
end
