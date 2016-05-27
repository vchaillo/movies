class Country < ActiveRecord::Base

	has_and_belongs_to_many :movies
	has_and_belongs_to_many :directors
	has_and_belongs_to_many :writers
	has_and_belongs_to_many :actors

end
