class Archive < ApplicationRecord
  validates :title, presence: true
  validates :category, presence: true
  validates :order, numericality: { only_integer: true }

  has_one_attached :image
  default_scope -> { order(order: :asc)}
end
