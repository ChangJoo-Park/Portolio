class Comment < ActiveRecord::Base
  attr_accessible :content, :topic_id
  belongs_to :topics

  validates_presence_of :content

  default_scope order: 'created_at DESC'
end
