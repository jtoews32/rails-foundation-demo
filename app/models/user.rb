class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, uniqueness: true
  
=begin
attr_accessible :name, :email, :password, :password confirmation
has_secure_password
before_save { |user| user.email = email.downcase }
validates :name, presence: true, length: { maximum: 50 }
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
validates :email, presence: true,
format: { with: VALID EMAIL REGEX },
uniqueness: { case sensitive: false }
validates :password, presence: true, length: { minimum: 6 }
validates :password confirmation, presence: true
=end

end

