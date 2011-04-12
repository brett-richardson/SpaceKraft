Factory.define :user do | f |
	f.sequence( :name  ){ | n | "First#{n} Last#{n}" }
	f.sequence( :email ){ | n | "user#{n}@gmail.com" }

	f.password 'password'
end
