class User < ApplicationRecord
    has_many :orders
    has_many :comments
    # validates :first_name,  presence: true, length: { maximum: 50 },uniqueness: { case_sensitive: false }
    # validates :last_name,  presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
    # validates :email, presence: true, length: { maximum: 107 },
    #                 format: { with: VALID_EMAIL_REGEX },
    #                 uniqueness: { case_sensitive: false }
    # validates :password, presence: true, length: { minimum: 6 }, allow_blank: true
end
