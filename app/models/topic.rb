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
  attr_accessible :description, :forum_id, :title, :image, :updated_time, :user_id, :user_name

  
  belongs_to :forum
  belongs_to :user
	has_many :comments
  validates :title, presence: true
  validates :description, presence: true
  validates :user_name, presence: true
	validates :user_id, presence: true
	default_scope order: 'topics.created_at DESC'
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

end
