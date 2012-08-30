class AddTimeToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :updatedtime, :date
  end
end
