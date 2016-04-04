class Order < ActiveRecord::Base
	validates :address, :city, :state, presence: true

	belongs_to :boost
	belongs_to :buyer, class_name: "User"
	belongs_to :buyer, class_name: "Seller"
end