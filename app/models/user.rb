class User < ActiveRecord::Base

	# User authentication
	devise :database_authenticatable, :registerable, :token_authenticatable, :recoverable, :rememberable # :confirmable, :lockable, :timeoutable,:trackable, :validatable

	# Setup accessible (or protected) attributes for your model
	attr_accessible :email, :password, :password_confirmation, :remember_me

	# Create a user on the XMPP server after a user is created in Rails
	after_create :create_commune


	private # =====================================


	def create_commune
		@commune = Commune.new( self ).register
	end

end
