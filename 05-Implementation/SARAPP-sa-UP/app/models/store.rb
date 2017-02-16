class Store < ApplicationRecord
	validates :Store_Name, presence: true, uniqueness: true
	validates :Store_Location, presence: true

	def self.search(search)
	  if search
	    self.where("Store_Name like ?", "%#{search}%")
	  else
	    self.all
	  end
	end

end
