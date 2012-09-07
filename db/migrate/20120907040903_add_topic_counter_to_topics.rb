class AddTopicCounterToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :counter, :integer
  end
end
