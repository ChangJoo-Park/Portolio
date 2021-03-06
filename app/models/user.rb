# == Schema Info
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean         default(FALSE)
#
# Indexes
#
#  index_users_on_remember_token  (remember_token)
#  index_users_on_email           (email) UNIQUE
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :admin
  has_secure_password
  has_many :topics
  has_many :microposts, dependent: :destroy
  has_many :comments
  before_save { |user| user.email = email.downcase }  
  before_save :create_remember_token



  # name validation
  validates :name,  
             presence: true,
             length: { maximum: 50 },
             uniqueness: true

  # email validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,
             presence: true,
             format: { with: VALID_EMAIL_REGEX },
             uniqueness: { case_sensitive: false }

  # password validation
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  # admin validation
  #validates :admin, presence: true
  def feed
    # This is preliminary. See "Following users" for the full implementation.
    Micropost.where("user_id = ?", id)
  end
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end


end
