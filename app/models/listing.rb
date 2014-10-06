class Listing < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.gif",
  					:storage => :dropbox,
    				:dropbox_credentials => Rails.root.join("config/dropbox.yml")
    			
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
end
