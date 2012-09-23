# == Schema Info
#
# Table name: forums
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Forum < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :topics, order: "created_at DESC"

  validates :title, presence: true
end
