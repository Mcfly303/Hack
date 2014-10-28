class User < ActiveRecord::Base
	validates :username, :length => { :in=> 5..20}
	validates :age, :numericality => { greater_than: 21, message: "Sorry you are under-aged" }

	
end
