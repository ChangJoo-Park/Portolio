# == Schema Info
#
# Table name: comments
#
#  id         :integer         not null, primary key
#  content    :text
#  topic_id   :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  user_name  :string(255)
#  user_id    :integer
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
