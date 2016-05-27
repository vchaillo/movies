class Movie < ActiveRecord::Base

	before_save do
		# self.title_vo = title_vo.capitalize
		# self.title_vf = title_vf.capitalize
	end

	has_and_belongs_to_many :directors
	has_and_belongs_to_many :writers
	has_and_belongs_to_many :actors
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :tags
	has_and_belongs_to_many :countries

end
