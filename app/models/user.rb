class User < ActiveRecord::Base

	before_save do
		self.nickname = nickname.capitalize
		self.fullname = fullname.split(' ').collect(&:capitalize).join(' ')
		self.email = email.downcase
		if self.avatar.blank?
			self.avatar = 'users/' + rand(1...67).to_s + '.png'
		end
	end

	has_secure_password

	validates :password, confirmation: true, length: { minimum: 8,
		message: "Le mot de passe n'est pas assez long"}, on: :create
	validates :nickname, presence: true, format: { with: /\A[[:alnum:] ]+\z/, 
		message: "Le pseudo ne peut comporter que des lettres et des chiffres"}
	validates :fullname, presence: true, format: { with: /\A[[:alnum:] ]+\z/, 
		message: "Le nom ne peut comporter que des lettres et des chiffres"}
	validates :email, presence: true, uniqueness: true

	def user?
		self.role == 'user' || self.role == 'admin'
	end

	def admin?
		self.role == 'admin'
	end

end
