class User < ActiveRecord::Base
	#before save
	before_save{self.email=email.downcase}

	#validation name
	validates :name, presence: true, length{maximum:50}

	#validation email
	Email_regex = '/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i'
	validates :email, presence: true, length{maximum:255}, format:{with:Email_regex}, uniqueness:{case_sensitive:false}


end
