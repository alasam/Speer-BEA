class User < ApplicationRecord

  has_secure_password

  validates :username,  presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :password_confirmation, presence: true

end
