class Topic < ActiveRecord::Base
  attr_accessible :description, :forum_id, :title, :image
  has_many :comments
  
  belongs_to :forum

  validates :title, presence: true
  validates :description, presence: true

  has_attached_file :image,  :styles => { medium: "300x300#",small:  "150x150>",thumb: "50x50>" }

end
