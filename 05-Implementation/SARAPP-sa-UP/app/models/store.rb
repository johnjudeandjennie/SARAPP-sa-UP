class Store < ApplicationRecord
	validates :Store_Name, presence: true
	validates :Store_Location, presence: true
end
