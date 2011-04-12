class Commune

	include Jabber


	def new( user )
		@user   = user
		@jid    = JID::new( "#{user.id}@localhost" )
		@client = Client.new( @jid )

		@client.connect( 'localhost', 5222 )
		@client.auth( 'password' )
		self
	end


	def register
		@client.register(
			'password', {
			'name'  => 'commune'
		} )
		@client.auth( 'password' )
		self
	end

end
