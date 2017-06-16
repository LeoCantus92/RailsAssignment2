class User < ApplicationRecord
    validates :name, presence:true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-s]+\z/i
    validates :email, presence: true, length: { maximum:255},
              format: {with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: {minimum: 12}
end
