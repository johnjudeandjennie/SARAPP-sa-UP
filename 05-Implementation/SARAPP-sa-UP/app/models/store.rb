class Store < ApplicationRecord
	validates :Store_Name, presence: true, uniqueness: true
	validates :Store_Location, presence: true

	def self.search_store(search)
	  if search
	  	# SEARCH STORE
	    self.where("Store_Name like ?", "%#{search}%")
	  else
	    self.all
	  end
	end

	def self.search_location(search)
	  if search
	  	# SEARCH STORE
	    self.where("Store_Location like ?", "%#{search}%")
	  else
	    self.all
	  end
	end

end
