# == Schema Information
#
# Table name: topics
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  forum_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  file_name     :string(255)
#  file_type     :string(255)
#  file_size     :integer
#  updated_time  :datetime
#  updatedtime   :date
#  comment_count :decimal(, )
#

class Topic < ActiveRecord::Base
  attr_accessible :description, :forum_id, :title, :image, :updated_time
#  attr_accessor :image_file_name
#  attr_accessor :image_file_type
#  attr_accessor :image_file_size

  has_many :comments
  
  belongs_to :forum

  validates :title, presence: true
  validates :description, presence: true



  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
