class Writer < ActiveRecord::Base

	before_save do
		self.fullname = fullname.split(' ').collect(&:capitalize).join(' ')
	end

	has_and_belongs_to_many :movies
	has_and_belongs_to_many :countries

	validates :fullname, presence: true, format: { with: /\A[[:alpha:]. ]+\z/, 
		message: "Le nom ne peut comporter que des lettres"}

	def age
		if !self.birth.blank?
			return ((Date.today - self.birth).to_i / 365).to_s + ' ans'
		end
	end
	
	def short_bio
		if !self.bio.blank?
			return self.bio.split(' ')[0...20].push(' ...').join(' ')
		end
	end
end
