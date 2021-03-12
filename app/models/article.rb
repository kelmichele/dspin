class Article < ApplicationRecord
  validates :publication, presence: true
  validates :title, presence: true
  validates :order, numericality: { only_integer: true }
  # validates :details
  # validates :link1, presence: true
  # validates :link2
  # validates :alt

  has_one_attached :image
  default_scope -> { order(order: :asc)}
end
