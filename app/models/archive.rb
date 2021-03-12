class Archive < ApplicationRecord
  validates :title, presence: true
  validates :category, presence: true
  validates :order, numericality: { only_integer: true }

  has_one_attached :image
  default_scope -> { order(order: :asc)}


  def pod_link
    # if store_name.include? "Grooming"
    if category == "Podcast" and link.size > 1
      "#{link}" + " target='_blank' class='event-thr'"
    else
      "class='event-thr disabled'"
    end
  end
end
