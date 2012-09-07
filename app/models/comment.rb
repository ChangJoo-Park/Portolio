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
  attr_accessible :content, :topic_id, :user_name, :user_id
  belongs_to :topic
  belongs_to :user
  validates_presence_of :content

  default_scope order: 'created_at ASC'
end
