class Item < ApplicationRecord
    belongs_to :category
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :comments

    validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
end
