class Feature < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true
	validates :organization, presence: true
	validates :link, presence: true
	validates :deadline, presence: true
	validates :feat_type, presence: true
	validates :details, presence: true
end