class User < ApplicationRecord
    has_many :orders
    has_many :comments
    validates :name,  presence: true, length: { maximum: 30 }
end
