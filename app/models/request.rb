class Request < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
	validates :event_name, presence: true
	validates :event_date, presence: true
	validates :event_location, presence: true
	validates :event_message, presence: true
	validates :event_type, presence: true
	# :comments
	# :honoriam
end
