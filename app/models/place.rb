class Place < ActiveRecord::Base
	belongs_to :user 

	#Validations
	validates :name,  presence: true, length: {minimum: 3}
	validates :address, presence: true
	validates :description, presence: true 

end
