class UserMailer < ActionMailer::Base
	
	default :from => "mjssrg@gmail.com"
	
  def registration_confirmation(user)
  	mail(:to => user.email, :subject => "Thanks for registering")
  	
  	end
end
