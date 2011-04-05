class Book < ActiveRecord::Base
	validates :author, :presence => true
	validates :name, :uniqueness => true, :presence => true

	has_friendly_id :name, :use_slug => true
	
end
