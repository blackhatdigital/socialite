class Boost < ActiveRecord::Base
	has_attached_file :profile, styles: { medium: "200x200#", thumb: "100x100#" }, default_url: "missing.png"
  	validates_attachment_content_type :profile, content_type: /\Aimage\/.*\Z/
end
