class Restaurant < ApplicationRecord
  # dependent destroy means when we delete the restaurant it will also delete the review
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
