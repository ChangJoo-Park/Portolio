# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  topic_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :content, :topic_id
  belongs_to :topics

  validates_presence_of :content

  default_scope order: 'created_at DESC'
end
