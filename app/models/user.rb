class User < ApplicationRecord

  has_secure_password

  # Username must be present and unique, but not case sensitive
  validates :username,  presence: true, uniqueness: { case_sensitive: false }
  # Password must be present
  validates :password, presence: true
  # Password confirmation must be present
  validates :password_confirmation, presence: true

end
