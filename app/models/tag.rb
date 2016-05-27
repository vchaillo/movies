class Tag < ActiveRecord::Base

	before_save do
		self.name = name.capitalize
	end

	has_and_belongs_to_many :movies

end
