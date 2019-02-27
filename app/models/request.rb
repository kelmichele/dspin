class Request < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
	validates :org_name, presence: true
	validates :event_name, presence: true
	validates :event_location, presence: true
	validates :event_date, presence: true
	validates :event_time, presence: true
	validates :event_link, presence: true
	validates :audience, presence: true
	validates :aud_size, presence: true
	validates :event_type, presence: true
	validates :honoriam, presence: true
	validates :comments, presence: true
end
