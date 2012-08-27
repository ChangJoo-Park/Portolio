class Topic < ActiveRecord::Base
  attr_accessible :description, :forum_id, :title
  has_many :comments
  belongs_to :forum

  validates :title, presence: true
  validates :description, presence: true
end
