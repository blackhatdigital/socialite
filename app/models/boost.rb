class Boost < ActiveRecord::Base
	has_attached_file 	:profile, styles: { medium: "200x200#", thumb: "100x100#" }, default_url: "missing.png",
						:storage => :dropbox,
  						:dropbox_credentials => Rails.root.join("config/dropbox.yml")

  	validates_attachment_content_type :profile, content_type: /\Aimage\/.*\Z/
  	validates :name, :description, :price, presence: true
  	validates :price, numericality: {greater_than: 0}
  	validates_attachment_presence :profile

  	belongs_to :user
  	has_many :orders
end
