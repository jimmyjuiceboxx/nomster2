class Place < ActiveRecord::Base
	belongs_to :user 

    #Map API 
	geocoded_by :address
    after_validation :geocode

	#Validations
	validates :name,  presence: true, length: {minimum: 3}
	validates :address, presence: true
	validates :description, presence: true 

end
