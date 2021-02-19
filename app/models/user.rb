class User < ActiveRecord::Base
    has_secure_password
  
    before_save { self.email = email.downcase }
    validates :first_name,  presence: true, length: { maximum: 50 }
    validates :last_name,  presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,  
                    uniqueness: { case_sensitive: false }, 
                    length: {maximum: 105}, format: { with: VALID_EMAIL_REGEX }
    validates :password, presence: true, length: { minimum: 6 }, allow_blank: true
  
    has_many :orders, dependent: :destroy
  
    
    has_many :comments, dependent: :destroy
  
   
  end