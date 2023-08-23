class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: { in: 0..5 }, numericality: { only_integer: true }, presence: true
end
