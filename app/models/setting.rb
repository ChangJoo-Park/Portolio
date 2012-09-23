# == Schema Info
#
# Table name: settings
#
#  id              :integer         not null, primary key
#  logostring      :string(255)
#  maindescription :text
#  mainimageurl    :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

class Setting < ActiveRecord::Base
  attr_accessible :logostring, :maindescription, :mainimageurl
end
