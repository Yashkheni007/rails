class Product < ApplicationRecord
  belongs_to :brand
  has_many :order_items
  has_many :orders, through: :order_items

  validates :name, presence: true
  validates :price, presence: true, numericality: {greater_than: 0}
end
