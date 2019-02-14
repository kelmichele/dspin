class Event < ApplicationRecord
  validates :event_type, presence: true
  validates :title, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :description, presence: true
  # validates :price, presence: true
  # validates :link, presence: true
  # validates :image, presence: true
  # validates :extras, presence: true

  has_one_attached :image
  # default_scope -> { order(date: :desc) }
end
