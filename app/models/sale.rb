class Sale < ApplicationRecord
  validates :cod, presence: true, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: %w(uno dos tres cuatro cinco),
  message: "%{value} is not a valid size" }
  validates :value, numericality: { only_integer: true }
  validates :discount, numericality: { only_integer: true, less_than_or_equal_to: 40}
end
